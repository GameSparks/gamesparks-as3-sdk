
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Gets the details of a challenge. The current player must be involved in the challenge for the request to succeed.
	*/
	public class GetChallengeRequest extends GSRequest
	{
	
		function GetChallengeRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GetChallengeRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GetChallengeRequest
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
						callback(new GetChallengeResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):GetChallengeRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The ID of the challenge
		*/
		public function setChallengeInstanceId( challengeInstanceId : String ) : GetChallengeRequest
		{
			this.data["challengeInstanceId"] = challengeInstanceId;
			return this;
		}


		/**
		* An optional message to send with the challenge
		*/
		public function setMessage( message : String ) : GetChallengeRequest
		{
			this.data["message"] = message;
			return this;
		}

				
	}
	
}

