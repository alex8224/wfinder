// TestProject.cpp : �������̨Ӧ�ó������ڵ㡣
//



#include "stdafx.h"
#include <locale.h>

StringBuilder* m=NULL;
DBConnection connection(_T("wfinder.db"));
static BOOL osIsWin7=FALSE;
typedef HANDLE (WINAPI *CreateDebugDll)
(
 __in      HANDLE hProcess, __in_opt LPSECURITY_ATTRIBUTES lpThreadAttributes,
 __in      SIZE_T dwStackSize, __in      LPTHREAD_START_ROUTINE lpStartAddress,
 __in_opt LPVOID lpParameter, __in      DWORD dwCreationFlags, __out_opt LPDWORD lpThreadId
 );

void recordFilename(DBConnection& conn, const TCHAR* filename,const TCHAR* fullpath,StringBuilder* buff)
{
	Statement* iStmt=NULL;
	try{
		iStmt=(Statement*)conn.preStatement(_T("insert into searchstore(fname,fullpath) values(?,?)"));
		iStmt->setString(1,(TCHAR*)filename);
		iStmt->setString(2,(TCHAR*)fullpath);
		conn.execute(iStmt);
		iStmt->close();
		delete iStmt;
	}catch(int errcode)
	{
		if(iStmt!=NULL)
		{
			iStmt->close();
			delete iStmt;
		}
		throw errcode;
	}
}

static void printfilename(FILEINFO* info)
{
	if(m)
	{
		m->clear();
		m->append(info->filename);
	}else
	{
		m=new StringBuilder(info->filename);
	}
		recordFilename(connection,info->filename,info->fullpath,m);
}

//������¼�����,���������ļ�ϵͳ�ı��
void triggerFunc(const TCHAR* fullpath,DWORD opType)
{
	StringBuilder strBuf(fullpath);
	StringBuilder* path=NULL;
	StringBuilder* fname=NULL;
	Statement* iStmt=NULL;
	Statement* dStmt=NULL;
	try{	
		path=strBuf.substring(0,strBuf.rfind(L'\\'));
		fname=strBuf.substring(strBuf.rfind(L'\\')+1);
		iStmt=(Statement*)connection.preStatement(_T("insert into searchstore(fname,fullpath) values(?,?);"));
		dStmt=(Statement*)connection.preStatement(_T("delete from searchstore where fname=? and fullpath=?"));	
	if(opType==FILE_ACTION_ADDED)
	{
		
		iStmt->setString(1,fname->c_str());
		iStmt->setString(2,path->c_str());
		connection.execute(iStmt);

#ifdef DEBUG
		_tprintf(_T("�����ļ������ݿ� %s\n"),fullpath);
#endif
		
	}else
	{
		
		dStmt->setString(1,fname->c_str());
		dStmt->setString(2,path->c_str());
		connection.execute(dStmt);
#ifdef DEBUG
		_tprintf(_T("ɾ���ļ� %s\n"),fullpath);
#endif

	}

	iStmt->close();
	dStmt->close();
	delete iStmt;
	iStmt=NULL;
	delete dStmt;
	dStmt=NULL;
	delete path;
	path=NULL;
	delete fname;
	fname=NULL;
	}catch(int errcode)
	{
			if(iStmt!=NULL)
			{
				iStmt->close();
				delete iStmt;
			}

			if(dStmt!=NULL)
			{
				dStmt->close();
				delete dStmt;
			}

			if(path!=NULL)
				delete path;

			if(fname!=NULL)
				delete fname;

			throw errcode;
	}
}

//�����ƶ���Ŀ¼�����
void scanFolder(FullSearch* searchIns,TCHAR* folderName)
{
	searchIns->setSearchPath(folderName);
	searchIns->startSearch(printfilename);
}

static void setVersion()
{
	OSVERSIONINFO osvi={0,};
	osvi.dwOSVersionInfoSize=sizeof(OSVERSIONINFO);
	GetVersionEx(&osvi);
	osIsWin7=osvi.dwMajorVersion==6;
}


