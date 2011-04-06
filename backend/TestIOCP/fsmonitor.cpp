#include "stdafx.h"

fsmonitor::fsmonitor():
running(FALSE)
{
	iocpHandle=CreateIoCompletionPort(INVALID_HANDLE_VALUE,NULL,NULL,1);
	notifyEvent=CreateEvent(NULL,TRUE,FALSE,NULL);	
	InitializeCriticalSection(&lockObject);
	dirCollection=new vector<ATTACHOBJ*>;
	changedFileList=new vector<CHANGEINFO*>;
}

void fsmonitor::addMonitorPath(TCHAR* path,PROCESSCALLBACK callFunc)
{
	DWORD bytes=0;
	HANDLE dirHandle=CreateFile(path, FILE_LIST_DIRECTORY, FILE_SHARE_READ|FILE_SHARE_WRITE|FILE_SHARE_DELETE, NULL
			, OPEN_EXISTING
			, FILE_FLAG_BACKUP_SEMANTICS|FILE_FLAG_OVERLAPPED
			, NULL
			);

	if(dirHandle!=INVALID_HANDLE_VALUE)
	{
		ATTACHOBJ* attachObj=(ATTACHOBJ*)calloc(1,sizeof(ATTACHOBJ));
		attachObj->dirHandle=dirHandle;
		attachObj->monitorFlag=FILE_NOTIFY_CHANGE_LAST_WRITE | FILE_NOTIFY_CHANGE_FILE_NAME;
		attachObj->opType=CHECKUPDATE;
		if(callFunc)
		{
			attachObj->callback=callFunc;
		}
		_tcscpy(attachObj->prefixPath,path);
		if(CreateIoCompletionPort(dirHandle,iocpHandle,(ULONG_PTR)attachObj,0)!=NULL)
		{
			dirCollection->push_back(attachObj);	
		}else
		{
			_tprintf(_T("绑定至完成端口失败\n"));
		}
	}
}

void fsmonitor::startMonitor()
{
	DWORD bytes=0;		
	unsigned threadID=0;
	running=TRUE;
	//HANDLE threadHandle=CreateThread(NULL,NULL,ThreadProc,this,NULL,NULL);
	HANDLE threadHandle=(HANDLE)_beginthreadex(NULL,0,&ThreadProc,this,0,&threadID);
	CloseHandle(threadHandle);
	for(UINT index=0;index<dirCollection->size();index++)
	{
		ATTACHOBJ* attachObj=dirCollection->at(index);
		if(!ReadDirectoryChangesW(attachObj->dirHandle,attachObj->notifyBuffer,1024,TRUE,attachObj->monitorFlag,&bytes,&attachObj->overLap,NULL))
		{
			_tprintf(_T("read dir failed!\n"));
			stopMonitor();
			break;
		}
	}
}

void fsmonitor::stopMonitor()
{		
		PostQueuedCompletionStatus(iocpHandle,0,NULL,NULL);
		running=FALSE;
}

void fsmonitor::notify()
{
	SetEvent(notifyEvent);
}

void fsmonitor::wait()
{
	WaitForSingleObject(notifyEvent,INFINITE);
}

void fsmonitor::lock()
{
	EnterCriticalSection(&lockObject);	
}

void fsmonitor::unlock()
{
	LeaveCriticalSection(&lockObject);
}


