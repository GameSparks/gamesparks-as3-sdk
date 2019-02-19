
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Accepts a challenge that has been issued to the current player.
	*/
	public class AcceptChallengeRequest extends GSRequest
	{
	
		function AcceptChallengeRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".AcceptChallengeRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):AcceptChallengeRequest
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
						callback(new AcceptChallengeResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):AcceptChallengeRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The ID of the challenge
		*/
		public function setChallengeInstanceId( challengeInstanceId : String ) : AcceptChallengeRequest
		{
			this.data["challengeInstanceId"] = challengeInstanceId;
			return this;
		}


		/**
		* An optional message to send with the challenge
		*/
		public function setMessage( message : String ) : AcceptChallengeRequest
		{
			this.data["message"] = message;
			return this;
		}

				
	}
	
}

