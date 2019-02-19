
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns detials of the current social connections of this player. Each connection .
	*/
	public class SocialStatusRequest extends GSRequest
	{
	
		function SocialStatusRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".SocialStatusRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):SocialStatusRequest
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
						callback(new SocialStatusResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):SocialStatusRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	


				
	}
	
}

