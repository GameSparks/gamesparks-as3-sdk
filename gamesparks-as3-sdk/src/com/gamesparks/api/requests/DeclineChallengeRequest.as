
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Declines a challenge that has been issued to the current player.
	*/
	public class DeclineChallengeRequest extends GSRequest
	{
	
		function DeclineChallengeRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".DeclineChallengeRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):DeclineChallengeRequest
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
						callback(new DeclineChallengeResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):DeclineChallengeRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The ID of the challenge
		*/
		public function setChallengeInstanceId( challengeInstanceId : String ) : DeclineChallengeRequest
		{
			this.data["challengeInstanceId"] = challengeInstanceId;
			return this;
		}


		/**
		* An optional message to send with the challenge
		*/
		public function setMessage( message : String ) : DeclineChallengeRequest
		{
			this.data["message"] = message;
			return this;
		}

				
	}
	
}

