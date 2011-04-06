package com.greader.event
{
	import flash.events.Event;
	
	public class SearchEvent extends Event
	{
		private var searchText:String;
		
		public function SearchEvent(textValue:String,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super("search", bubbles, cancelable);
			this.searchText=textValue;
		}
		
		public function get searchtext():String
		{
			return searchText;
		}
	}
}