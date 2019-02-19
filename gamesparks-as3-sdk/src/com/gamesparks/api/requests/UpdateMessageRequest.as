
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a message status to be updated.
	*/
	public class UpdateMessageRequest extends GSRequest
	{
	
		function UpdateMessageRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".UpdateMessageRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):UpdateMessageRequest
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
						callback(new UpdateMessageResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):UpdateMessageRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The messageId of the message to update
		*/
		public function setMessageId( messageId : String ) : UpdateMessageRequest
		{
			this.data["messageId"] = messageId;
			return this;
		}



		/**
		* The status to set on the message
		*/
		public function setStatus( status : String ) : UpdateMessageRequest
		{
			this.data["status"] = status;
			return this;
		}
				
	}
	
}

