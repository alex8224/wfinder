// TestIOCP.cpp : �������̨Ӧ�ó������ڵ㡣
//

#include "stdafx.h"
void printfFullPath(const TCHAR* fullpath,const TCHAR* filename,DWORD opType)
{
	
	_tprintf(_T("���Ǻ���printfFullPath �ӻص������д�ӡ������ %s"),fullpath);
	if(opType==FILE_ACTION_ADDED)
	{
		_tprintf(_T("�������ļ�\n"));
	}else if(opType==FILE_ACTION_REMOVED)
	{
		_tprintf(_T("ɾ�����ļ�\n"));
	}
}

void printfFullPath2(const TCHAR* fullpath,const TCHAR* filename,DWORD opType)
{
	_tprintf(_T("���Ǻ���printfFullPath2 �ӻص������д�ӡ������ %s"),fullpath);
	if(opType==FILE_ACTION_ADDED)
	{
		_tprintf(_T("�������ļ�\n"));
	}else if(opType==FILE_ACTION_REMOVED)
	{
		_tprintf(_T("ɾ�����ļ�\n"));
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
	
	spy.addMonitorPath(_T("C:\\Documents and Settings\\zjp\\����"));
	spy.addMonitorPath(_T("C:\\Documents and Settings\\zhangjianping\\My Documents\\"));
	spy.startMonitor();

	while(1)
	{
		spy.processResults(handler);
		Sleep(100);
	}
	
	return 0;
}