void initDbConfig(DBConnection& conn,fsmonitor* monitor)
{
	Statement* getIsInit=(Statement*)conn.preStatement(_T("select configvalue from configstore where configname='isinit'"));
	ResultSet rs;
	conn.executeQuery(rs,getIsInit->getStatement());
	if(rs.next())
	{
		int isInit=rs.getInt(0);
		if(isInit==0)
		{
			conn.startTransaction();
			TCHAR specialFolder[MAX_PATH]={0,};
			if(osIsWin7)
				CommonUtil::getAllFolder(specialFolder,CSIDL_COMMON_PROGRAMS);
			else
				CommonUtil::getAllFolder(specialFolder,CSIDL_COMMON_STARTMENU);

		
			Statement* iStmt=(Statement*)conn.preStatement(_T("insert into configstore values(?,?,?)"));
			iStmt->setString(1,_T("allusermenu"));
			iStmt->setString(2,specialFolder);
			iStmt->setInt(3,0);
			conn.execute(iStmt);


			ZeroMemory(specialFolder,sizeof(TCHAR)*MAX_PATH);
			if(osIsWin7)
				CommonUtil::getAllFolder(specialFolder,CSIDL_PROGRAMS);
			else
				CommonUtil::getAllFolder(specialFolder,CSIDL_STARTMENU);

			conn.reuseStatement(iStmt->getStatement());
			iStmt->setString(1,_T("mymenu"));
			iStmt->setString(2,specialFolder);
			iStmt->setInt(3,0);
			conn.execute(iStmt);

			ZeroMemory(specialFolder,sizeof(TCHAR)*MAX_PATH);
			CommonUtil::getAllFolder(specialFolder,CSIDL_DESKTOP);
			conn.reuseStatement(iStmt->getStatement());
			iStmt->setString(1,_T("mydesktop"));
			iStmt->setString(2,specialFolder);
			iStmt->setInt(3,0);
			conn.execute(iStmt);

			ZeroMemory(specialFolder,sizeof(TCHAR)*MAX_PATH);
			CommonUtil::getAllFolder(specialFolder,CSIDL_PERSONAL);
			conn.reuseStatement(iStmt->getStatement());
			iStmt->setString(1,_T("mydocument"));
			iStmt->setString(2,specialFolder);
			iStmt->setInt(3,0);
			conn.execute(iStmt);
			iStmt->close();
			delete iStmt;
			conn.executeNoResult("update configstore set configvalue='1' where configname='isinit'");			
			conn.commit();
		}

		StringBuilder strBuilder;
		FullSearch* searchLnk=new FullSearch(NULL);
		connection.startTransaction();
		Statement* selectStmt=(Statement*)connection.preStatement(_T("select configvalue,configname,inited from configstore where configname<>'isinit'"));
		Statement* updateStmt=(Statement*)connection.preStatement(_T("update configstore set inited=1 where configname=?"));
		ResultSet rs;
		conn.executeQuery(rs,selectStmt->getStatement());

		while(rs.next())
		{				
			strBuilder.clear();
			rs.getString(0,strBuilder);
			monitor->addMonitorPath(strBuilder.c_str());
			if(rs.getInt(2)==0)
			{
				scanFolder(searchLnk,strBuilder.c_str());
				strBuilder.clear();
				rs.getString(1,strBuilder);			
				updateStmt->setString(1,strBuilder.c_str());
				conn.execute(updateStmt);				
			}
			connection.reuseStatement(updateStmt->getStatement());
		}
		conn.commit();
		getIsInit->close();
		selectStmt->close();
		updateStmt->close();
		delete getIsInit;
		delete updateStmt;
		delete selectStmt;
		delete searchLnk;

	}
}

//DWORD WINAPI cmdServerThread(__in LPVOID attach)
unsigned __stdcall cmdServerThread(void *attach)
{
	CommandServer cmdServer(1982,attach);
	cmdServer.serverforever();
	return 0;
}

void startBackEnd(fsmonitor* check)
{
	//start CommandServer Thread
	unsigned threadID=0;
	HANDLE cmdThread=(HANDLE)_beginthreadex(NULL,0,&cmdServerThread,check,0,&threadID);
	CloseHandle(cmdThread);
}

void installHotkey()
{
	TCHAR dirbuff[MAX_PATH]={0,};
	GetCurrentDirectory(MAX_PATH,dirbuff);
	StringCbCat(dirbuff,MAX_PATH*sizeof(TCHAR),_T("\\hotkey.dll"));
	_tprintf(_T("current directory is %s\n"),dirbuff);
	HWND finderHwnd=FindWindow(NULL,_T("wFinder"));
	if(finderHwnd==NULL)
	{
#ifdef DEBUG
		_tprintf(_T("windows finder process not started!\n"));
#endif
		
		return;
	}
	DWORD dwProcessid=0;
	GetWindowThreadProcessId(finderHwnd,&dwProcessid);
	HANDLE wfinder=OpenProcess(PROCESS_CREATE_THREAD| PROCESS_QUERY_INFORMATION| PROCESS_VM_OPERATION| PROCESS_VM_WRITE|PROCESS_VM_READ,
		false,		
		dwProcessid
		);

	if(wfinder)
	{
		int pathlen=(1+_tcslen(dirbuff))*sizeof(TCHAR);
		LPVOID remoteLibAddr=NULL;
		if((remoteLibAddr=VirtualAllocEx(wfinder,NULL,pathlen,MEM_COMMIT,PAGE_READWRITE))!=NULL)
		{

			if(WriteProcessMemory(wfinder,remoteLibAddr,dirbuff,pathlen,NULL))
			{
	
				FARPROC loadAddr=GetProcAddress(GetModuleHandle(_T("Kernel32")),"LoadLibraryW");
				CreateDebugDll createDebugThread=(CreateDebugDll)GetProcAddress(GetModuleHandle(_T("Kernel32")),"CreateRemoteThread");
				HANDLE remoteThread=createDebugThread(wfinder,NULL,0,(LPTHREAD_START_ROUTINE)loadAddr,remoteLibAddr,0,NULL);
				if(remoteThread!=NULL)
				{
#ifdef DEBUG
					_tprintf(_T("inject process wfinder ok\n"));
#endif
					WaitForSingleObject(remoteThread,INFINITE);
#ifdef DEBUG
					_tprintf(_T("remote thread already ended!\n"));
#endif
				}
				CloseHandle(remoteThread);
			}
		}
		CloseHandle(wfinder);
	}
}

int _tmain(int argc, _TCHAR* argv[])
{
	setlocale(LC_ALL,"chs");
	installHotkey();//install global hotkey on air app win+w
	connection.openConnection();
	fsmonitor* check=new fsmonitor;
	try{
		initDbConfig(connection,check);
		check->startMonitor();
		startBackEnd(check);
		while(check->isRunning())
		{
			connection.startTransaction();
			check->processResults(triggerFunc);
			connection.commit();
			Sleep(1000);
		}
		check->stopMonitor();
		connection.closeConnection();
	}catch(int errCode)
	{
		printf("detect error,errcode=%d,error description=%s\n",errCode,connection.printError());	
		check->stopMonitor();
		connection.closeConnection();
	}
	
#ifdef DEBUG
	_tprintf(_T("���߳���ֹͣ\n"));
#endif

	delete m;
	delete check;
	return 0;
}


