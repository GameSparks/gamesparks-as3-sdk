
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows an Xbox Live Shared Token String to be used as an authentication mechanism.
	* Once authenticated the platform can determine the current players details from the Xbox Live and store them within GameSparks.
	* GameSparks will determine the player's friends and whether any of them are currently registered with the game.
	* If the Xbox user is already linked to a player, the current session will switch to the linked player.
	* If the current player has previously created an account using either DeviceAuthentictionRequest or RegistrationRequest AND the Xbox user is not already registered with the game, the Xbox user will be linked to the current player.
	* If the current player has not authenticated and the Xbox user is not known, a new player will be created using the Xbox details and the session will be authenticated against the new player.
	* If the Xbox user is already known, the session will switch to being the previously created user.
	*/
	public class XBOXLiveConnectRequest extends GSRequest
	{
	
		function XBOXLiveConnectRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".XBOXLiveConnectRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):XBOXLiveConnectRequest
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
		
	
		public function setScriptData(scriptData:Object):XBOXLiveConnectRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The displayName to set for the player in GameSparks
		*/
		public function setDisplayName( displayName : String ) : XBOXLiveConnectRequest
		{
			this.data["displayName"] = displayName;
			return this;
		}


		/**
		* Indicates that the server should not try to link the external profile with the current player.  If false, links the external profile to the currently signed in player.  If true, creates a new player and links the external profile to them.  Defaults to false.
		*/
		public function setDoNotLinkToCurrentPlayer( doNotLinkToCurrentPlayer : Boolean ) : XBOXLiveConnectRequest
		{
			this.data["doNotLinkToCurrentPlayer"] = doNotLinkToCurrentPlayer;
			return this;
		}


		/**
		* Indicates whether the server should return an error if an account switch would have occurred, rather than switching automatically.  Defaults to false.
		*/
		public function setErrorOnSwitch( errorOnSwitch : Boolean ) : XBOXLiveConnectRequest
		{
			this.data["errorOnSwitch"] = errorOnSwitch;
			return this;
		}



		/**
		* An optional segment configuration for this request.
		* If this request creates a new player on the gamesparks platform, the segments of the new player will match the values provided
		*/
		public function setSegments( segments : Object ) : XBOXLiveConnectRequest
		{
			this.data["segments"] = segments;
			return this;
		}


		/**
		* The access token is used by the client to make authenticated requests on behalf of the end user.
		* It has a longer lifetime than the authorization code, typically on the order of minutes or hours.
		* When the access token expires, attempts to use it will fail, and a new access token must be obtained via a refresh token.
		*/
		public function setStsTokenString( stsTokenString : String ) : XBOXLiveConnectRequest
		{
			this.data["stsTokenString"] = stsTokenString;
			return this;
		}


		/**
		* Indicates that the server should switch to the supplied profile if it isalready associated to a player. Defaults to false.
		*/
		public function setSwitchIfPossible( switchIfPossible : Boolean ) : XBOXLiveConnectRequest
		{
			this.data["switchIfPossible"] = switchIfPossible;
			return this;
		}


		/**
		* Indicates that the associated players displayName should be kept in syn with this profile when it's updated by the external provider.
		*/
		public function setSyncDisplayName( syncDisplayName : Boolean ) : XBOXLiveConnectRequest
		{
			this.data["syncDisplayName"] = syncDisplayName;
			return this;
		}
				
	}
	
}

