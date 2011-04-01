// TestProject.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <Windows.h>
#include <locale.h>
using namespace std;

void show_file(string &path)
{
	stack<string> find_file;

	WIN32_FIND_DATA FindFileData;
	HANDLE hFind;

	find_file.push(path);

	while(!find_file.empty())
	{
		string find_path = find_file.top();        
		find_file.pop();

		//访问
		string dir;
		int index_of_slash=find_path.rfind('\\');
		dir=find_path.substr(index_of_slash+1,find_path.length()-index_of_slash);
		for(int i=0;i<find_file.size();i++)
			wprintf(_T("   "));
		wprintf(_T("%s\n"),dir.c_str());
		

		//查找子目录/文件
		find_path=find_path.append(_T("\\*.*"));

		hFind=::FindFirstFile((LPCTSTR)find_path.c_str(),&FindFileData);
		if(hFind == INVALID_HANDLE_VALUE)
			continue;
		do
		{
			//非目录直接输出，目录的话则压栈
			if(FindFileData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
			{
				
				if(wcscmp(FindFileData.cFileName,_T("."))==0||
					wcscmp(FindFileData.cFileName,_T(".."))==0)
					continue;

				find_path=find_path.assign(find_path,0,find_path.rfind('\\'));
				find_path.append(new string("\\"));
				find_path.append(string(FindFileData.cFileName));
				
				find_file.push(find_path);                 
			}
			else
			{
				for(int i=0;i<=find_file.size();i++)
					cout<<"   ";
				cout<<FindFileData.cFileName<<endl;
			}
		}
		while(FindNextFile(hFind,&FindFileData));    
	}
}


int _tmain(int argc, _TCHAR* argv[])
{
	setlocale(LC_ALL,"CHS");


	return 0;
}

