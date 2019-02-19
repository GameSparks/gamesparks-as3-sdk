
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows an Apple account that has GameCenter to be used as an authentication mechanism.
	* The request must supply the GameCenter user details, such as the player id and username.
	* If the GameCenter user is already linked to a player, the current session will switch to the linked player.
	* If the current player has previously created an account using either DeviceAuthentictionRequest or RegistrationRequest AND the GameCenter user is not already registered with the game, the GameCenter user will be linked to the current player.
	* If the current player has not authenticated and the GameCenter user is not known, a new player will be created using the GameCenter details and the session will be authenticated against the new player.
	* If the GameCenter user is already known, the session will switch to being the previously created user.
	* This API call requires the output details from GKLocalPlayer.generateIdentityVerificationSignatureWithCompletionHandler on your iOS device
	*/
	public class GameCenterConnectRequest extends GSRequest
	{
	
		function GameCenterConnectRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GameCenterConnectRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GameCenterConnectRequest
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
		
	
		public function setScriptData(scriptData:Object):GameCenterConnectRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The display of the current player from GameCenter. This will be used as the displayName of the gamesparks player if created (or syncDisplayname is true)
		*/
		public function setDisplayName( displayName : String ) : GameCenterConnectRequest
		{
			this.data["displayName"] = displayName;
			return this;
		}


		/**
		* Indicates that the server should not try to link the external profile with the current player.  If false, links the external profile to the currently signed in player.  If true, creates a new player and links the external profile to them.  Defaults to false.
		*/
		public function setDoNotLinkToCurrentPlayer( doNotLinkToCurrentPlayer : Boolean ) : GameCenterConnectRequest
		{
			this.data["doNotLinkToCurrentPlayer"] = doNotLinkToCurrentPlayer;
			return this;
		}


		/**
		* Indicates whether the server should return an error if an account switch would have occurred, rather than switching automatically.  Defaults to false.
		*/
		public function setErrorOnSwitch( errorOnSwitch : Boolean ) : GameCenterConnectRequest
		{
			this.data["errorOnSwitch"] = errorOnSwitch;
			return this;
		}


		/**
		* The game center id of the current player. This value obtained be obtained from GKLocalPlayer playerID
		*/
		public function setExternalPlayerId( externalPlayerId : String ) : GameCenterConnectRequest
		{
			this.data["externalPlayerId"] = externalPlayerId;
			return this;
		}


		/**
		* The url from where we will download the public key. This value should be obtained from generateIdentityVerificationSignatureWithCompletionHandler. 
		*/
		public function setPublicKeyUrl( publicKeyUrl : String ) : GameCenterConnectRequest
		{
			this.data["publicKeyUrl"] = publicKeyUrl;
			return this;
		}



		/**
		* The salt is needed in order to prevent request forgery. This value should be obtained from generateIdentityVerificationSignatureWithCompletionHandler and should be base64 encoded using [salt base64Encoding]
		*/
		public function setSalt( salt : String ) : GameCenterConnectRequest
		{
			this.data["salt"] = salt;
			return this;
		}


		/**
		* An optional segment configuration for this request.
		* If this request creates a new player on the gamesparks platform, the segments of the new player will match the values provided
		*/
		public function setSegments( segments : Object ) : GameCenterConnectRequest
		{
			this.data["segments"] = segments;
			return this;
		}


		/**
		* The signature is needed to validate that the request is genuine and that we can save the player. This value should be obtained from generateIdentityVerificationSignatureWithCompletionHandler and should be base64 encoded using [signature base64Encoding]
		*/
		public function setSignature( signature : String ) : GameCenterConnectRequest
		{
			this.data["signature"] = signature;
			return this;
		}


		/**
		* Indicates that the server should switch to the supplied profile if it isalready associated to a player. Defaults to false.
		*/
		public function setSwitchIfPossible( switchIfPossible : Boolean ) : GameCenterConnectRequest
		{
			this.data["switchIfPossible"] = switchIfPossible;
			return this;
		}


		/**
		* Indicates that the associated players displayName should be kept in syn with this profile when it's updated by the external provider.
		*/
		public function setSyncDisplayName( syncDisplayName : Boolean ) : GameCenterConnectRequest
		{
			this.data["syncDisplayName"] = syncDisplayName;
			return this;
		}


		/**
		* The timestamp is needed to validate the request signature. This value should be obtained from generateIdentityVerificationSignatureWithCompletionHandler
		*/
		public function setTimestamp( timestamp : Number ) : GameCenterConnectRequest
		{
			this.data["timestamp"] = timestamp;
			return this;
		}
				
	}
	
}

