// gdiplusstudy.cpp : 定义应用程序的入口点。
//

#include "stdafx.h"
#include "gdiplusstudy.h"
#include <commctrl.h>
#include <strsafe.h>
#include <tchar.h>
#define MAX_LOADSTRING 100

// 全局变量:
HINSTANCE hInst;								// 当前实例
TCHAR szTitle[MAX_LOADSTRING];					// 标题栏文本
TCHAR szWindowClass[MAX_LOADSTRING];			// 主窗口类名

// 此代码模块中包含的函数的前向声明:
ATOM				MyRegisterClass(HINSTANCE hInstance);
BOOL				InitInstance(HINSTANCE, int);
LRESULT CALLBACK	WndProc(HWND, UINT, WPARAM, LPARAM);
INT_PTR CALLBACK	About(HWND, UINT, WPARAM, LPARAM);
int x=0,y=0,width=150,height=30,step=3;
COLORREF pixelValue=0;
BOOL mouseDown=FALSE;
void moveDraw(short);

int GetEncoderClsid(const WCHAR* format, CLSID* pClsid)
{
   UINT  num = 0;          // number of image encoders
   UINT  size = 0;         // size of the image encoder array in bytes

   ImageCodecInfo* pImageCodecInfo = NULL;

   GetImageEncodersSize(&num, &size);
   if(size == 0)
      return -1;  // Failure

   pImageCodecInfo = (ImageCodecInfo*)(malloc(size));
   if(pImageCodecInfo == NULL)
      return -1;  // Failure

   GetImageEncoders(num, size, pImageCodecInfo);

   for(UINT j = 0; j < num; ++j)
   {
      if( wcscmp(pImageCodecInfo[j].MimeType, format) == 0 )
      {
         *pClsid = pImageCodecInfo[j].Clsid;
         free(pImageCodecInfo);
         return j;  // Success
      }    
   }

   free(pImageCodecInfo);
   return -1;  // Failure
}

void showMessage(LPTSTR str)
{

	::MessageBox(NULL,str,_T("提示"),0);
}

void setPixelValue(HDC dc,int x,int y)
{
	 pixelValue=GetPixel(dc,x,y);
	
}
void onDraw(HDC hdc,HWND hwnd)
{
	
	Graphics g(hdc);
	Bitmap pngImg(_T("d://c1.PNG"));
	g.DrawImage(&pngImg,0,0);
	FontFamily family(_T("宋体"));
	Font font(&family,14,FontStyleRegular,UnitPixel);
	RECT rect;
	GetClientRect(hwnd,&rect);
	PointF xypos(rect.right-300,rect.bottom-50);
	SolidBrush  solidBrush(Color(255, 255, 255, 255));
	setPixelValue(hdc,x,y);
	TCHAR strBuff[100]={0,};
	StringCbPrintf(strBuff,100*sizeof(TCHAR),_T("%s x=%d,y=%d,rgb=(%d,%d,%d)"),_T("坐标"),x,y,GetRValue(pixelValue),GetGValue(pixelValue),GetBValue(pixelValue));	
	g.DrawString(strBuff,100*sizeof(TCHAR),&font,xypos,&solidBrush);
	Color tmpcolor(255,GetRValue(pixelValue),GetGValue(pixelValue),GetBValue(pixelValue));
	SolidBrush tmpBrush(tmpcolor);
	SolidBrush whiteBrush(Color(255,255,255,255));
	
	Pen tmpPen(Color(255,255,255,0));
	PointF blendValue(rect.right-361,rect.bottom-70);

	g.DrawString(_T("RGB混合值"),7,&font,blendValue,&whiteBrush);

	g.DrawRectangle(&tmpPen,rect.right-351,rect.bottom-49,30,10);
	g.FillRectangle(&tmpBrush,rect.right-350,rect.bottom-48,29,9);

	 HMODULE dllhandle=LoadLibrary(_T("C:\\Windows\\System32\\inetcpl.cpl"));
   if(dllhandle)
   {
	  HANDLE imghandle= LoadImage(dllhandle, // small class icon 
        MAKEINTRESOURCE(4487),
		IMAGE_ICON, 
        48, 
        48, 
		LR_LOADTRANSPARENT); 
	//   HICON icon=LoadIcon(dllhandle,MAKEINTRESOURCE(1));
	  Bitmap* img=Bitmap::FromHICON((HICON)imghandle);
	  g.DrawImage(img,10,10);
	  CLSID   encoderClsid;
	  GetEncoderClsid(_T("image/png"),&encoderClsid);
	  img->Save(_T("d:\\test.png"),&encoderClsid);
	   FreeLibrary(dllhandle);
	   
   }

}


void moveDraw(short direction)
{
	BYTE mask=0xf;

	switch(direction)
	{
		case VK_LEFT://左
			x-=step;
			break;
		case VK_RIGHT://右
			x+=step;
			break;
		case VK_UP://上
			y-=step;
			break;
		case VK_DOWN://下
			y+=step;
			break;
	}

}
int APIENTRY _tWinMain(HINSTANCE hInstance,
					   HINSTANCE hPrevInstance,
					   LPTSTR    lpCmdLine,
					   int       nCmdShow)
{
	UNREFERENCED_PARAMETER(hPrevInstance);
	UNREFERENCED_PARAMETER(lpCmdLine);

	// TODO: 在此放置代码。
	MSG msg;
	HACCEL hAccelTable;

	// 初始化全局字符串
	LoadString(hInstance, IDS_APP_TITLE, szTitle, MAX_LOADSTRING);
	LoadString(hInstance, IDC_GDIPLUSSTUDY, szWindowClass, MAX_LOADSTRING);
	MyRegisterClass(hInstance);

	ULONG_PTR token;
	GdiplusStartupInput input;
	//初始化gdi+
	GdiplusStartup(&token,&input,NULL);
	// 执行应用程序初始化:
	if (!InitInstance (hInstance, nCmdShow))
	{
		return FALSE;
	}

	hAccelTable = LoadAccelerators(hInstance, MAKEINTRESOURCE(IDC_GDIPLUSSTUDY));

	// 主消息循环:
	while (GetMessage(&msg, NULL, 0, 0))
	{
		if (!TranslateAccelerator(msg.hwnd, hAccelTable, &msg))
		{
			TranslateMessage(&msg);
			DispatchMessage(&msg);
		}
	}
	GdiplusShutdown(token);


	return (int) msg.wParam;
}

