
class StringBuilder
{
public:
	StringBuilder();
	StringBuilder(const TCHAR *);
	~StringBuilder();
	StringBuilder(int length);

	int rfind(TCHAR findchar);//�������ָ���ַ���λ��
	int find(TCHAR findchar);//��������ַ���λ��
	StringBuilder& append(const TCHAR*);//���ַ����������µ��ַ��������ر�����
	StringBuilder& append(const StringBuilder&);//������һ��stringM������ӵ�������	
	StringBuilder& append(TCHAR onechar);
	StringBuilder& append(int intvalue);
	StringBuilder* substring(int start,int end=0);//��ȡ�ַ�����һ����
	BOOL startwith(const TCHAR*);//�Ƿ���ָ�����ַ�����ʼ
	BOOL endwith(const TCHAR*);//�Ƿ���ָ�����ַ�������
	void clear();//����ڴ��е�����
	int getlength() const;
	int getbytelen() const;
	TCHAR* c_str() const;
	void setstring(TCHAR*,int count);	
	void setMemAllocateSize(int size);

public:
	TCHAR operator[](int start);
	StringBuilder& operator+(const StringBuilder&);
	StringBuilder& operator+(TCHAR);
	StringBuilder& operator+(const TCHAR*);
	StringBuilder& operator+(int intValue);

private:
	TCHAR *buff;//����ַ��Ļ�����
	int buffIndex;
	int totalLength;//������
	int memAllocateSize;//ÿ�����ݵ��ڴ�����

};


typedef struct fileinfo
{
	TCHAR *filename;//�ļ�����
	TCHAR *fullpath;//�ļ�����Ŀ¼
	FILETIME *lastmodify;//����޸�ʱ��
	DWORD filesize;//�ļ���С
} FILEINFO;

typedef void(*SEARCHCALLBACK)(FILEINFO*);//�����ص�������
//////////////////////////////////////////////////////////////////////////
//��ȫɨ��ָ����Ŀ¼
//////////////////////////////////////////////////////////////////////////
class FullSearch
{
public:
	FullSearch(TCHAR* startpath);
	void setSearchPath(TCHAR* startpath);
	void startSearch(SEARCHCALLBACK=NULL);
	~FullSearch();

public:
	TCHAR* path;
};

class CommonUtil
{

public:
	static BOOL getAllFolder(TCHAR* buff,USHORT csidl);//��ȡ�����û�������λ��
	static BOOL getMyFolder(TCHAR* buff,USHORT csidl);//��ȡ��ǰ�û�������λ��
};

enum ALLEXCEPTION
{
	CONNECTION_CLOSE_EXCEPTION=1,//�����ѹر�
    DB_EXCEPTION//���ݿ��쳣
};


//////////////////////////////////////////////////////////////////////////
//���������
//////////////////////////////////////////////////////////////////////////
class ResultSet
{
public:
	ResultSet();
	~ResultSet();
public:
	void setStatement(sqlite3_stmt*);
	int getInt(int icol);
	void getString(int icol,StringBuilder&);
	BOOL next();
private:
	sqlite3_stmt* iStatement;
	int state;
};



//////////////////////////////////////////////////////////////////////////
//���ݿ�����
//////////////////////////////////////////////////////////////////////////
class DBConnection
{
public://������������
	DBConnection(TCHAR* dbname=NULL,int dbflag=0);//�������ݿ�����
	~DBConnection();//�ͷ����ݿ�����

public:
	void openConnection();//�����ݿ����� �׳��쳣
	void startTransaction();
	void execute(sqlite3_stmt* stmt);//�׳��쳣
	void execute(void *stmt);
	void executeNoResult(const char* execSql);
	void* preStatement(TCHAR* precompiledsql);//Ԥ����SQL���׳��쳣
	void preStatement(sqlite3_stmt* outStmt,TCHAR* precompiledsql);
	void setInt(int icol,int intValue);//����ָ���ֶε�intֵ
	void setString(int icol,TCHAR* strValue);//����ָ���ֶε��ַ���ֵ
	void DBConnection::executeQuery(ResultSet& emptyResult,sqlite3_stmt* outstmt);//����Result����throw
	void endStatement(sqlite3_stmt* stmt);//ִ��sqlite3_finalize,throw
	void reuseStatement(sqlite3_stmt* outstmt);//����statement
	sqlite3_stmt* getStatement();
	BOOL isOpen();
	void closeConnection();//�ر�����
	void commit();
	const char* printError();

private:
	sqlite3* connection;//�ڲ����ݿ�����
	sqlite3_stmt* stmt;//ִ��sqlprestatement����,��Ҫ�ڲ�ά��һ��statement���������ֲ�ͬ��statement
	TCHAR* dbName;
	int iFlag;
	BOOL dbOpened;
	BOOL stmtOK;
	BOOL executeFlag;
	FILE* logFile;
};

class Statement
{
public:
	Statement(sqlite3* conn,TCHAR* sqlText);
	~Statement();
public:
	void close();
	void setString(int icol,TCHAR* strValue);
	void setInt(int icol,int intValue);
	sqlite3_stmt* getStatement();
	TCHAR* getSqlText();

private:
	TCHAR* sql;
	sqlite3* connection;
	sqlite3_stmt* stmt;	
};

class Icommand
{
	public:
		virtual void execute()=0;
};

class FileSystemCommand: public Icommand
{
	public:
		FileSystemCommand(void* check);
		void setFileMonitor(void* monitor);
		~FileSystemCommand();
		void execute();
private:
		void* fschecker;
};

class  DefaultOpenHandler: public Icommand
{
	public:
		DefaultOpenHandler();
		void setCmdText(TCHAR* cmdText);
		~DefaultOpenHandler();
		void execute();
	private:
		TCHAR* currentCmd;
		StringBuilder* strBuilder;
};

class  RefreshHandler: public Icommand
{
public:
	RefreshHandler();
	~RefreshHandler();
	void execute();
};


class OpenLocation:public Icommand
{
public:
	OpenLocation();
	~OpenLocation();
};
class CommandServer
{
	public:
		CommandServer(int port,void* check);
		~CommandServer();

	public:
		//format:cmd|cmdText|cmdDetail
		//eg:cmd|open|c:\c\socket2.exe
		void serverforever();//��ʼ����������ͻ�������

	private:
		void initServer();//��ʼ������

	private:
		BOOL runflag;//�����б�־
		int portnum;
		Icommand* openCommand;
		Icommand* stopFsMonitor;
		Icommand* refreshMonitor;
};
