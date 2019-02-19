
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns the list of configured virtual goods.
	*/
	public class ListVirtualGoodsRequest extends GSRequest
	{
	
		function ListVirtualGoodsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListVirtualGoodsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListVirtualGoodsRequest
		{
			this.timeoutSeconds = timeoutSeconds; 
			return this;
		}
		
		/**
		* Send the request to the server. The callback function will be invoked with the response
		*/
		public override function send (callback : Function) : String{
			return super.send( 
				function(message:Object) : void{
					if(callback != null)
					{
						callback(new ListVirtualGoodsResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListVirtualGoodsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* If true, the returned list will include disabled VirtualVoods
		*/
		public function setIncludeDisabled( includeDisabled : Boolean ) : ListVirtualGoodsRequest
		{
			this.data["includeDisabled"] = includeDisabled;
			return this;
		}



		/**
		* A filter to only include goods with the given tags. Each good must have all the provided tags.
		*/
		public function setTags( tags : Vector.<String> ) : ListVirtualGoodsRequest
		{
			this.data["tags"] = toArray(tags);
			return this;
		}
				
	}
	
}

