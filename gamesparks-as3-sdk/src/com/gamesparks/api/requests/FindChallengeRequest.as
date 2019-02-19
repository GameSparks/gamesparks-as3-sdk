
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a player to find challenges that they are eligible to join.
	*/
	public class FindChallengeRequest extends GSRequest
	{
	
		function FindChallengeRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".FindChallengeRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):FindChallengeRequest
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
						callback(new FindChallengeResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):FindChallengeRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The type of challenge to find, either PUBLIC or FRIENDS.  Defaults to FRIENDS
		*/
		public function setAccessType( accessType : String ) : FindChallengeRequest
		{
			this.data["accessType"] = accessType;
			return this;
		}


		/**
		* The number of challenges to return (MAX=50)
		*/
		public function setCount( count : Number ) : FindChallengeRequest
		{
			this.data["count"] = count;
			return this;
		}


		/**
		* Optional.  Allows the current player's eligibility to be overridden by what is provided here.
		*/
		public function setEligibility( eligibility : Object ) : FindChallengeRequest
		{
			this.data["eligibility"] = eligibility;
			return this;
		}


		/**
		* The offset to start from when returning challenges (used for paging)
		*/
		public function setOffset( offset : Number ) : FindChallengeRequest
		{
			this.data["offset"] = offset;
			return this;
		}



		/**
		* Optional shortCodes to filter the results by challenge type
		*/
		public function setShortCode( shortCode : Vector.<String> ) : FindChallengeRequest
		{
			this.data["shortCode"] = toArray(shortCode);
			return this;
		}
				
	}
	
}

