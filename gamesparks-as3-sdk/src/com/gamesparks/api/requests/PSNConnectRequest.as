
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a PSN account to be used as an authentication mechanism.
	* Once authenticated the platform can determine the current players details from the PSN platform and store them within GameSparks.
	* GameSparks will determine the player's friends and whether any of them are currently registered with the game.
	* If the PSN user is already linked to a player, the current session will switch to the linked player.
	* If the current player has previously created an account using either DeviceAuthentictionRequest or RegistrationRequest AND the PSN user is not already registered with the game, the PSN user will be linked to the current player.
	* If the current player has not authenticated and the PSN user is not known, a new player will be created using the PSN details and the session will be authenticated against the new player.
	* If the PSN user is already known, the session will switch to being the previously created user.
	*/
	public class PSNConnectRequest extends GSRequest
	{
	
		function PSNConnectRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".PSNConnectRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):PSNConnectRequest
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
		
	
		public function setScriptData(scriptData:Object):PSNConnectRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The authorization code obtained from PSN, as described here https://ps4.scedev.net/resources/documents/SDK/latest/NpAuth-Reference/0008.html
		*/
		public function setAuthorizationCode( authorizationCode : String ) : PSNConnectRequest
		{
			this.data["authorizationCode"] = authorizationCode;
			return this;
		}


		/**
		* Indicates that the server should not try to link the external profile with the current player.  If false, links the external profile to the currently signed in player.  If true, creates a new player and links the external profile to them.  Defaults to false.
		*/
		public function setDoNotLinkToCurrentPlayer( doNotLinkToCurrentPlayer : Boolean ) : PSNConnectRequest
		{
			this.data["doNotLinkToCurrentPlayer"] = doNotLinkToCurrentPlayer;
			return this;
		}


		/**
		* Indicates whether the server should return an error if an account switch would have occurred, rather than switching automatically.  Defaults to false.
		*/
		public function setErrorOnSwitch( errorOnSwitch : Boolean ) : PSNConnectRequest
		{
			this.data["errorOnSwitch"] = errorOnSwitch;
			return this;
		}


		/**
		* When using the authorization code obtained from PlayStation®4/PlayStation®Vita/PlayStation®3, this is not required.
		* When using the authorization code obtained with the PC authentication gateway, set the URI issued from the Developer Network website.
		*/
		public function setRedirectUri( redirectUri : String ) : PSNConnectRequest
		{
			this.data["redirectUri"] = redirectUri;
			return this;
		}



		/**
		* An optional segment configuration for this request.
		* If this request creates a new player on the gamesparks platform, the segments of the new player will match the values provided
		*/
		public function setSegments( segments : Object ) : PSNConnectRequest
		{
			this.data["segments"] = segments;
			return this;
		}


		/**
		* Indicates that the server should switch to the supplied profile if it isalready associated to a player. Defaults to false.
		*/
		public function setSwitchIfPossible( switchIfPossible : Boolean ) : PSNConnectRequest
		{
			this.data["switchIfPossible"] = switchIfPossible;
			return this;
		}


		/**
		* Indicates that the associated players displayName should be kept in syn with this profile when it's updated by the external provider.
		*/
		public function setSyncDisplayName( syncDisplayName : Boolean ) : PSNConnectRequest
		{
			this.data["syncDisplayName"] = syncDisplayName;
			return this;
		}
				
	}
	
}

