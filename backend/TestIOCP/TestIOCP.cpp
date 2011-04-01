// TestIOCP.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
void printfFullPath(const TCHAR* fullpath,const TCHAR* filename,DWORD opType)
{
	
	_tprintf(_T("我是函数printfFullPath 从回调函数中打印的数据 %s"),fullpath);
	if(opType==FILE_ACTION_ADDED)
	{
		_tprintf(_T("新增的文件\n"));
	}else if(opType==FILE_ACTION_REMOVED)
	{
		_tprintf(_T("删除的文件\n"));
	}
}

void printfFullPath2(const TCHAR* fullpath,const TCHAR* filename,DWORD opType)
{
	_tprintf(_T("我是函数printfFullPath2 从回调函数中打印的数据 %s"),fullpath);
	if(opType==FILE_ACTION_ADDED)
	{
		_tprintf(_T("新增的文件\n"));
	}else if(opType==FILE_ACTION_REMOVED)
	{
		_tprintf(_T("删除的文件\n"));
	}
}

void handler(const TCHAR* fullpath,DWORD opType)
{

	_tprintf(_T("handlered=%d,%s\n"),opType,fullpath);
}

int _tmain(int argc, _TCHAR* argv[])
{
	setlocale(LC_ALL,"chs");
	fsmonitor spy;	
	
	spy.addMonitorPath(_T("C:\\Documents and Settings\\zjp\\桌面"));
	spy.addMonitorPath(_T("C:\\Documents and Settings\\zhangjianping\\My Documents\\"));
	spy.startMonitor();

	while(1)
	{
		spy.processResults(handler);
		Sleep(100);
	}
	
	return 0;
}

