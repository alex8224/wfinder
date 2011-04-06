
class StringBuilder
{
public:
	StringBuilder();
	StringBuilder(const TCHAR *);
	~StringBuilder();
	StringBuilder(int length);

	int rfind(TCHAR findchar);//反向查找指定字符的位置
	int find(TCHAR findchar);//正向查找字符的位置
	StringBuilder& append(const TCHAR*);//在字符串后增加新的字符串并返回本对象
	StringBuilder& append(const StringBuilder&);//将另外一个stringM对象添加到本对象	
	StringBuilder& append(TCHAR onechar);
	StringBuilder& append(int intvalue);
	StringBuilder* substring(int start,int end=0);//截取字符串的一部分
	BOOL startwith(const TCHAR*);//是否以指定的字符串开始
	BOOL endwith(const TCHAR*);//是否以指定的字符串结束
	void clear();//清空内存中的数据
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
	TCHAR *buff;//存放字符的缓冲区
	int buffIndex;
	int totalLength;//总容量
	int memAllocateSize;//每次扩容的内存容量

};


typedef struct fileinfo
{
	TCHAR *filename;//文件名称
	TCHAR *fullpath;//文件所属目录
	FILETIME *lastmodify;//最后修改时间
	DWORD filesize;//文件大小
} FILEINFO;

typedef void(*SEARCHCALLBACK)(FILEINFO*);//搜索回调处理函数
//////////////////////////////////////////////////////////////////////////
//完全扫描指定的目录
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
	static BOOL getAllFolder(TCHAR* buff,USHORT csidl);//获取所有用户的设置位置
	static BOOL getMyFolder(TCHAR* buff,USHORT csidl);//获取当前用户的设置位置
};

enum ALLEXCEPTION
{
	CONNECTION_CLOSE_EXCEPTION=1,//连接已关闭
    DB_EXCEPTION//数据库异常
};


//////////////////////////////////////////////////////////////////////////
//结果集对象
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
//数据库连接
//////////////////////////////////////////////////////////////////////////
class DBConnection
{
public://构造析构函数
	DBConnection(TCHAR* dbname=NULL,int dbflag=0);//建立数据库连接
	~DBConnection();//释放数据库连接

public:
	void openConnection();//打开数据库连接 抛出异常
	void startTransaction();
	void execute(sqlite3_stmt* stmt);//抛出异常
	void execute(void *stmt);
	void executeNoResult(const char* execSql);
	void* preStatement(TCHAR* precompiledsql);//预编译SQL，抛出异常
	void preStatement(sqlite3_stmt* outStmt,TCHAR* precompiledsql);
	void setInt(int icol,int intValue);//设置指定字段的int值
	void setString(int icol,TCHAR* strValue);//设置指定字段的字符串值
	void DBConnection::executeQuery(ResultSet& emptyResult,sqlite3_stmt* outstmt);//返回Result对象，throw
	void endStatement(sqlite3_stmt* stmt);//执行sqlite3_finalize,throw
	void reuseStatement(sqlite3_stmt* outstmt);//重用statement
	sqlite3_stmt* getStatement();
	BOOL isOpen();
	void closeConnection();//关闭连接
	void commit();
	const char* printError();

private:
	sqlite3* connection;//内部数据库连接
	sqlite3_stmt* stmt;//执行sqlprestatement对象,需要内部维护一个statement集合以区分不同的statement
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
		void serverforever();//开始监听并处理客户端命令

	private:
		void initServer();//初始化服务

	private:
		BOOL runflag;//可运行标志
		int portnum;
		Icommand* openCommand;
		Icommand* stopFsMonitor;
		Icommand* refreshMonitor;
};
