
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Issues a challenge to a group of players from the currently signed in player.
	* The endTime field must be present unless the challenge template has an achievement set in the 'First to Achievement' field.
	* The usersToChallenge field must be present for this request if the acessType is PRIVATE (which is the default).
	*/
	public class CreateChallengeRequest extends GSRequest
	{
	
		function CreateChallengeRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".CreateChallengeRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):CreateChallengeRequest
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
						callback(new CreateChallengeResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):CreateChallengeRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* Who can join this challenge. Either PUBLIC, PRIVATE or FRIENDS
		*/
		public function setAccessType( accessType : String ) : CreateChallengeRequest
		{
			this.data["accessType"] = accessType;
			return this;
		}


		/**
		* Whether this challenge should automatically start when a new player joins and maxPlayers is reached
		*/
		public function setAutoStartJoinedChallengeOnMaxPlayers( autoStartJoinedChallengeOnMaxPlayers : Boolean ) : CreateChallengeRequest
		{
			this.data["autoStartJoinedChallengeOnMaxPlayers"] = autoStartJoinedChallengeOnMaxPlayers;
			return this;
		}


		/**
		* An optional message to include with the challenge
		*/
		public function setChallengeMessage( challengeMessage : String ) : CreateChallengeRequest
		{
			this.data["challengeMessage"] = challengeMessage;
			return this;
		}


		/**
		* The short code of the challenge
		*/
		public function setChallengeShortCode( challengeShortCode : String ) : CreateChallengeRequest
		{
			this.data["challengeShortCode"] = challengeShortCode;
			return this;
		}


		/**
		* The ammount of currency type 1 that the player is wagering on this challenge
		*/
		public function setCurrency1Wager( currency1Wager : Number ) : CreateChallengeRequest
		{
			this.data["currency1Wager"] = currency1Wager;
			return this;
		}


		/**
		* The amount of currency type 2 that the player is wagering on this challenge
		*/
		public function setCurrency2Wager( currency2Wager : Number ) : CreateChallengeRequest
		{
			this.data["currency2Wager"] = currency2Wager;
			return this;
		}


		/**
		* The amount of currency type 3 that the player is wagering on this challenge
		*/
		public function setCurrency3Wager( currency3Wager : Number ) : CreateChallengeRequest
		{
			this.data["currency3Wager"] = currency3Wager;
			return this;
		}


		/**
		* The amount of currency type 4 that the player is wagering on this challenge
		*/
		public function setCurrency4Wager( currency4Wager : Number ) : CreateChallengeRequest
		{
			this.data["currency4Wager"] = currency4Wager;
			return this;
		}


		/**
		* The amount of currency type 5 that the player is wagering on this challenge
		*/
		public function setCurrency5Wager( currency5Wager : Number ) : CreateChallengeRequest
		{
			this.data["currency5Wager"] = currency5Wager;
			return this;
		}


		/**
		* The amount of currency type 6 that the player is wagering on this challenge
		*/
		public function setCurrency6Wager( currency6Wager : Number ) : CreateChallengeRequest
		{
			this.data["currency6Wager"] = currency6Wager;
			return this;
		}


		/**
		* A JSON object containing the amounts of named currencies that the player is wagering on this challenge
		*/
		public function setCurrencyWagers( currencyWagers : Object ) : CreateChallengeRequest
		{
			this.data["currencyWagers"] = currencyWagers;
			return this;
		}


		/**
		* Criteria for who can and cannot find and join this challenge (when the accessType is PUBLIC or FRIENDS).
		* Currently supports a field <i>segments</i> that contains segment type against single (where that segment value is required) or multiple (where one of the specified values is required) segment values.
		* For each segment type a player must have one of the specified values in order to be considered eligible.
		*/
		public function setEligibilityCriteria( eligibilityCriteria : Object ) : CreateChallengeRequest
		{
			this.data["eligibilityCriteria"] = eligibilityCriteria;
			return this;
		}


		/**
		* The time at which this challenge will end
		*/
		public function setEndTime( endTime : Date ) : CreateChallengeRequest
		{
			this.data["endTime"] = dateToRFC3339(endTime);
			return this;
		}


		/**
		* The latest time that players can join this challenge
		*/
		public function setExpiryTime( expiryTime : Date ) : CreateChallengeRequest
		{
			this.data["expiryTime"] = dateToRFC3339(expiryTime);
			return this;
		}


		/**
		* The maximum number of attempts 
		*/
		public function setMaxAttempts( maxAttempts : Number ) : CreateChallengeRequest
		{
			this.data["maxAttempts"] = maxAttempts;
			return this;
		}


		/**
		* The maximum number of players that are allowed to join this challenge
		*/
		public function setMaxPlayers( maxPlayers : Number ) : CreateChallengeRequest
		{
			this.data["maxPlayers"] = maxPlayers;
			return this;
		}


		/**
		* The minimum number of players that are allowed to join this challenge
		*/
		public function setMinPlayers( minPlayers : Number ) : CreateChallengeRequest
		{
			this.data["minPlayers"] = minPlayers;
			return this;
		}



		/**
		* If True  no messaging is triggered
		*/
		public function setSilent( silent : Boolean ) : CreateChallengeRequest
		{
			this.data["silent"] = silent;
			return this;
		}


		/**
		* The time at which this challenge will begin
		*/
		public function setStartTime( startTime : Date ) : CreateChallengeRequest
		{
			this.data["startTime"] = dateToRFC3339(startTime);
			return this;
		}


		/**
		* A player id or an array of player ids who will recieve this challenge
		*/
		public function setUsersToChallenge( usersToChallenge : Vector.<String> ) : CreateChallengeRequest
		{
			this.data["usersToChallenge"] = toArray(usersToChallenge);
			return this;
		}
				
	}
	
}

