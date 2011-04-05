// gdiplusstudy.cpp : ����Ӧ�ó������ڵ㡣
//

#include "stdafx.h"
#include "gdiplusstudy.h"
#include <commctrl.h>
#include <strsafe.h>
#include <tchar.h>
#define MAX_LOADSTRING 100

// ȫ�ֱ���:
HINSTANCE hInst;								// ��ǰʵ��
TCHAR szTitle[MAX_LOADSTRING];					// �������ı�
TCHAR szWindowClass[MAX_LOADSTRING];			// ����������

// �˴���ģ���а����ĺ�����ǰ������:
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

	::MessageBox(NULL,str,_T("��ʾ"),0);
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
	FontFamily family(_T("����"));
	Font font(&family,14,FontStyleRegular,UnitPixel);
	RECT rect;
	GetClientRect(hwnd,&rect);
	PointF xypos(rect.right-300,rect.bottom-50);
	SolidBrush  solidBrush(Color(255, 255, 255, 255));
	setPixelValue(hdc,x,y);
	TCHAR strBuff[100]={0,};
	StringCbPrintf(strBuff,100*sizeof(TCHAR),_T("%s x=%d,y=%d,rgb=(%d,%d,%d)"),_T("����"),x,y,GetRValue(pixelValue),GetGValue(pixelValue),GetBValue(pixelValue));	
	g.DrawString(strBuff,100*sizeof(TCHAR),&font,xypos,&solidBrush);
	Color tmpcolor(255,GetRValue(pixelValue),GetGValue(pixelValue),GetBValue(pixelValue));
	SolidBrush tmpBrush(tmpcolor);
	SolidBrush whiteBrush(Color(255,255,255,255));
	
	Pen tmpPen(Color(255,255,255,0));
	PointF blendValue(rect.right-361,rect.bottom-70);

	g.DrawString(_T("RGB���ֵ"),7,&font,blendValue,&whiteBrush);

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
		case VK_LEFT://��
			x-=step;
			break;
		case VK_RIGHT://��
			x+=step;
			break;
		case VK_UP://��
			y-=step;
			break;
		case VK_DOWN://��
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

	// TODO: �ڴ˷��ô��롣
	MSG msg;
	HACCEL hAccelTable;

	// ��ʼ��ȫ���ַ���
	LoadString(hInstance, IDS_APP_TITLE, szTitle, MAX_LOADSTRING);
	LoadString(hInstance, IDC_GDIPLUSSTUDY, szWindowClass, MAX_LOADSTRING);
	MyRegisterClass(hInstance);

	ULONG_PTR token;
	GdiplusStartupInput input;
	//��ʼ��gdi+
	GdiplusStartup(&token,&input,NULL);
	// ִ��Ӧ�ó����ʼ��:
	if (!InitInstance (hInstance, nCmdShow))
	{
		return FALSE;
	}

	hAccelTable = LoadAccelerators(hInstance, MAKEINTRESOURCE(IDC_GDIPLUSSTUDY));

	// ����Ϣѭ��:
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
//  ����: MyRegisterClass()
//
//  Ŀ��: ע�ᴰ���ࡣ
//
//  ע��:
//
//    ����ϣ��
//    �˴�������ӵ� Windows 95 �еġ�RegisterClassEx��
//    ����֮ǰ�� Win32 ϵͳ����ʱ������Ҫ�˺��������÷������ô˺���ʮ����Ҫ��
//    ����Ӧ�ó���Ϳ��Ի�ù�����
//    ����ʽ��ȷ�ġ�Сͼ�ꡣ
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
//   ����: InitInstance(HINSTANCE, int)
//
//   Ŀ��: ����ʵ�����������������
//
//   ע��:
//
//        �ڴ˺����У�������ȫ�ֱ����б���ʵ�������
//        ��������ʾ�����򴰿ڡ�
//
BOOL InitInstance(HINSTANCE hInstance, int nCmdShow)
{
	HWND hWnd;

	hInst = hInstance; // ��ʵ������洢��ȫ�ֱ�����

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
//  ����: WndProc(HWND, UINT, WPARAM, LPARAM)
//
//  Ŀ��: ���������ڵ���Ϣ��
//
//  WM_COMMAND	- ����Ӧ�ó���˵�
//  WM_PAINT	- ����������
//  WM_DESTROY	- �����˳���Ϣ������
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
		// �����˵�ѡ��:
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

// �����ڡ������Ϣ�������
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
