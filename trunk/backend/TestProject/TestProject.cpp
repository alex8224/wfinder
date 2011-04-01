// TestProject.cpp : 定义控制台应用程序的入口点。
//



#include "stdafx.h"
#include <locale.h>

StringBuilder* m=NULL;
DBConnection connection(_T("wfinder.db"));
static BOOL osIsWin7=FALSE;

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
	#ifdef DEBUG
	_tprintf(_T("fullpath=%s\n"),info->filename);
	#endif
}

//被监控事件触发,用来处理文件系统的变更
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
		DWORD tid=GetCurrentThreadId();		
	if(opType==FILE_ACTION_ADDED)
	{
		
		iStmt->setString(1,fname->c_str());
		iStmt->setString(2,path->c_str());
		connection.execute(iStmt);

#ifdef DEBUG
		_tprintf(_T("新增文件到数据库 %s\n"),fullpath);
#endif
		
	}else
	{
		
		dStmt->setString(1,fname->c_str());
		dStmt->setString(2,path->c_str());
		connection.execute(dStmt);
#ifdef DEBUG
		_tprintf(_T("删除文件 %s\n"),fullpath);
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

//搜索制定的目录并入库
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
		
			_tprintf(_T("%s\n"),specialFolder);
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
			
			_tprintf(_T("%s\n"),specialFolder);
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

int _tmain(int argc, _TCHAR* argv[])
{
	setlocale(LC_ALL,"chs");
	/*TCHAR specialFolder[MAX_PATH]={0,};
	CommonUtil::getAllFolder(specialFolder,CSIDL_COMMON_PROGRAMS);

	FullSearch search(NULL);
	search.setSearchPath(specialFolder);
	search.startSearch(printfilename);
	_tprintf(_T("%s\n"),specialFolder);
	ZeroMemory(specialFolder,sizeof(TCHAR)*MAX_PATH);
	CommonUtil::getAllFolder(specialFolder,CSIDL_PROGRAMS);
	_tprintf(_T("%s\n"),specialFolder);
	search.setSearchPath(specialFolder);
	search.startSearch(printfilename);

	ZeroMemory(specialFolder,sizeof(TCHAR)*MAX_PATH);
	CommonUtil::getAllFolder(specialFolder,CSIDL_DESKTOP);
	_tprintf(_T("%s\n"),specialFolder);
	search.setSearchPath(specialFolder);
	search.startSearch(printfilename);
	connection.closeConnection();
	OSVERSIONINFO osvi={0,};
	osvi.dwOSVersionInfoSize=sizeof(OSVERSIONINFO);
	GetVersionEx(&osvi);
	_tprintf(_T("%d,%d,%d,%s\n"),osvi.dwMajorVersion,osvi.dwMinorVersion,osvi.dwBuildNumber, osvi.szCSDVersion);
	setVersion();
	if(osIsWin7)
	{
		_tprintf(_T("win7"));
	}else
	{
		_tprintf(_T("windowxp"));
	}*/
	connection.openConnection();
	setVersion();
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
	_tprintf(_T("主线程已停止\n"));
#endif

	delete m;
	delete check;
	return 0;
}


