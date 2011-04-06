package com.greader.controller
{
	import flash.data.*;
	import flash.errors.SQLError;
	import flash.filesystem.File;
	
	import mx.controls.Alert;

	
	public class TestSqlCommand
	{
		private static var conn:SQLConnection=null;
		
		public function TestSqlCommand()
		{
		}
		
		private function getConnection():void
		{
			if(conn==null)
			{
				conn=new SQLConnection();
				var dbfile:File=File.applicationDirectory.resolvePath("wfinder.db");
				//var dbfile:File=new File("c:\\test1.db");
				try{
					conn.open(dbfile);
					conn.compact();
				}catch(e:SQLError)
				{
					trace(e.message);
				}
			}
		}
		
		public function set connection(connection:SQLConnection):void
		{
			if(conn!=null && conn.connected)
			{
				conn.close();
				conn=null;
			}
			
			conn=connection;
		}
		
		public function closeConnection():void
		{
			if(conn!=null)
			{
				conn.close();
				conn=null;
			}
		}
		
		public function queryEmpByName(v:String):Array
		{
			
			var resultArray:Array=null;
			
				try{
					getConnection();
					var stmt:SQLStatement=new SQLStatement();
					stmt.sqlConnection=conn;
					stmt.text="select * from searchstore where fname like '%"+v+"%' order by executecount desc";
					stmt.execute();
					resultArray=stmt.getResult().data;
				
				}catch(e:SQLError)
				{
					trace(e.message);
				}
				
				return resultArray;
						
		}
		
		public function addExecuteCount(v:int):void
		{
			try
			{
				getConnection();
				var stmt:SQLStatement=new SQLStatement();
				stmt.sqlConnection=conn;
				stmt.text="update searchstore set executecount=executecount+1 where fid="+v;
				stmt.execute();
			}catch(e:SQLError)
			{
				trace(e.message);
			}
		}
		
		//查询最近打开最多的十个应用程序或者文件
		public function queryTop10():Array
		{
			var resultArray:Array=null;
			
			try{
				
				getConnection();
				var stmt:SQLStatement=new SQLStatement();
				stmt.sqlConnection=conn;
				stmt.text="select * from searchstore order by executecount desc limit 10";
				stmt.execute();
				resultArray=stmt.getResult().data;
			}catch(e:SQLError)
			{
				trace(e.message);
			}
			
			return resultArray;
		}
	}
}