
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows either a Google Plus access code or an authentication token to be used as an authentication mechanism.
	* Once authenticated the platform can determine the current players details from the Google Plus platform and store them within GameSparks.
	* GameSparks will determine the player's friends and whether any of them are currently registered with the game.
	* If the Google Plus user is already linked to a player, the current session will switch to the linked player.
	* If the current player has previously created an account using either DeviceAuthentictionRequest or RegistrationRequest AND the Google Plus user is not already registered with the game, the Google Plus user will be linked to the current player.
	* If the current player has not authenticated and the Google Plus user is not known, a new player will be created using the Google Plus details and the session will be authenticated against the new player.
	* If the Google Plus user is already known, the session will switch to being the previously created user.
	*/
	public class GooglePlusConnectRequest extends GSRequest
	{
	
		function GooglePlusConnectRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GooglePlusConnectRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GooglePlusConnectRequest
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
		
	
		public function setScriptData(scriptData:Object):GooglePlusConnectRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The access token is used when using the service id and certificate.
		*/
		public function setAccessToken( accessToken : String ) : GooglePlusConnectRequest
		{
			this.data["accessToken"] = accessToken;
			return this;
		}


		/**
		* The access code is used by the client to make authenticated requests on behalf of the end user. Requires clientId and clientsecret to be set
		*/
		public function setCode( code : String ) : GooglePlusConnectRequest
		{
			this.data["code"] = code;
			return this;
		}


		/**
		* Indicates that the server should not try to link the external profile with the current player.  If false, links the external profile to the currently signed in player.  If true, creates a new player and links the external profile to them.  Defaults to false.
		*/
		public function setDoNotLinkToCurrentPlayer( doNotLinkToCurrentPlayer : Boolean ) : GooglePlusConnectRequest
		{
			this.data["doNotLinkToCurrentPlayer"] = doNotLinkToCurrentPlayer;
			return this;
		}


		/**
		* Indicates whether the server should return an error if an account switch would have occurred, rather than switching automatically.  Defaults to false.
		*/
		public function setErrorOnSwitch( errorOnSwitch : Boolean ) : GooglePlusConnectRequest
		{
			this.data["errorOnSwitch"] = errorOnSwitch;
			return this;
		}


		/**
		* Only required when the access code has been granted using an explicit redirectUri, for example when using the mechanism described in https://developers.google.com/+/web/signin/server-side-flow
		*/
		public function setRedirectUri( redirectUri : String ) : GooglePlusConnectRequest
		{
			this.data["redirectUri"] = redirectUri;
			return this;
		}



		/**
		* An optional segment configuration for this request.
		* If this request creates a new player on the gamesparks platform, the segments of the new player will match the values provided
		*/
		public function setSegments( segments : Object ) : GooglePlusConnectRequest
		{
			this.data["segments"] = segments;
			return this;
		}


		/**
		* Indicates that the server should switch to the supplied profile if it isalready associated to a player. Defaults to false.
		*/
		public function setSwitchIfPossible( switchIfPossible : Boolean ) : GooglePlusConnectRequest
		{
			this.data["switchIfPossible"] = switchIfPossible;
			return this;
		}


		/**
		* Indicates that the associated players displayName should be kept in syn with this profile when it's updated by the external provider.
		*/
		public function setSyncDisplayName( syncDisplayName : Boolean ) : GooglePlusConnectRequest
		{
			this.data["syncDisplayName"] = syncDisplayName;
			return this;
		}
				
	}
	
}

