
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Provides authentication using a username/password combination.
	* The username will have been previously created using a RegistrationRequest.
	*/
	public class AuthenticationRequest extends GSRequest
	{
	
		function AuthenticationRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".AuthenticationRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):AuthenticationRequest
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
		
	
		public function setScriptData(scriptData:Object):AuthenticationRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The previously registered password
		*/
		public function setPassword( password : String ) : AuthenticationRequest
		{
			this.data["password"] = password;
			return this;
		}



		/**
		* The previously registered player name
		*/
		public function setUserName( userName : String ) : AuthenticationRequest
		{
			this.data["userName"] = userName;
			return this;
		}
				
	}
	
}

