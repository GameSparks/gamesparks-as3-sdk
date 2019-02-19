
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows either a Facebook access token, or a Facebook authorization code to be used as an authentication mechanism.
	* Once authenticated the platform can determine the current players details from the Facebook platform and store them within GameSparks.
	* GameSparks will determine the player's friends and whether any of them are currently registered with the game.
	* If the Facebook user is already linked to a player, the current session will switch to the linked player.
	* If the current player has previously created an account using either DeviceAuthenticationRequest or RegistrationRequest AND the Facebook user is not already registered with the game, the Facebook user will be linked to the current player.
	* If the current player has not authenticated and the Facebook user is not known, a new player will be created using the Facebook details and the session will be authenticated against the new player.
	* If the Facebook user is already known, the session will switch to being the previously created user.
	*/
	public class FacebookConnectRequest extends GSRequest
	{
	
		function FacebookConnectRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".FacebookConnectRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):FacebookConnectRequest
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
		
	
		public function setScriptData(scriptData:Object):FacebookConnectRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The access token is used by the client to make authenticated requests on behalf of the end user.
		* It has a longer lifetime than the authorization code, typically on the order of minutes or hours.
		* When the access token expires, attempts to use it will fail, and a new access token must be obtained via a refresh token.
		*/
		public function setAccessToken( accessToken : String ) : FacebookConnectRequest
		{
			this.data["accessToken"] = accessToken;
			return this;
		}


		/**
		* An authorization code is a short-lived token representing the user's access grant, created by the authorization server and passed to the client application via the browser.
		* The client application sends the authorization code to the authorization server to obtain an access token and, optionally, a refresh token.
		*/
		public function setCode( code : String ) : FacebookConnectRequest
		{
			this.data["code"] = code;
			return this;
		}


		/**
		* Indicates that the server should not try to link the external profile with the current player.  If false, links the external profile to the currently signed in player.  If true, creates a new player and links the external profile to them.  Defaults to false.
		*/
		public function setDoNotLinkToCurrentPlayer( doNotLinkToCurrentPlayer : Boolean ) : FacebookConnectRequest
		{
			this.data["doNotLinkToCurrentPlayer"] = doNotLinkToCurrentPlayer;
			return this;
		}


		/**
		* Indicates whether the server should return an error if an account switch would have occurred, rather than switching automatically.  Defaults to false.
		*/
		public function setErrorOnSwitch( errorOnSwitch : Boolean ) : FacebookConnectRequest
		{
			this.data["errorOnSwitch"] = errorOnSwitch;
			return this;
		}



		/**
		* An optional segment configuration for this request.
		* If this request creates a new player on the gamesparks platform, the segments of the new player will match the values provided
		*/
		public function setSegments( segments : Object ) : FacebookConnectRequest
		{
			this.data["segments"] = segments;
			return this;
		}


		/**
		* Indicates that the server should switch to the supplied profile if it isalready associated to a player. Defaults to false.
		*/
		public function setSwitchIfPossible( switchIfPossible : Boolean ) : FacebookConnectRequest
		{
			this.data["switchIfPossible"] = switchIfPossible;
			return this;
		}


		/**
		* Indicates that the associated players displayName should be kept in syn with this profile when it's updated by the external provider.
		*/
		public function setSyncDisplayName( syncDisplayName : Boolean ) : FacebookConnectRequest
		{
			this.data["syncDisplayName"] = syncDisplayName;
			return this;
		}
				
	}
	
}

