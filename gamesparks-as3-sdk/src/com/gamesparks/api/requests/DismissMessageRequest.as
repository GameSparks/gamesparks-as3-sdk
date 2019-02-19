
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a message to be dismissed. Once dismissed the message will no longer appear in either ListMessageResponse or ListMessageSummaryResponse.
	*/
	public class DismissMessageRequest extends GSRequest
	{
	
		function DismissMessageRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".DismissMessageRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):DismissMessageRequest
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
						callback(new DismissMessageResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):DismissMessageRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The messageId of the message to dismiss
		*/
		public function setMessageId( messageId : String ) : DismissMessageRequest
		{
			this.data["messageId"] = messageId;
			return this;
		}

				
	}
	
}

