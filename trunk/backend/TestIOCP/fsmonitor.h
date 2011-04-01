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
	fsmonitor();//������ɶ˿��ں˶���,��ʼ������dircollection,�¼�����
	~fsmonitor();//�ͷ��ں˶���

public:
	void addMonitorPath(TCHAR* path,PROCESSCALLBACK mCallback=NULL);//��Ӽ���·��������ɶ˿ڰ�
	void startMonitor();//����dircollection,������ɶ˿ڰ󶨣����������߳�,���״ε����첽IO����
	void stopMonitor();//����֪ͨ��ֹͣ����Ŀ¼,�ر�Ŀ¼�������ɶ˿ھ��,�ͷ���Դ,������ֹ�߳�
	void notify();
	void wait();
	void lock();
	void unlock();
	void processResults(PROCESSCALLBACK callback);//������
	void addFileTo(CHANGEINFO* info);
	BOOL isRunning();

public:
	//static DWORD WINAPI ThreadProc(__in  LPVOID lpParameter);//�����߳�,���֪ͨ������
	static unsigned __stdcall ThreadProc(void *lpParameter);

private:
	HANDLE iocpHandle;
	HANDLE notifyEvent;
	BOOL running;
	CRITICAL_SECTION lockObject;
	vector<ATTACHOBJ*>* dirCollection;
	vector<CHANGEINFO*>* changedFileList;
};
