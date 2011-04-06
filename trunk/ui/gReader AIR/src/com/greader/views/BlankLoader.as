package com.greader.views
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	
	import mx.controls.Alert;
	import mx.events.FlexEvent;
	import mx.preloaders.DownloadProgressBar;
	
	public class BlankLoader extends DownloadProgressBar
	{
		public function BlankLoader()
		{
			super();	
		}
		
		override public function set preloader(preloader:Sprite):void
		{
			preloader.addEventListener( ProgressEvent.PROGRESS , function(event:ProgressEvent){} );         
			preloader.addEventListener( Event.COMPLETE , function(event:Event){} ); 
			preloader.addEventListener( FlexEvent.INIT_PROGRESS , function(event:Event)
			{
				dispatchEvent(new Event(Event.COMPLETE));
			} ); 
			preloader.addEventListener( FlexEvent.INIT_COMPLETE , function(event:Event){} ); 
		}
	}
}