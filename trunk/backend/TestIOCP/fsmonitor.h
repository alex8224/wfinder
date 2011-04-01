#include <vector>
using namespace std;

typedef void(*PROCESSCALLBACK)(const TCHAR* fullpath,DWORD opType);
class fsmonitor
{
	enum OPTYPE
	{
		CHECKUPDATE=1,
		QUIT
	};

	typedef struct changeinfo
	{
		TCHAR fullpath[2048];
		DWORD opType;
	} CHANGEINFO;

	typedef struct attachObj
	{
		OVERLAPPED overLap;
		HANDLE dirHandle;
		BYTE notifyBuffer[1024];
		TCHAR prefixPath[1024];
		UINT opType;
		DWORD monitorFlag;
		PROCESSCALLBACK callback;
	} ATTACHOBJ;

public:
	fsmonitor();//创建完成端口内核对象,初始化锁和dircollection,事件对象
	~fsmonitor();//释放内核对象

public:
	void addMonitorPath(TCHAR* path,PROCESSCALLBACK mCallback=NULL);//添加监视路径，与完成端口绑定
	void startMonitor();//遍历dircollection,并与完成端口绑定，启动监视线程,并首次调用异步IO操作
	void stopMonitor();//发送通知，停止监视目录,关闭目录句柄和完成端口句柄,释放资源,正常终止线程
	void notify();
	void wait();
	void lock();
	void unlock();
	void processResults(PROCESSCALLBACK callback);//处理结果
	void addFileTo(CHANGEINFO* info);
	BOOL isRunning();

public:
	//static DWORD WINAPI ThreadProc(__in  LPVOID lpParameter);//监视线程,完成通知的任务
	static unsigned __stdcall ThreadProc(void *lpParameter);

private:
	HANDLE iocpHandle;
	HANDLE notifyEvent;
	BOOL running;
	CRITICAL_SECTION lockObject;
	vector<ATTACHOBJ*>* dirCollection;
	vector<CHANGEINFO*>* changedFileList;
};
