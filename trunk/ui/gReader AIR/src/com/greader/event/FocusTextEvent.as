package com.greader.event
{
	import flash.events.Event;
	
	public class FocusTextEvent extends Event
	{
		public static const FOCUS_TEXT:String = "focusText";
		public function FocusTextEvent(bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super("focusText", bubbles, cancelable);
		}
	}
}