
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Sends a message to all players involved in the challenge. The current player must be involved in the challenge for the message to be sent.
	* As the message is sent to all players, the current player will also see details of the message in the response. Read the section on response message aggregation for a description of this.
	*/
	public class ChatOnChallengeRequest extends GSRequest
	{
	
		function ChatOnChallengeRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ChatOnChallengeRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ChatOnChallengeRequest
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
						callback(new ChatOnChallengeResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ChatOnChallengeRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The ID of the challenge
		*/
		public function setChallengeInstanceId( challengeInstanceId : String ) : ChatOnChallengeRequest
		{
			this.data["challengeInstanceId"] = challengeInstanceId;
			return this;
		}


		/**
		* An optional message to send with the challenge
		*/
		public function setMessage( message : String ) : ChatOnChallengeRequest
		{
			this.data["message"] = message;
			return this;
		}

				
	}
	
}

