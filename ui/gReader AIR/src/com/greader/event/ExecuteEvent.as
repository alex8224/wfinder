package com.greader.event
{
	import flash.events.Event;
	
	
	public class ExecuteEvent extends Event
	{
		public static var EXECUTE:String="execute";
		private var noSearchResultCmd:String;
		private var executeType:String;
		private var executeItem:Object;
		public function ExecuteEvent(otherCmd:String=null,executeType:String=null,executeItem:Object=null)
		{			
			super("execute", true, true);
			if(otherCmd)
			{
				noSearchResultCmd=otherCmd;
			}
			if(executeType)
			{
				this.executeType=executeType;
				this.executeItem=executeItem;
			}
		}
		
		public function get nosearchresult():String
		{
			return noSearchResultCmd;
		}		
		
		public function get executetype():String
		{
			return this.executeType;
		}
		
		public function get attachItem():Object
		{
			return executeItem;
		}
	}
}