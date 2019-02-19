
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Retrieves the details of the current authenticated player.
	*/
	public class AccountDetailsRequest extends GSRequest
	{
	
		function AccountDetailsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".AccountDetailsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):AccountDetailsRequest
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
						callback(new AccountDetailsResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):AccountDetailsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	


				
	}
	
}

