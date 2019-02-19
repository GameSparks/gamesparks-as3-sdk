
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Withdraws a challenge previously issued by the current player.
	* This can only be done while the challenge is in the ISSUED state. Once it's been accepted the challenge can not be withdrawn.
	*/
	public class WithdrawChallengeRequest extends GSRequest
	{
	
		function WithdrawChallengeRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".WithdrawChallengeRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):WithdrawChallengeRequest
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
						callback(new WithdrawChallengeResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):WithdrawChallengeRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The ID of the challenge
		*/
		public function setChallengeInstanceId( challengeInstanceId : String ) : WithdrawChallengeRequest
		{
			this.data["challengeInstanceId"] = challengeInstanceId;
			return this;
		}


		/**
		* An optional message to send with the challenge
		*/
		public function setMessage( message : String ) : WithdrawChallengeRequest
		{
			this.data["message"] = message;
			return this;
		}

				
	}
	
}

