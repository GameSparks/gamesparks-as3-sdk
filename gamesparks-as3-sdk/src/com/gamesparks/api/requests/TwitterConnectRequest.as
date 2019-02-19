
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a Twitter account to be used as an authentication mechanism.
	* Once authenticated the platform can determine the current players details from the Twitter platform and store them within GameSparks.
	* GameSparks will determine the player's friends and whether any of them are currently registered with the game.
	* If the Twitter user is already linked to a player, the current session will switch to the linked player.
	* If the current player has previously created an account using either DeviceAuthentictionRequest or RegistrationRequest AND the Twitter user is not already registered with the game, the Twitter user will be linked to the current player.
	* If the current player has not authenticated and the Twitter user is not known, a new player will be created using the Twitter details and the session will be authenticated against the new player.
	* If the Twitter user is already known, the session will switch to being the previously created user.
	*/
	public class TwitterConnectRequest extends GSRequest
	{
	
		function TwitterConnectRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".TwitterConnectRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):TwitterConnectRequest
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
						callback(new AuthenticationResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):TwitterConnectRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The accessSecret is obtained at the same time as the accessToken, and is required to sign requests to Twitter's services that require the accessToken.
		*/
		public function setAccessSecret( accessSecret : String ) : TwitterConnectRequest
		{
			this.data["accessSecret"] = accessSecret;
			return this;
		}


		/**
		* The accessToken represents a player's permission to share access to their account with your application.
		* To obtain an accessToken for the player see https://dev.twitter.com/docs/auth/obtaining-access-tokens.
		* Currently, Twitter accessTokens do not expire but they can be revoked by the player.
		*/
		public function setAccessToken( accessToken : String ) : TwitterConnectRequest
		{
			this.data["accessToken"] = accessToken;
			return this;
		}


		/**
		* Indicates that the server should not try to link the external profile with the current player.  If false, links the external profile to the currently signed in player.  If true, creates a new player and links the external profile to them.  Defaults to false.
		*/
		public function setDoNotLinkToCurrentPlayer( doNotLinkToCurrentPlayer : Boolean ) : TwitterConnectRequest
		{
			this.data["doNotLinkToCurrentPlayer"] = doNotLinkToCurrentPlayer;
			return this;
		}


		/**
		* Indicates whether the server should return an error if an account switch would have occurred, rather than switching automatically.  Defaults to false.
		*/
		public function setErrorOnSwitch( errorOnSwitch : Boolean ) : TwitterConnectRequest
		{
			this.data["errorOnSwitch"] = errorOnSwitch;
			return this;
		}



		/**
		* An optional segment configuration for this request.
		* If this request creates a new player on the gamesparks platform, the segments of the new player will match the values provided
		*/
		public function setSegments( segments : Object ) : TwitterConnectRequest
		{
			this.data["segments"] = segments;
			return this;
		}


		/**
		* Indicates that the server should switch to the supplied profile if it isalready associated to a player. Defaults to false.
		*/
		public function setSwitchIfPossible( switchIfPossible : Boolean ) : TwitterConnectRequest
		{
			this.data["switchIfPossible"] = switchIfPossible;
			return this;
		}


		/**
		* Indicates that the associated players displayName should be kept in syn with this profile when it's updated by the external provider.
		*/
		public function setSyncDisplayName( syncDisplayName : Boolean ) : TwitterConnectRequest
		{
			this.data["syncDisplayName"] = syncDisplayName;
			return this;
		}
				
	}
	
}

