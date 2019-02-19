
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows multiple messages to be dismissed. Once dismissed the messages will no longer appear in either ListMessageResponse or ListMessageSummaryResponse.
	*/
	public class DismissMultipleMessagesRequest extends GSRequest
	{
	
		function DismissMultipleMessagesRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".DismissMultipleMessagesRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):DismissMultipleMessagesRequest
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
						callback(new DismissMultipleMessagesResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):DismissMultipleMessagesRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The list of the messageIds to dismiss
		*/
		public function setMessageIds( messageIds : Vector.<String> ) : DismissMultipleMessagesRequest
		{
			this.data["messageIds"] = toArray(messageIds);
			return this;
		}

				
	}
	
}

