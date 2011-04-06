package com.greader.model
{
	import mx.collections.ArrayCollection;

	public class GridPager
	{
		private var _pagesize:int;
		private var _currpage:int;
		private var _totalcount:int;
		private var _currIndex:int;
		private var _endIndex:int;
		private var _totalpage:int;
		private var _showFirstPage:Boolean;
		
		public function GridPager()
		{
		}
		
		public function set showFirstPage(v:Boolean):void
		{
			this._showFirstPage=v;
		}
		
		public function get showFirstPage():Boolean
		{
			return this._showFirstPage;
		}
		
		public  function set pagesize(psize:int):void
		{
			this._pagesize=psize;	
		}
		
		public function get pagesize():int
		{
			return this._pagesize;
		}
		
		public function set currpage(v:int): void
		{
			this._currpage=v;
		}
		
		public function get currpage():int
		{
			return this._currpage;
		}
		
		public function set totalcount(v:int):void
		{
			this._totalcount=v;
			this.caluPage();
			this._currpage=0;
			this.showFirstPage=false;
		}
		
		public function get totalcount():int
		{
			return this._totalcount;
		}
		
		public function get totalpage():int
		{
			return this._totalpage;
		}
		
		public function caluPage():void
		{
			if(this._totalcount % this._pagesize>0)
			{
				this._totalpage=this._totalcount/this._pagesize+1;
			}else
			{
				this._totalpage=this._totalcount/this._pagesize;
			}
		}
		private function setPage():Array
		{
			this._currIndex=this._currpage*this._pagesize;
			this._endIndex=this._currpage*this._pagesize+this._pagesize;
			
			var rangeArray:Array=[this._currIndex,this._endIndex];
			return rangeArray;
		}
		
		public function refreshPage():Array
		{
			this._showFirstPage=true;
			return setPage();
		}
		
		public function showPage():Array
		{
			if(this._currpage==0)
			{
				return setPage();
			}else
			{
				return nextPage();
			}
		}
		
		public function nextPage():Array
		{			
			if(this._currpage+1<this._totalpage)
				{
					this._currpage+=1;
					return setPage();
				}else
				{
					return [];
				}
		}
		
		public function prevPage():Array
		{
			if(this._currpage-1>=0)
			{
				this._currpage-=1;
				return setPage();
			}else
			{
				return [];
			}
			
		}
	}
}