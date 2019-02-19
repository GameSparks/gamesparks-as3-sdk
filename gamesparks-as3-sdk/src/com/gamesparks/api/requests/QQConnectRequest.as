
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a QQ access token to be used as an authentication mechanism.
	* Once authenticated the platform can determine the current players details from the QQ platform and store them within GameSparks.
	* If the QQ user is already linked to a player, the current session will switch to the linked player.
	* If the current player has previously created an account using either DeviceAuthenticationRequest or RegistrationRequest AND the QQ user is not already registered with the game, the QQ user will be linked to the current player.
	* If the current player has not authenticated and the QQ user is not known, a new player will be created using the QQ details and the session will be authenticated against the new player.
	* If the QQ user is already known, the session will switch to being the previously created user.
	*/
	public class QQConnectRequest extends GSRequest
	{
	
		function QQConnectRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".QQConnectRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):QQConnectRequest
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
		
	
		public function setScriptData(scriptData:Object):QQConnectRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The access token is used by the client to make authenticated requests on behalf of the end user.
		* When the access token expires, attempts to use it will fail, and a new access token must be obtained using the refresh token.
		*/
		public function setAccessToken( accessToken : String ) : QQConnectRequest
		{
			this.data["accessToken"] = accessToken;
			return this;
		}


		/**
		* Indicates that the server should not try to link the external profile with the current player.  If false, links the external profile to the currently signed in player.  If true, creates a new player and links the external profile to them.  Defaults to false.
		*/
		public function setDoNotLinkToCurrentPlayer( doNotLinkToCurrentPlayer : Boolean ) : QQConnectRequest
		{
			this.data["doNotLinkToCurrentPlayer"] = doNotLinkToCurrentPlayer;
			return this;
		}


		/**
		* Indicates whether the server should return an error if an account switch would have occurred, rather than switching automatically.  Defaults to false.
		*/
		public function setErrorOnSwitch( errorOnSwitch : Boolean ) : QQConnectRequest
		{
			this.data["errorOnSwitch"] = errorOnSwitch;
			return this;
		}



		/**
		* An optional segment configuration for this request.
		* If this request creates a new player on the gamesparks platform, the segments of the new player will match the values provided
		*/
		public function setSegments( segments : Object ) : QQConnectRequest
		{
			this.data["segments"] = segments;
			return this;
		}


		/**
		* Indicates that the server should switch to the supplied profile if it isalready associated to a player. Defaults to false.
		*/
		public function setSwitchIfPossible( switchIfPossible : Boolean ) : QQConnectRequest
		{
			this.data["switchIfPossible"] = switchIfPossible;
			return this;
		}


		/**
		* Indicates that the associated players displayName should be kept in syn with this profile when it's updated by the external provider.
		*/
		public function setSyncDisplayName( syncDisplayName : Boolean ) : QQConnectRequest
		{
			this.data["syncDisplayName"] = syncDisplayName;
			return this;
		}
				
	}
	
}

