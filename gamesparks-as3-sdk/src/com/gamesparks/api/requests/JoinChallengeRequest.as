
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a player to join an open challenge.
	*/
	public class JoinChallengeRequest extends GSRequest
	{
	
		function JoinChallengeRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".JoinChallengeRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):JoinChallengeRequest
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
						callback(new JoinChallengeResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):JoinChallengeRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The ID of the challenge
		*/
		public function setChallengeInstanceId( challengeInstanceId : String ) : JoinChallengeRequest
		{
			this.data["challengeInstanceId"] = challengeInstanceId;
			return this;
		}


		/**
		* Optional.  Allows the current player's eligibility to be overridden by what is provided here.
		*/
		public function setEligibility( eligibility : Object ) : JoinChallengeRequest
		{
			this.data["eligibility"] = eligibility;
			return this;
		}


		/**
		* An optional message to send with the challenge
		*/
		public function setMessage( message : String ) : JoinChallengeRequest
		{
			this.data["message"] = message;
			return this;
		}

				
	}
	
}

