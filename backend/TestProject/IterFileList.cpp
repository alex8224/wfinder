#include "stdafx.h"
using namespace std;
StringBuilder::StringBuilder():
buffIndex(0),memAllocateSize(1024)
{
	buff=(TCHAR*)calloc(1,1024*sizeof(TCHAR));	
	totalLength=1024;
}

StringBuilder::StringBuilder(const TCHAR *str):
memAllocateSize(1024)
{

	int paramLen=_tcslen(str);
	int allocateSize=0;
	if(paramLen>2048)//只能分配2K以下的内存
		return;

	if((sizeof(TCHAR)==1) && (paramLen %2 !=0))
		allocateSize+=paramLen+1+1024;
	else
		allocateSize=paramLen+1024;

	buff=(TCHAR *)calloc(1,allocateSize*sizeof(TCHAR));

	if(buff)
	{
		totalLength=allocateSize;
		if(_tcsncpy(buff,str,paramLen))
		{
			buffIndex=paramLen;
		}

	}else
	{
		return;
	}
}

StringBuilder::StringBuilder(int length):
buffIndex(0),memAllocateSize(1024)
{
	if((sizeof(TCHAR)==1 )&& (length % 2 !=0))
	{
		length+=1;
	}
	totalLength=length+512;
	buff=(TCHAR*)calloc(1,totalLength*sizeof(TCHAR));
}

void StringBuilder::setMemAllocateSize(int size)
{
	memAllocateSize=size;
}
int StringBuilder::getlength() const
{
	return buffIndex;
}

int StringBuilder::getbytelen() const
{
	return (buffIndex)*sizeof(TCHAR);
}

StringBuilder& StringBuilder::append(const TCHAR* appendChars)
{
	int paramLen=_tcslen(appendChars);

	if(paramLen>(totalLength-buffIndex))
	{
		if((sizeof(TCHAR)==1) && (paramLen %2!=0))
			totalLength=totalLength+paramLen+1+memAllocateSize;
		else
		totalLength=totalLength+paramLen+memAllocateSize;

		TCHAR* newBuff=(TCHAR*)calloc(1,totalLength*sizeof(TCHAR));

		if(newBuff!=NULL)
		{
			_tcsncpy(newBuff,buff,buffIndex);			
			_tcsncpy(newBuff+buffIndex,appendChars,paramLen);
			buffIndex+=paramLen;

			TCHAR* tmpBuffPtr=buff;
			buff=newBuff;
			free(tmpBuffPtr);//删除无用的缓冲区			
		}
	}else
	{
		_tcsncpy(buff+buffIndex,appendChars,paramLen);
		buffIndex+=paramLen;
	}

	return *this;

}


StringBuilder& StringBuilder::append(const StringBuilder& strObj)
{
	append(strObj.c_str());
	return *this;
}

//如果超出限制可能会越界
StringBuilder& StringBuilder::append(TCHAR onechar)
{
	TCHAR* tmpPtr=buff;
	tmpPtr+=buffIndex;
	*tmpPtr=onechar;
	buffIndex++;
	return *this;
}
StringBuilder& StringBuilder::append(int intvalue)
{
	TCHAR intArr[11]={0,};
	StringCbPrintf(intArr,11*sizeof(TCHAR),_T("%d"),intvalue);
	append(intArr);
	return *this;
}
void StringBuilder::setstring(TCHAR* tbuff,int count)
{
	_tcsncpy(buff,tbuff,count);
	buffIndex=count;
}

StringBuilder* StringBuilder::substring(int startIndex,int end/* =0 */)
{
	if(startIndex>buffIndex ||end>buffIndex ||(end>0 && startIndex>end))
		return NULL;

	int countChars=0;
	if(end>0)
	{
		countChars=end-startIndex;
	}else
	{
		countChars=buffIndex-startIndex;
	}

	StringBuilder* tmpString=new StringBuilder(countChars+1);
	tmpString->setstring(buff+startIndex,countChars);
	return tmpString;
}

TCHAR StringBuilder::operator [](int start)
{
	if(start>buffIndex)
		return NULL;
	TCHAR tchar=*(buff+start);
	return tchar;
}

StringBuilder& StringBuilder::operator +(const StringBuilder& otherStrObj)
{
	append(otherStrObj);
	return *this;
}

