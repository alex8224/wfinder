package com.greader
{
	import flash.display.BitmapData;
	import flash.filesystem.*;
	public class util
	{
		public function util()
		{
		}
		
		public static function getBmpData(url:String):BitmapData
		{
			var tFile:File=new File(url);				
			var bmpData:BitmapData = null;
			if(tFile.exists)
			{
				var bitmaps:Array = tFile.icon.bitmaps;	
				bmpData=new BitmapData(1, 1);
				for (var i:uint = 0; i < bitmaps.length; i++) {
					if (bitmaps[i].height > bmpData.height) {
						bmpData = tFile.icon.bitmaps[i];
					}
				}
			}
			
			return bmpData;
		}
	}
}