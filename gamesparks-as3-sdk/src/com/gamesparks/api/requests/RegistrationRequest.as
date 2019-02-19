
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a new player to be created using a username, password display name.
	*/
	public class RegistrationRequest extends GSRequest
	{
	
		function RegistrationRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".RegistrationRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):RegistrationRequest
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
						callback(new RegistrationResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):RegistrationRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* A display name to use
		*/
		public function setDisplayName( displayName : String ) : RegistrationRequest
		{
			this.data["displayName"] = displayName;
			return this;
		}


		/**
		* The previously registered password
		*/
		public function setPassword( password : String ) : RegistrationRequest
		{
			this.data["password"] = password;
			return this;
		}



		/**
		* An optional segment configuration for this request.
		* If this request creates a new player on the gamesparks platform, the segments of the new player will match the values provided
		*/
		public function setSegments( segments : Object ) : RegistrationRequest
		{
			this.data["segments"] = segments;
			return this;
		}


		/**
		* The previously registered player name
		*/
		public function setUserName( userName : String ) : RegistrationRequest
		{
			this.data["userName"] = userName;
			return this;
		}
				
	}
	
}