StringBuilder& StringBuilder::operator +(TCHAR onechar)
{
	append(onechar);
	return *this;
}

StringBuilder& StringBuilder::operator +(int intValue)
{
	append(intValue);
	return *this;
}
StringBuilder& StringBuilder::operator +(const TCHAR* chars)
{
	append(chars);
	return *this;
}

TCHAR* StringBuilder::c_str() const
{
	return buff;
}

int StringBuilder::rfind(TCHAR findchar)
{
	TCHAR* tmpPtr=buff+buffIndex-1;
	int tmpIndex=-1;

	do 
	{
		tmpIndex++;
		if(*tmpPtr==findchar)
			break;
	} while (*tmpPtr--);


	return buffIndex-tmpIndex-1;
}

BOOL StringBuilder::startwith(const TCHAR* prefix)
{
	BOOL initBool=FALSE;
	int paramlen=_tcslen(prefix);
	TCHAR* tmpPtr=buff;
	TCHAR orgChar=*(tmpPtr+paramlen);//保存原来的值

	*(tmpPtr+paramlen)=0;//截断字符串

	if(_tcscmp(tmpPtr,prefix)==0)
	{
		initBool=TRUE;
	}
	*(tmpPtr+paramlen)=orgChar;//连接字符串;

	return initBool;
}

BOOL StringBuilder::endwith(const TCHAR* suffix)
{
	int paramlen=_tcslen(suffix);

	TCHAR* tmpPtr=buff+buffIndex-paramlen;
	if(_tcscmp(tmpPtr,suffix)==0)
	{
		return TRUE;
	}			
	return FALSE;
}

int StringBuilder::find(TCHAR findchar)
{
	TCHAR* tmpPtr=buff;
	int tmpIndex=-1;

	do 
	{
		tmpIndex++;
		if(*tmpPtr==findchar)		
			break;		

	} while (*tmpPtr++);

	return tmpIndex<buffIndex?tmpIndex:-1;
}

void StringBuilder::clear()
{
	ZeroMemory(buff,buffIndex*sizeof(TCHAR));
	buffIndex=0;
}

StringBuilder::~StringBuilder()
{
	free(buff);
}

BOOL CommonUtil::getAllFolder(TCHAR* buff,USHORT csidl)
{
	return SHGetSpecialFolderPath(NULL,buff,csidl,FALSE);
	//if(SHGetSpecialFolderPath(NULL,buff,csidl,FALSE))
	//{
	//	StringM m(buff);
	//	StringM* tmpStr=m.substring(0,m.rfind(L'\\')+1);
	//	_tcscpy(buff,tmpStr->c_str());
	//	delete tmpStr;
	//	return TRUE;
	//}

	//return FALSE;

}

FullSearch::FullSearch(TCHAR* startpath)
{
	path=startpath;
}

void FullSearch::setSearchPath(TCHAR* startpath)
{
	path=startpath;
}

