
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows an Nintendo Network Service Account (NSA) to be used as an authentication mechanism.
	* Once authenticated the platform can determine the current players details from the NSA and store them within GameSparks.
	* GameSparks will determine the player's friends and whether any of them are currently registered with the game.
	* If the NSA is already linked to a player, the current session will switch to the linked player.
	* If the current player has previously created an account using either DeviceAuthentictionRequest or RegistrationRequest AND the NSA is not already registered with the game, the NSA will be linked to the current player.
	* If the current player has not authenticated and the NSA is not known, a new player will be created using the NSA details and the session will be authenticated against the new player.
	* If the NSA is already known, the session will switch to being the previously created user.
	*/
	public class NXConnectRequest extends GSRequest
	{
	
		function NXConnectRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".NXConnectRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):NXConnectRequest
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
		
	
		public function setScriptData(scriptData:Object):NXConnectRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* Whether to create one GameSparks player per console login ID
		*/
		public function setAccountPerLoginId( accountPerLoginId : Boolean ) : NXConnectRequest
		{
			this.data["accountPerLoginId"] = accountPerLoginId;
			return this;
		}


		/**
		* The display name of the current player from NX. This will be used as the displayName of the gamesparks player if created (or syncDisplayname is true)
		*/
		public function setDisplayName( displayName : String ) : NXConnectRequest
		{
			this.data["displayName"] = displayName;
			return this;
		}


		/**
		* Indicates that the server should not try to link the external profile with the current player.  If false, links the external profile to the currently signed in player.  If true, creates a new player and links the external profile to them.  Defaults to false.
		*/
		public function setDoNotLinkToCurrentPlayer( doNotLinkToCurrentPlayer : Boolean ) : NXConnectRequest
		{
			this.data["doNotLinkToCurrentPlayer"] = doNotLinkToCurrentPlayer;
			return this;
		}


		/**
		* Indicates whether the server should return an error if an account switch would have occurred, rather than switching automatically.  Defaults to false.
		*/
		public function setErrorOnSwitch( errorOnSwitch : Boolean ) : NXConnectRequest
		{
			this.data["errorOnSwitch"] = errorOnSwitch;
			return this;
		}


		/**
		* The NSA ID token obtained from Nintendo
		*/
		public function setNsaIdToken( nsaIdToken : String ) : NXConnectRequest
		{
			this.data["nsaIdToken"] = nsaIdToken;
			return this;
		}



		/**
		* An optional segment configuration for this request.
		* If this request creates a new player on the gamesparks platform, the segments of the new player will match the values provided
		*/
		public function setSegments( segments : Object ) : NXConnectRequest
		{
			this.data["segments"] = segments;
			return this;
		}


		/**
		* Indicates that the server should switch to the supplied profile if it isalready associated to a player. Defaults to false.
		*/
		public function setSwitchIfPossible( switchIfPossible : Boolean ) : NXConnectRequest
		{
			this.data["switchIfPossible"] = switchIfPossible;
			return this;
		}


		/**
		* Indicates that the associated players displayName should be kept in syn with this profile when it's updated by the external provider.
		*/
		public function setSyncDisplayName( syncDisplayName : Boolean ) : NXConnectRequest
		{
			this.data["syncDisplayName"] = syncDisplayName;
			return this;
		}
				
	}
	
}

