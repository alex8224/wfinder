package com.greader.controller
{
	import flash.desktop.NativeProcess;
	import flash.desktop.NativeProcessStartupInfo;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.TimerEvent;
	import flash.filesystem.File;
	import flash.net.Socket;
	import flash.profiler.showRedrawRegions;
	import flash.utils.Timer;
	
	import mx.controls.Alert;

	public class ConnectToServer
	{
		private var process:NativeProcess;
		private var clientSock:Socket=null;

		public function ConnectToServer()
		{
			callProcess();
			toServer();			
		}
		
	
		private function toServer():void
		{
			clientSock=new Socket();
			clientSock.connect("localhost",1982);
			clientSock.addEventListener(Event.CLOSE,onClose);
			clientSock.addEventListener(IOErrorEvent.IO_ERROR,onError);
		}
		
		public function dispose():void
		{
			clientSock.dispatchEvent(new Event(Event.CLOSE,true,true));
		
		}

		private function onClose(closeEvt:Event):void
		{
			sendCmd("quit");
			clientSock.removeEventListener(Event.CLOSE,onClose);
			clientSock.removeEventListener(IOErrorEvent.IO_ERROR,onError);			
			clientSock.close();		
			process.exit(true);
		}
		
		private function onError(errEvt:IOErrorEvent):void
		{
			clientSock.removeEventListener(Event.CLOSE,onClose);
			clientSock.removeEventListener(IOErrorEvent.IO_ERROR,onError);
			clientSock.close();
			if(process!=null)
			{
				process.exit(true);	
			}
			
			callProcess();
			toServer();
		}
		
		private function callProcess():void
		{
			var startInfo:NativeProcessStartupInfo=new NativeProcessStartupInfo;
			startInfo.executable=File.applicationDirectory.resolvePath("TestProject.exe");		
		//	startInfo.arguments.push(File.applicationDirectory.resolvePath("wfinder.db").nativePath);
			process=new NativeProcess;			
			process.start(startInfo);	
		}
		
		public function sendCmd(cmdText:String):void
		{
			if(clientSock!=null && clientSock.connected)
			{
				clientSock.writeUTFBytes(cmdText);
				clientSock.flush();
			}else
			{
				clientSock=new Socket();
				clientSock.connect("localhost",1982);
			}
		}

}
	
}
