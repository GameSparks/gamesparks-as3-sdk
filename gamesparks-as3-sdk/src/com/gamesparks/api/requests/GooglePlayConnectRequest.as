
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows either a Google Play access code or an access token to be used as an authentication mechanism.
	* The access code needs to have at least the https://www.googleapis.com/auth/games scope.
	* For more details about Google OAuth 2.0 scopes refer to this: https://developers.google.com/identity/protocols/googlescopes#gamesConfigurationv1configuration
	* If the Google Play user is already linked to a player, the current session will switch to the linked player.
	* If the current player has previously created an account using either DeviceAuthentictionRequest or RegistrationRequest AND the Google Play user is not already registered with the game, the Google Play user will be linked to the current player.
	* If the current player has not authenticated and the Google Play user is not known, a new player will be created using the Google Play details and the session will be authenticated against the new player.
	* If the Google Play user is already known, the session will switch to being the previously created user.
	*/
	public class GooglePlayConnectRequest extends GSRequest
	{
	
		function GooglePlayConnectRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GooglePlayConnectRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GooglePlayConnectRequest
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
		
	
		public function setScriptData(scriptData:Object):GooglePlayConnectRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The access token is used when using the service id and certificate.
		*/
		public function setAccessToken( accessToken : String ) : GooglePlayConnectRequest
		{
			this.data["accessToken"] = accessToken;
			return this;
		}


		/**
		* The access code is used by the client to make authenticated requests on behalf of the end user. Requires clientId and clientsecret to be set
		*/
		public function setCode( code : String ) : GooglePlayConnectRequest
		{
			this.data["code"] = code;
			return this;
		}


		/**
		* The display of the current player from Google Play. This will be used as the displayName of the gamesparks player if created (or syncDisplayname is true)
		*/
		public function setDisplayName( displayName : String ) : GooglePlayConnectRequest
		{
			this.data["displayName"] = displayName;
			return this;
		}


		/**
		* Indicates that the server should not try to link the external profile with the current player.  If false, links the external profile to the currently signed in player.  If true, creates a new player and links the external profile to them.  Defaults to false.
		*/
		public function setDoNotLinkToCurrentPlayer( doNotLinkToCurrentPlayer : Boolean ) : GooglePlayConnectRequest
		{
			this.data["doNotLinkToCurrentPlayer"] = doNotLinkToCurrentPlayer;
			return this;
		}


		/**
		* Indicates whether the server should return an error if an account switch would have occurred, rather than switching automatically.  Defaults to false.
		*/
		public function setErrorOnSwitch( errorOnSwitch : Boolean ) : GooglePlayConnectRequest
		{
			this.data["errorOnSwitch"] = errorOnSwitch;
			return this;
		}


		/**
		* Did you request the plus.login scope when you got the access code or authorisation token from Google? If this is true, we will fetch the user's google+ account and friends
		*/
		public function setGooglePlusScope( googlePlusScope : Boolean ) : GooglePlayConnectRequest
		{
			this.data["googlePlusScope"] = googlePlusScope;
			return this;
		}


		/**
		* Did you request the profile scope when you got the access code or authorisation token from Google? If this is true, we will fetch the user info by calling https://www.googleapis.com/oauth2/v1/userinfo?alt=json 
		*/
		public function setProfileScope( profileScope : Boolean ) : GooglePlayConnectRequest
		{
			this.data["profileScope"] = profileScope;
			return this;
		}


		/**
		* Only required when the access code has been granted using an explicit redirectUri, for example when using the mechanism described in https://developers.google.com/+/web/signin/server-side-flow
		*/
		public function setRedirectUri( redirectUri : String ) : GooglePlayConnectRequest
		{
			this.data["redirectUri"] = redirectUri;
			return this;
		}



		/**
		* An optional segment configuration for this request.
		* If this request creates a new player on the gamesparks platform, the segments of the new player will match the values provided
		*/
		public function setSegments( segments : Object ) : GooglePlayConnectRequest
		{
			this.data["segments"] = segments;
			return this;
		}


		/**
		* Indicates that the server should switch to the supplied profile if it isalready associated to a player. Defaults to false.
		*/
		public function setSwitchIfPossible( switchIfPossible : Boolean ) : GooglePlayConnectRequest
		{
			this.data["switchIfPossible"] = switchIfPossible;
			return this;
		}


		/**
		* Indicates that the associated players displayName should be kept in syn with this profile when it's updated by the external provider.
		*/
		public function setSyncDisplayName( syncDisplayName : Boolean ) : GooglePlayConnectRequest
		{
			this.data["syncDisplayName"] = syncDisplayName;
			return this;
		}
				
	}
	
}

