
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Consumes a given amount of the specified virtual good.
	*/
	public class ConsumeVirtualGoodRequest extends GSRequest
	{
	
		function ConsumeVirtualGoodRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ConsumeVirtualGoodRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ConsumeVirtualGoodRequest
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
						callback(new ConsumeVirtualGoodResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ConsumeVirtualGoodRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The amount of virtual goods to be consumed
		*/
		public function setQuantity( quantity : Number ) : ConsumeVirtualGoodRequest
		{
			this.data["quantity"] = quantity;
			return this;
		}



		/**
		* The short code of the virtual good to be consumed
		*/
		public function setShortCode( shortCode : String ) : ConsumeVirtualGoodRequest
		{
			this.data["shortCode"] = shortCode;
			return this;
		}
				
	}
	
}