//DWORD WINAPI fsmonitor::ThreadProc(__in LPVOID lpParameter)
unsigned __stdcall fsmonitor::ThreadProc(void *lpParameter)
{
	BOOL isOk;
	DWORD transBytes=0;	
	ATTACHOBJ* iNotify={0,};
	TCHAR fileNameBuff[2048]={0,};
	fsmonitor* monitor=(fsmonitor*)lpParameter;
	DWORD tId=0;
	while(TRUE)
	{
		isOk=GetQueuedCompletionStatus(monitor->iocpHandle,&transBytes,(PULONG_PTR)&iNotify,(LPOVERLAPPED*)&iNotify,INFINITE);
		if(isOk)
		{
			if(transBytes==0 &&iNotify==NULL)
			{
				_tprintf(_T("completeport existed!\n"));
				break;
			}

				DWORD nextOffset=0;
				FILE_NOTIFY_INFORMATION * pfiNotifyInfo=(FILE_NOTIFY_INFORMATION*)iNotify->notifyBuffer;
				if(IsBadStringPtr(pfiNotifyInfo->FileName,1)!=0)
					continue;

				do 
				{
					ZeroMemory(fileNameBuff,2048*sizeof(TCHAR));			
					_tcscpy(fileNameBuff,iNotify->prefixPath);//可能有BUG
					TCHAR splashChar=iNotify->prefixPath[_tcslen(iNotify->prefixPath)-1];
					if(splashChar!=L'\\')
					{
						*(fileNameBuff+_tcslen(iNotify->prefixPath))=L'\\';
						_tcsncpy(fileNameBuff+_tcslen(iNotify->prefixPath)+1,pfiNotifyInfo->FileName,pfiNotifyInfo->FileNameLength/sizeof(TCHAR));
					}else
					{
						_tcsncpy(fileNameBuff+_tcslen(iNotify->prefixPath),pfiNotifyInfo->FileName,pfiNotifyInfo->FileNameLength/sizeof(TCHAR));
					}

					if(pfiNotifyInfo->Action==FILE_ACTION_ADDED || pfiNotifyInfo->Action==FILE_ACTION_REMOVED)
					{										
						CHANGEINFO* cInfo=(CHANGEINFO*)calloc(1,sizeof(CHANGEINFO));
						if(cInfo)
						{
							_tcsncpy(cInfo->fullpath,fileNameBuff,_tcslen(fileNameBuff));
							cInfo->opType=pfiNotifyInfo->Action;
							//_tprintf(_T("%d,%s\n"),pfiNotifyInfo->Action,cInfo->fullpath);
							monitor->addFileTo(cInfo);
						}else
						{
							_tprintf(_T("内存分配失败\n"));
							break;
						}						
					}
					nextOffset=pfiNotifyInfo->NextEntryOffset;
					
					switch(pfiNotifyInfo->Action)
					{	
						case FILE_ACTION_RENAMED_OLD_NAME:
							{
#ifdef DEBUG
											_tprintf(_T("old filename=%s new filename="),fileNameBuff);
#endif
					
							
								if(nextOffset!=0)
								{
									BYTE* tPtr=(BYTE*)pfiNotifyInfo;
									pfiNotifyInfo=(FILE_NOTIFY_INFORMATION*)(tPtr+nextOffset);
								}

								DWORD faction=pfiNotifyInfo->Action;
								nextOffset=pfiNotifyInfo->NextEntryOffset;
								if(iNotify->callback)
								{
									iNotify->callback(fileNameBuff,FILE_ACTION_REMOVED);
								}

								CHANGEINFO* cInfo1=(CHANGEINFO*)calloc(1,sizeof(CHANGEINFO));
								if(cInfo1)
								{
									_tcsncpy(cInfo1->fullpath,fileNameBuff,_tcslen(fileNameBuff));
									cInfo1->opType=FILE_ACTION_REMOVED;
									monitor->addFileTo(cInfo1);
								}else
								{
									_tprintf(_T("内存分配失败\n"));
									break;
								}	

								if(faction==FILE_ACTION_RENAMED_NEW_NAME)
								{
									ZeroMemory(fileNameBuff,2048*sizeof(TCHAR));			
									_tcscpy(fileNameBuff,iNotify->prefixPath);//可能有BUG
									TCHAR splashChar=iNotify->prefixPath[_tcslen(iNotify->prefixPath)-1];
									if(splashChar!=L'\\')
									{
										*(fileNameBuff+_tcslen(iNotify->prefixPath))=L'\\';
										_tcsncpy(fileNameBuff+_tcslen(iNotify->prefixPath)+1,pfiNotifyInfo->FileName,pfiNotifyInfo->FileNameLength/sizeof(TCHAR));
									}else
									{
										_tcsncpy(fileNameBuff+_tcslen(iNotify->prefixPath),pfiNotifyInfo->FileName,pfiNotifyInfo->FileNameLength/sizeof(TCHAR));
									}
									if(iNotify->callback)
									{
										iNotify->callback(fileNameBuff,FILE_ACTION_ADDED);
									}
									CHANGEINFO* cInfo2=(CHANGEINFO*)calloc(1,sizeof(CHANGEINFO));
									if(cInfo2)
									{
										_tcsncpy(cInfo2->fullpath,fileNameBuff,_tcslen(fileNameBuff));
										cInfo2->opType=FILE_ACTION_ADDED;
										monitor->addFileTo(cInfo2);
									}else
									{
										_tprintf(_T("内存分配失败\n"));
										break;
									}	
#ifdef  DEBUG
													_tprintf(_T("%s\n"),fileNameBuff);
#endif
					
								}else
								{
									continue;
								}

								break;
							}
							case FILE_ACTION_ADDED :
							{
								if(iNotify->callback)
								{
									iNotify->callback(fileNameBuff,FILE_ACTION_ADDED);
								}

								break;
							}
						case FILE_ACTION_REMOVED:
							{
								if(iNotify->callback)
								{
									iNotify->callback(fileNameBuff,FILE_ACTION_REMOVED);
								}
								break;
							}						
						default:
							break;
					}

					if(nextOffset!=0)
					{
						BYTE* tPtr=(BYTE*)pfiNotifyInfo;
						pfiNotifyInfo=(FILE_NOTIFY_INFORMATION*)(tPtr+nextOffset);
					}

				} while (nextOffset!=0);
				ZeroMemory(iNotify->notifyBuffer,1024);
				if(!ReadDirectoryChangesW(iNotify->dirHandle,iNotify->notifyBuffer,1024,TRUE,iNotify->monitorFlag,&transBytes,&iNotify->overLap,NULL))
				{
					monitor->notify();
					break;
				}
			}else
		{
			break;
		}
	}
	_tprintf(_T("completeport thread already ended!\n"));
	return 0;
}

void fsmonitor::processResults(PROCESSCALLBACK  callback)
{
	lock();
	int len=changedFileList->size();
	if(len>0)
	{	
		for(UINT i=0;i<len;i++)
		{
			CHANGEINFO* info=changedFileList->at(i);
			callback(info->fullpath,info->opType);
			free(info);
			info=NULL;
		}
		changedFileList->erase(changedFileList->begin(),changedFileList->end());
	}
	unlock();
}

void fsmonitor::addFileTo(CHANGEINFO* info)
{
	lock();
	changedFileList->push_back(info);
	unlock();
}

BOOL fsmonitor::isRunning()
{
	return running;
}

fsmonitor::~fsmonitor()
{
	CloseHandle(iocpHandle);
	CloseHandle(notifyEvent);
	DeleteCriticalSection(&lockObject);
	for(UINT i=0;i<dirCollection->size();i++)
	{
		ATTACHOBJ* tAttach=dirCollection->at(i);
		CloseHandle(tAttach->dirHandle);
		free(tAttach);
	}
	dirCollection->erase(dirCollection->begin(),dirCollection->end());
	delete dirCollection;

	for(UINT i=0;i<changedFileList->size();i++)
	{
		CHANGEINFO* tInfo=changedFileList->at(i);
		free(tInfo);
	}
	changedFileList->erase(changedFileList->begin(),changedFileList->end());
	delete changedFileList;
}