void setStatusText(HWND statHwnd,LPTSTR message)
{
	RECT rect;
	GetClientRect(statHwnd,&rect);
	::DrawStatusText(GetDC(statHwnd),&rect,TEXT("test"),SBT_RTLREADING);
	SendMessage(statHwnd, (UINT) SB_SETTEXT, (WPARAM)(INT) 0 | 0, (LPARAM) (LPSTR) TEXT("test2"));
}
//
//  函数: MyRegisterClass()
//
//  目的: 注册窗口类。
//
//  注释:
//
//    仅当希望
//    此代码与添加到 Windows 95 中的“RegisterClassEx”
//    函数之前的 Win32 系统兼容时，才需要此函数及其用法。调用此函数十分重要，
//    这样应用程序就可以获得关联的
//    “格式正确的”小图标。
//
ATOM MyRegisterClass(HINSTANCE hInstance)
{
	WNDCLASSEX wcex;

	wcex.cbSize = sizeof(WNDCLASSEX);

	wcex.style			= CS_HREDRAW | CS_VREDRAW;
	wcex.lpfnWndProc	= WndProc;
	wcex.cbClsExtra		= 0;
	wcex.cbWndExtra		= 0;
	wcex.hInstance		= hInstance;
	wcex.hIcon			= LoadIcon(hInstance, MAKEINTRESOURCE(IDI_GDIPLUSSTUDY));
	wcex.hCursor		= LoadCursor(NULL, IDC_ARROW);
	wcex.hbrBackground	= 0;
	wcex.lpszMenuName	= MAKEINTRESOURCE(IDC_GDIPLUSSTUDY);
	wcex.lpszClassName	= szWindowClass;
	wcex.hIconSm		= LoadIcon(wcex.hInstance, MAKEINTRESOURCE(IDI_SMALL));

	return RegisterClassEx(&wcex);
}

//
//   函数: InitInstance(HINSTANCE, int)
//
//   目的: 保存实例句柄并创建主窗口
//
//   注释:
//
//        在此函数中，我们在全局变量中保存实例句柄并
//        创建和显示主程序窗口。
//
BOOL InitInstance(HINSTANCE hInstance, int nCmdShow)
{
	HWND hWnd;

	hInst = hInstance; // 将实例句柄存储在全局变量中

	hWnd = CreateWindow(szWindowClass, szTitle, WS_OVERLAPPEDWINDOW,
		CW_USEDEFAULT, 0, CW_USEDEFAULT, 0, NULL, NULL, hInstance, NULL);
	

	if (!hWnd)
	{
		return FALSE;
	}

	ShowWindow(hWnd, nCmdShow);
	UpdateWindow(hWnd);

	return TRUE;
}

//
//  函数: WndProc(HWND, UINT, WPARAM, LPARAM)
//
//  目的: 处理主窗口的消息。
//
//  WM_COMMAND	- 处理应用程序菜单
//  WM_PAINT	- 绘制主窗口
//  WM_DESTROY	- 发送退出消息并返回
//
//
LRESULT CALLBACK WndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	int wmId, wmEvent;
	PAINTSTRUCT ps;
	HDC hdc;

	switch (message)
	{
	case WM_COMMAND:
		wmId    = LOWORD(wParam);
		wmEvent = HIWORD(wParam);
		// 分析菜单选择:
		switch (wmId)
		{
		case IDM_ABOUT:
			DialogBox(hInst, MAKEINTRESOURCE(IDD_ABOUTBOX), hWnd, About);
			break;
		case IDM_EXIT:
			DestroyWindow(hWnd);
			break;
		default:
			return DefWindowProc(hWnd, message, wParam, lParam);
		}
		break;
	case WM_MOUSEMOVE:
		{
			x=(int)LOWORD(lParam),y=(int)HIWORD(lParam);
			RECT rect;
			
 			GetClientRect(hWnd,&rect);
			InvalidateRect(hWnd,&rect,false);
		//	UpdateWindow(hWnd);
			break;
		}

	case WM_PAINT:
		hdc = BeginPaint(hWnd, &ps);
		onDraw(hdc,hWnd);
		EndPaint(hWnd, &ps);
		break;
	case WM_DESTROY:
		PostQuitMessage(0);
		break;
	case WM_HSCROLL:
		break;

	case WM_VSCROLL:
		break;

	

	default:
		return DefWindowProc(hWnd, message, wParam, lParam);
	}
	return 0;
}

// “关于”框的消息处理程序。
INT_PTR CALLBACK About(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	UNREFERENCED_PARAMETER(lParam);
	switch (message)
	{
	case WM_INITDIALOG:
		return (INT_PTR)TRUE;

	case WM_COMMAND:
		if (LOWORD(wParam) == IDOK || LOWORD(wParam) == IDCANCEL)
		{
			EndDialog(hDlg, LOWORD(wParam));
			return (INT_PTR)TRUE;
		}
		break;
	}
	return (INT_PTR)FALSE;
}