void FullSearch::startSearch(SEARCHCALLBACK callback)
{
	int dircount=0;
	int filecount=0;

#ifdef DEBUG
	DWORD start=GetTickCount();
#endif

	stack<StringBuilder*> pathStack;

	WIN32_FIND_DATA findFileData;
	HANDLE hFind;

	StringBuilder* initPath=new StringBuilder(path);


	pathStack.push(initPath);
	while(!pathStack.empty())
	{

		StringBuilder* tM=pathStack.top();
		pathStack.pop();
		StringBuilder* directory=tM->substring(0,tM->rfind(L'\\'));

		tM->append(_T("*.*"));
		hFind=FindFirstFile((LPCTSTR)tM->c_str(),&findFileData);
		if(hFind==INVALID_HANDLE_VALUE)
		{
			pathStack.pop();
			delete tM;
			delete directory;
			continue;
		}

		do 
		{			

			if(findFileData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
			{
				if(_tcscmp(findFileData.cFileName,_T("."))==0 || _tcscmp(findFileData.cFileName,_T(".."))==0)
					continue;

				StringBuilder* currDir=new StringBuilder(directory->c_str());
				currDir->append(_T("\\")).append(findFileData.cFileName).append(_T("\\"));
#ifdef DEBUG
				_tprintf(_T("directory=%s\n"),currDir->c_str());
#endif

				pathStack.push(currDir);
				dircount++;
			}else
			{
#ifdef DEBUG
				_tprintf(_T("filename=%s\\%s\n"),directory->c_str(),findFileData.cFileName);
#endif
				if(!(findFileData.dwFileAttributes & FILE_ATTRIBUTE_HIDDEN))
				{
					if(callback)
					{
						FILEINFO finfo={0,};						
						finfo.filename=findFileData.cFileName;
						finfo.fullpath=directory->c_str();
						finfo.lastmodify=&findFileData.ftLastWriteTime;
						finfo.filesize=findFileData.nFileSizeHigh*(MAXWORD+1)+findFileData.nFileSizeLow;
						callback(&finfo);
					}
				}
				filecount++;
			}

		} while (FindNextFile(hFind,&findFileData));

		delete tM;
		delete directory;
	}

	FindClose(NULL);
#ifdef DEBUG
	DWORD end=GetTickCount();
	_tprintf(_T("遍历完成,耗时 %d 毫秒,共 %d 个目录,%d 个文件\n"),end-start,dircount,filecount);
#endif

}

FullSearch::~FullSearch()
{

}
BOOL CommonUtil::getMyFolder(TCHAR* buff,USHORT csidl)
{
	return getAllFolder(buff,csidl);
}


ResultSet::ResultSet():
state(0)
{

}

ResultSet::~ResultSet()
{

}

void ResultSet::setStatement(sqlite3_stmt* stmt)
{
	iStatement=stmt;
}

BOOL ResultSet::next()
{
	return sqlite3_step(iStatement)==SQLITE_ROW;
}

void ResultSet::getString(int icol,StringBuilder& buff)
{
	const void* v=sqlite3_column_text16(iStatement,icol);
	if(v!=NULL)
	{
		buff.append((TCHAR*)v);
	}else
	{
		printf("getString nullpoint on ResultSet::getString\n");
	}
}

int ResultSet::getInt(int icol)
{
	return sqlite3_column_int(iStatement,icol);
}

DBConnection::DBConnection(TCHAR* db,int flag):
connection(NULL),
stmt(NULL),
dbOpened(FALSE),
stmtOK(FALSE),
executeFlag(FALSE),
logFile(NULL)
{
	dbName=db;	
	iFlag=flag;
	
}

///Statement
Statement::Statement(sqlite3* conn,TCHAR* sqlText):
connection(NULL),stmt(NULL)
{
	sql=sqlText;
	connection=conn;
	int rc=sqlite3_prepare16(conn,sqlText,_tcslen(sqlText)*sizeof(TCHAR),&stmt,NULL);
	if(rc!=SQLITE_OK)
	{
#ifdef DEBUG
		_tprintf(_T("error message=%s\n"),sqlite3_errmsg16(connection));
#endif		
		throw rc;
	}
}

Statement::~Statement()
{

}

void Statement::close()
{
	sqlite3_finalize(stmt);
}

void Statement::setInt(int icol,int intValue)
{
	sqlite3_bind_int(stmt,icol,intValue);
}

void Statement::setString(int icol,TCHAR* strValue)
{
	sqlite3_bind_text16(stmt,icol,strValue,-1,SQLITE_STATIC);
}

TCHAR* Statement::getSqlText()
{
	return sql;
}

sqlite3_stmt* Statement::getStatement()
{
	return stmt;
}

///DBConnection
DBConnection::~DBConnection()
{
	fclose(logFile);
	logFile=NULL;
}

void DBConnection::openConnection()
{
	GUID guid={0,};
	if(CoCreateGuid(&guid)==S_OK)
	{
		printf("open file......\n");
		char guidstr[128]={0,};
		sprintf(guidstr,"{%08X-%04X-%04x-%02X%02X-%02X%02X%02X%02X%02X%02X}",
			guid.Data1
			, guid.Data2
			, guid.Data3
			, guid.Data4[0]
		,guid.Data4[1]
		, guid.Data4[2]
		,guid.Data4[3]
		,guid.Data4[4]
		, guid.Data4[5]
		,guid.Data4[6]
		,guid.Data4[7]);
		logFile=fopen(guidstr,"w");
		if(logFile!=NULL)
		{
			fwprintf(logFile,_T("starting loging......\n"));			
			fflush(logFile);
		}
	}
	int rc=sqlite3_open16(dbName,&connection);

	if(rc!=SQLITE_OK)
	{
		fwprintf(logFile,_T("openConnection error message:%s\n"),sqlite3_errmsg16(connection));
		fflush(logFile);
		throw rc;
	}
	dbOpened=TRUE;
}

void DBConnection::startTransaction()
{
	int rc;
	if(dbOpened)
	{
		rc=sqlite3_exec(connection,"BEGIN TRANSACTION",0,0,0);
		if(rc!=SQLITE_OK)
		{
			fwprintf(logFile,_T("startTransaction error message:%s\n"),sqlite3_errmsg16(connection));
			fflush(logFile);
			throw rc;
		}
	}else
	{
		
	}	
}

void DBConnection::commit()
{
	if(iFlag!=1)
	{
		int rc=sqlite3_exec(connection,"COMMIT",0,0,0);
		if(rc!=SQLITE_OK)
		{
			fwprintf(logFile,_T("commit error message:%s\n"),sqlite3_errmsg16(connection));
			fflush(logFile);
		}
	}
}

void* DBConnection::preStatement(TCHAR *precompiledsql)
{
	return new Statement(connection,precompiledsql);
}


sqlite3_stmt* DBConnection::getStatement()
{
	return stmt;
}

void DBConnection::executeNoResult(const char* execSql)
{
	int rc=sqlite3_exec(connection,execSql,0,0,0);
	if(rc!=SQLITE_OK)
	{
		fwprintf(logFile,_T("DBConnection::executeNoResult error ,sql=%s,message:%s\n"),execSql,sqlite3_errmsg16(connection));
		fflush(logFile);
		throw rc;
	}
		
}

void DBConnection::execute(void *outstmt)
{
	Statement* stmtobj=(Statement*)outstmt;
	if(logFile!=NULL)
	{

		fwprintf(logFile,_T("DBConnection::execute(void *outstmt) sql=%s\n"),stmtobj->getSqlText());
		fflush(logFile);
	}

	int rc=sqlite3_step(stmtobj->getStatement());
	if(rc!=SQLITE_DONE)
	{
		fwprintf(logFile,_T("DBconnection::execute error ,error sql=%s,message:%s\n"),stmtobj->getSqlText(),sqlite3_errmsg16(connection));
		fflush(logFile);
	//	throw rc;//BUG
	}
}
//执行单条prestatementsql
void DBConnection::execute(sqlite3_stmt* outstmt)
{
	
	int rc=sqlite3_step(outstmt);
	if(rc!=SQLITE_DONE)
	{
		fwprintf(logFile,_T("DBconnection::execute error ,message:%s\n"),sqlite3_errmsg16(connection));
		fflush(logFile);
		throw rc;
	}
}

void DBConnection::setInt(int icol,int intValue)
{
	sqlite3_bind_int(stmt,icol,intValue);
}

void DBConnection::setString(int icol,TCHAR* strValue)
{
	int rc=sqlite3_bind_text16(stmt,icol,strValue,-1,SQLITE_STATIC);
}

void DBConnection::executeQuery(ResultSet& emptyResult,sqlite3_stmt* outstmt)
{
	emptyResult.setStatement(outstmt);
}

BOOL DBConnection::isOpen()
{
	return dbOpened;
}

void DBConnection::closeConnection()
{
	sqlite3_close(connection);	
	dbOpened=FALSE;
	if(logFile!=NULL)
	{
		fwprintf(logFile,_T("end loging\n"));
		fflush(logFile);
	}
	if(stmtOK)
	{
//		endStatement();
	}
}

void DBConnection::endStatement(sqlite3_stmt* statement)
{
	sqlite3_finalize(statement);
	stmtOK=FALSE;
}

void DBConnection::reuseStatement(sqlite3_stmt* outstmt)
{
	sqlite3_reset(outstmt);
}

const char* DBConnection::printError()
{
	return sqlite3_errmsg(connection);	
}

///FileSystemCommand implement Icommand iterface
FileSystemCommand::FileSystemCommand(void* monitor)
{
	fschecker=monitor;
}

void FileSystemCommand::setFileMonitor(void* monitor)
{
	 fschecker=monitor;
}

FileSystemCommand::~FileSystemCommand()
{
}

//execute monitor's method
void FileSystemCommand::execute()
{

	 fsmonitor* tFschecker=(fsmonitor*)fschecker;
	 tFschecker->stopMonitor();
}


///defaultOpenHandler implements Icommand iterface

DefaultOpenHandler::DefaultOpenHandler():
	currentCmd(NULL)
{
	strBuilder=new StringBuilder;
}

DefaultOpenHandler::~DefaultOpenHandler()
{
	delete strBuilder;
}

void DefaultOpenHandler::setCmdText(TCHAR* cmdText)
{
	strBuilder->clear();
	strBuilder->append(cmdText);
	currentCmd=cmdText;
}

//lanuch cmd with default program
//need delete tchar*?
void DefaultOpenHandler::execute()
{
	StringBuilder* openCmd=strBuilder->substring(strBuilder->find(L'|')+1);
#ifdef DEBUG
	_tprintf(_T("opencmd=%s\n"),openCmd->c_str());
#endif
 if(strBuilder->startwith(_T("open|")))	
 {
	ShellExecute(NULL,_T("open"),openCmd->c_str(),NULL,NULL,SW_SHOWNORMAL);
 }else if(strBuilder->startwith(_T("location|")))
 {
	 STARTUPINFO si;
	 PROCESS_INFORMATION pi;

	 ZeroMemory( &si, sizeof(si) );
	 si.cb = sizeof(si);
	 ZeroMemory( &pi, sizeof(pi) );
    StringBuilder str;
	str.append(_T("explorer.exe /select,")).append(*openCmd);

	// Start the child process. 
	CreateProcess(NULL,str.c_str(),NULL,NULL,FALSE,0,NULL,NULL,&si,&pi);
	 WaitForSingleObject( pi.hProcess, INFINITE );

	 CloseHandle( pi.hProcess );
	 CloseHandle( pi.hThread );
 }
 delete openCmd;
}

RefreshHandler::RefreshHandler()
{
	
}

void RefreshHandler::execute()
{
	//execute refresh operation
}

RefreshHandler::~RefreshHandler()
{

}


CommandServer::CommandServer(int port,void* check):
	runflag(TRUE),portnum(1982)
{
	openCommand=new DefaultOpenHandler;
	stopFsMonitor=new FileSystemCommand(check);
	portnum=port;
}
	
CommandServer::~CommandServer()
{
	delete openCommand;	
	delete stopFsMonitor;
}

void CommandServer::initServer()
{
	WSADATA wsData={0,};
	WSAStartup(2,&wsData);
}

void CommandServer::serverforever()
{
	initServer();
	SOCKET serversocket;
	struct sockaddr_in tcpaddr,clientaddr;
	DWORD dwThreadID;

	char ipaddress[20]={0,};
	DWORD len=20;

	serversocket=socket(AF_INET,SOCK_STREAM,IPPROTO_TCP);

	tcpaddr.sin_family=AF_INET;
	tcpaddr.sin_port=htons(portnum);
	tcpaddr.sin_addr.s_addr=htonl(INADDR_ANY);

	bind(serversocket,(SOCKADDR *)&tcpaddr,sizeof(tcpaddr));

	listen(serversocket,2);

	int cs=sizeof(clientaddr);
	while(runflag)
	{
		SOCKET clientSock=accept(serversocket,(SOCKADDR *)&clientaddr,&cs);
		WSAAddressToStringA((SOCKADDR *)&clientaddr,cs,NULL,ipaddress,&len);
		printf("accept connection on %s,socket id=%d\n",ipaddress,clientSock);

		char byteBuffer[4096]={0,};
		TCHAR utfBuffer[4096]={0,};
		
		while(1)
		{
			int bytes=recv(clientSock,byteBuffer,4096,0);
			if(bytes==0 || bytes==SOCKET_ERROR)
			{
				closesocket(clientSock);				
				runflag=false;				
				break;
			}else
			{		
				MultiByteToWideChar(CP_UTF8,NULL,byteBuffer,bytes,utfBuffer,4096);				
				if(_tcscmp(_T("quit"),utfBuffer)==0)
				{
					stopFsMonitor->execute();
				}else if(_tcscmp(_T("location"),utfBuffer)==0)
				{
					
				}
				{
					DefaultOpenHandler* opener=(DefaultOpenHandler*)openCommand;
					opener->setCmdText(utfBuffer);
					opener->execute();
					ZeroMemory(utfBuffer,sizeof(TCHAR)*4096);
					ZeroMemory(byteBuffer,sizeof(char)*4096);
				}
			}
		}
	}

	closesocket(serversocket);
	WSACleanup();
}
