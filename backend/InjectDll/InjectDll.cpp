// InjectDll.cpp : 定义 DLL 应用程序的入口点。
//

#include "stdafx.h"
#include "InjectDll.h"


#ifdef _MANAGED
#pragma managed(push, off)
#endif
LONG orgiWndProc=NULL;
BOOL isCall=TRUE;
int hotkeyid=0;
HWND winHwnd;
LRESULT CALLBACK myWndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	if(isCall)
	{
		int base=1024+WM_USER;
		while(!RegisterHotKey(hWnd,base++,MOD_WIN,0x57));
		hotkeyid=--base;
		winHwnd=hWnd;
		//{
		//	DWORD nErrorNo = GetLastError ( ); // 得到错误代码
		//	TCHAR* lpBuffer;    
		//	FormatMessage ( FORMAT_MESSAGE_ALLOCATE_BUFFER  |
		//		FORMAT_MESSAGE_IGNORE_INSERTS  |
		//		FORMAT_MESSAGE_FROM_SYSTEM,
		//		NULL,
		//		nErrorNo, // 此乃错误代码，通常在程序中可由 GetLastError()得之
		//		LANG_NEUTRAL,
		//		(LPTSTR) & lpBuffer,
		//		0 ,
		//		NULL );
		//	MessageBox(NULL,lpBuffer,_T(""),0);
		//	LocalFree(lpBuffer);
		//}
		isCall=FALSE;
	}


	 if(message==WM_HOTKEY)
	{
		SetWindowLong(hWnd,GWL_STYLE,382205952);
		ShowWindow(hWnd,SW_RESTORE);
		SetForegroundWindow(hWnd);
	}
	else
	{
		return CallWindowProc((WNDPROC)orgiWndProc,hWnd,message,wParam,lParam);
	}

return 0;
}

void deattachHotkey()
{
	UnregisterHotKey(winHwnd,hotkeyid);
}

void replaceWindowProc()
{
	HWND finderHwnd=FindWindow(NULL,_T("wFinder"));
	
	LONG defaultProc=GetWindowLong(finderHwnd,GWL_WNDPROC);
	orgiWndProc=defaultProc;
	if(SetWindowLong(finderHwnd,GWL_WNDPROC,(LONG)myWndProc)==0)
	{
		MessageBox(finderHwnd,_T("替换窗口过程失败"),_T("发送错误"),0);
	}
}


BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
					 )
{

	switch (ul_reason_for_call)
	{
	case DLL_PROCESS_ATTACH:
		{
			replaceWindowProc();
		}
		
	case DLL_THREAD_ATTACH:
	case DLL_THREAD_DETACH:
	case DLL_PROCESS_DETACH:
		{
			deattachHotkey();
		}
		break;
	}
    return TRUE;
}
