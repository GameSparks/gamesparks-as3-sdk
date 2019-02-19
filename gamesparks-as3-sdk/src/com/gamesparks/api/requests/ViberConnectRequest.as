
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a Viber account to be used as an authentication mechanism.
	* Once authenticated the platform can determine the current players details from the Viber platform and store them within GameSparks.
	* A successful authentication will also register the player to receive Viber push notifications.
	* GameSparks will determine the player's friends and whether any of them are currently registered with the game.
	* If the Viber user is already linked to a player, the current session will switch to the linked player.
	* If the current player has previously created an account using either DeviceAuthentictionRequest or RegistrationRequest AND the Viber user is not already registered with the game, the Viber user will be linked to the current player.
	* If the current player has not authenticated and the Viber user is not known, a new player will be created using the Viber details and the session will be authenticated against the new player.
	* If the Viber user is already known, the session will switch to being the previously created user.
	*/
	public class ViberConnectRequest extends GSRequest
	{
	
		function ViberConnectRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ViberConnectRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ViberConnectRequest
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
		
	
		public function setScriptData(scriptData:Object):ViberConnectRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The accessToken represents a player's permission to share access to their account with your application.
		*/
		public function setAccessToken( accessToken : String ) : ViberConnectRequest
		{
			this.data["accessToken"] = accessToken;
			return this;
		}


		/**
		* Indicates that the server should not try to link the external profile with the current player.  If false, links the external profile to the currently signed in player.  If true, creates a new player and links the external profile to them.  Defaults to false.
		*/
		public function setDoNotLinkToCurrentPlayer( doNotLinkToCurrentPlayer : Boolean ) : ViberConnectRequest
		{
			this.data["doNotLinkToCurrentPlayer"] = doNotLinkToCurrentPlayer;
			return this;
		}


		/**
		* Does not automatocally register this user for push notifications. Defaults to false.
		*/
		public function setDoNotRegisterForPush( doNotRegisterForPush : Boolean ) : ViberConnectRequest
		{
			this.data["doNotRegisterForPush"] = doNotRegisterForPush;
			return this;
		}


		/**
		* Indicates whether the server should return an error if an account switch would have occurred, rather than switching automatically.  Defaults to false.
		*/
		public function setErrorOnSwitch( errorOnSwitch : Boolean ) : ViberConnectRequest
		{
			this.data["errorOnSwitch"] = errorOnSwitch;
			return this;
		}



		/**
		* An optional segment configuration for this request.
		* If this request creates a new player on the gamesparks platform, the segments of the new player will match the values provided
		*/
		public function setSegments( segments : Object ) : ViberConnectRequest
		{
			this.data["segments"] = segments;
			return this;
		}


		/**
		* Indicates that the server should switch to the supplied profile if it isalready associated to a player. Defaults to false.
		*/
		public function setSwitchIfPossible( switchIfPossible : Boolean ) : ViberConnectRequest
		{
			this.data["switchIfPossible"] = switchIfPossible;
			return this;
		}


		/**
		* Indicates that the associated players displayName should be kept in syn with this profile when it's updated by the external provider.
		*/
		public function setSyncDisplayName( syncDisplayName : Boolean ) : ViberConnectRequest
		{
			this.data["syncDisplayName"] = syncDisplayName;
			return this;
		}
				
	}
	
}

