
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a Kongregate account to be used as an authentication mechanism.
	* Once authenticated the platform can determine the current players details from the Kongregate platform and store them within GameSparks.
	* If the Kongregate user is already linked to a player, the current session will switch to the linked player.
	* If the current player has previously created an account using either DeviceAuthentictionRequest or RegistrationRequest AND the Kongregate user is not already registered with the game, the Kongregate user will be linked to the current player.
	* If the current player has not authenticated and the Kongregate user is not known, a new player will be created using the Kongregate details and the session will be authenticated against the new player.
	* If the Kongregate user is already known, the session will switch to being the previously created user.
	*/
	public class KongregateConnectRequest extends GSRequest
	{
	
		function KongregateConnectRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".KongregateConnectRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):KongregateConnectRequest
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
		
	
		public function setScriptData(scriptData:Object):KongregateConnectRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* Indicates that the server should not try to link the external profile with the current player.  If false, links the external profile to the currently signed in player.  If true, creates a new player and links the external profile to them.  Defaults to false.
		*/
		public function setDoNotLinkToCurrentPlayer( doNotLinkToCurrentPlayer : Boolean ) : KongregateConnectRequest
		{
			this.data["doNotLinkToCurrentPlayer"] = doNotLinkToCurrentPlayer;
			return this;
		}


		/**
		* Indicates whether the server should return an error if an account switch would have occurred, rather than switching automatically.  Defaults to false.
		*/
		public function setErrorOnSwitch( errorOnSwitch : Boolean ) : KongregateConnectRequest
		{
			this.data["errorOnSwitch"] = errorOnSwitch;
			return this;
		}


		/**
		* The gameAuthToken, together with the userID are used by the client to make authenticated requests on behalf of the end user.
		*/
		public function setGameAuthToken( gameAuthToken : String ) : KongregateConnectRequest
		{
			this.data["gameAuthToken"] = gameAuthToken;
			return this;
		}



		/**
		* An optional segment configuration for this request.
		* If this request creates a new player on the gamesparks platform, the segments of the new player will match the values provided
		*/
		public function setSegments( segments : Object ) : KongregateConnectRequest
		{
			this.data["segments"] = segments;
			return this;
		}


		/**
		* Indicates that the server should switch to the supplied profile if it isalready associated to a player. Defaults to false.
		*/
		public function setSwitchIfPossible( switchIfPossible : Boolean ) : KongregateConnectRequest
		{
			this.data["switchIfPossible"] = switchIfPossible;
			return this;
		}


		/**
		* Indicates that the associated players displayName should be kept in syn with this profile when it's updated by the external provider.
		*/
		public function setSyncDisplayName( syncDisplayName : Boolean ) : KongregateConnectRequest
		{
			this.data["syncDisplayName"] = syncDisplayName;
			return this;
		}


		/**
		* The userID, together with the gameAuthToken are used by the client to make authenticated requests on behalf of the end user.
		*/
		public function setUserId( userId : String ) : KongregateConnectRequest
		{
			this.data["userId"] = userId;
			return this;
		}
				
	}
	
}

