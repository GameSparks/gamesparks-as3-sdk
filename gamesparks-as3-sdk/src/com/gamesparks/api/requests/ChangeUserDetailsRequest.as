
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Change the details of the currently signed in Player.
	*/
	public class ChangeUserDetailsRequest extends GSRequest
	{
	
		function ChangeUserDetailsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ChangeUserDetailsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ChangeUserDetailsRequest
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
						callback(new ChangeUserDetailsResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ChangeUserDetailsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The new display name to set in the player data.
		*/
		public function setDisplayName( displayName : String ) : ChangeUserDetailsRequest
		{
			this.data["displayName"] = displayName;
			return this;
		}


		/**
		* The new language code to set in the player data.
		*/
		public function setLanguage( language : String ) : ChangeUserDetailsRequest
		{
			this.data["language"] = language;
			return this;
		}


		/**
		* The new password to set in the player data.
		*/
		public function setNewPassword( newPassword : String ) : ChangeUserDetailsRequest
		{
			this.data["newPassword"] = newPassword;
			return this;
		}


		/**
		* The player's existing password. If supplied it will be checked against the password stored in the player data. This allows you re-authenticate the player making the change.
		*/
		public function setOldPassword( oldPassword : String ) : ChangeUserDetailsRequest
		{
			this.data["oldPassword"] = oldPassword;
			return this;
		}



		/**
		* The new userName with which this player will sign in.  If the player currently authenticates using device authentication this will upgrade their account and require them to use username and password authentication from now on.
		*/
		public function setUserName( userName : String ) : ChangeUserDetailsRequest
		{
			this.data["userName"] = userName;
			return this;
		}
				
	}
	
}

