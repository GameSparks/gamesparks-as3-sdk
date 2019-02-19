
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns the full details of a message.
	*/
	public class GetMessageRequest extends GSRequest
	{
	
		function GetMessageRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GetMessageRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GetMessageRequest
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
						callback(new GetMessageResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):GetMessageRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The messageId of the message retreive
		*/
		public function setMessageId( messageId : String ) : GetMessageRequest
		{
			this.data["messageId"] = messageId;
			return this;
		}

				
	}
	
}

