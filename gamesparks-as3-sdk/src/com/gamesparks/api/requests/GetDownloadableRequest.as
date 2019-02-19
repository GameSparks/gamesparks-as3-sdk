
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns a secure, time sensitive url to allow the game to download a piece of downloadable content stored in the GameSparks platform.
	*/
	public class GetDownloadableRequest extends GSRequest
	{
	
		function GetDownloadableRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GetDownloadableRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GetDownloadableRequest
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
						callback(new GetDownloadableResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):GetDownloadableRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	




		/**
		* The short code of the Downloadable item
		*/
		public function setShortCode( shortCode : String ) : GetDownloadableRequest
		{
			this.data["shortCode"] = shortCode;
			return this;
		}
				
	}
	
}

