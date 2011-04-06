package com.greader.commutil
{
	import flash.data.*;
	import flash.filesystem.File;
	
	public class BuilderDb
	{
		public function BuilderDb()
		{
			
		}
		
		/**
		 * database was inited
		 * @return Boolean
		 * */
		public static function dbInited():Boolean
		{
			var dbFile:File=File.applicationDirectory.resolvePath("wfinder.db");			
			return dbFile.exists;
		}
		
		public static function dumpToMemoryDb(conn:SQLConnection):void
		{
			var localconn:SQLConnection=new SQLConnection;
			localconn.open(File.applicationDirectory.resolvePath("wfinder.db"));
			localconn.compact();
		
			
			var localStmt:SQLStatement=new SQLStatement;
			localStmt.sqlConnection=localconn;
			localStmt.text="select * from searchstore";
			localStmt.execute();
			var resultset:Array=localStmt.getResult().data;
			if(resultset!=null && resultset.length>0)
			{
				var memStmt:SQLStatement=new SQLStatement;
				memStmt.sqlConnection=conn;
				memStmt.text="delete from searchstore";
				memStmt.execute();
				
				memStmt.text="insert into searachstore(fname,fullpath) values(:ename,:epath)";
				for(var i:int=0;i<resultset.length;i++)
				{
					memStmt.parameters[":ename"]=resultset[i].fname;
					memStmt.parameters[":epath"]=resultset[i].fullpath;
					memStmt.execute();
				}
			}
			localconn.close();		
		}
		
		public static function checkAndInitDb():Boolean
		{
			if(!BuilderDb.dbInited())
			{
				var dbFile:File=File.applicationDirectory.resolvePath("wfinder.db");
				var sqlConn:SQLConnection=new SQLConnection;
				sqlConn.open(dbFile,"create");
				sqlConn.compact();
				
				createSchema(sqlConn);
				sqlConn.close();
				return true;
			}			
			return false;
		}
		
		public static function createSchema(conn:SQLConnection):void
		{
			var cConfigStoreSql:String="create table configstore(configname varchar(255),configvalue varchar(512),inited integer)";
			var cSearchStoreSql:String="create table searchstore(fid INTEGER PRIMARY KEY,fname varchar(512),fullpath varchar(2048),rootpath varchar(1024),executecount INTEGER,tagname varchar(100))";
			var cEmployeeSql:String="create table employee(empname varchar(255),fullpath varchar(1024))";
						
			var schemaStmt:SQLStatement=new SQLStatement;
			schemaStmt.sqlConnection=conn;
			schemaStmt.text=cConfigStoreSql;
			schemaStmt.execute();
			
			schemaStmt.text=cSearchStoreSql;
			schemaStmt.execute();
			
			schemaStmt.text=cEmployeeSql;
			schemaStmt.execute();
			
			
			initDbData(conn);
		}
		
		private static function initDbData(conn:SQLConnection):void
		{
			var cInitConfigData="insert into configstore values('isinit',0,0)";
			var iStmt:SQLStatement=new SQLStatement;
			iStmt.sqlConnection=conn;
			iStmt.text=cInitConfigData;
			iStmt.execute();
		}
	}
}