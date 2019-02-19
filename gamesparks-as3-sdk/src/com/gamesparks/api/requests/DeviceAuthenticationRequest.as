
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a device id to be used to create an anonymous profile in the game.
	* This allows the player to be tracked and have data stored against them before using FacebookConnectRequest to create a full profile.
	* DeviceAuthenticationRequest should not be used in conjunction with RegistrationRequest as the two accounts will not be merged.
	*/
	public class DeviceAuthenticationRequest extends GSRequest
	{
	
		function DeviceAuthenticationRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".DeviceAuthenticationRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):DeviceAuthenticationRequest
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
		
	
		public function setScriptData(scriptData:Object):DeviceAuthenticationRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* A unique device identifier. Each platform has it's own method for getting a unique id
		*/
		public function setDeviceId( deviceId : String ) : DeviceAuthenticationRequest
		{
			this.data["deviceId"] = deviceId;
			return this;
		}


		/**
		* The device model
		*/
		public function setDeviceModel( deviceModel : String ) : DeviceAuthenticationRequest
		{
			this.data["deviceModel"] = deviceModel;
			return this;
		}


		/**
		* The device name
		*/
		public function setDeviceName( deviceName : String ) : DeviceAuthenticationRequest
		{
			this.data["deviceName"] = deviceName;
			return this;
		}


		/**
		* An indicator of the device platform, should be IOS, ANDROID, WP8 or W8
		*/
		public function setDeviceOS( deviceOS : String ) : DeviceAuthenticationRequest
		{
			this.data["deviceOS"] = deviceOS;
			return this;
		}


		/**
		* The device type
		*/
		public function setDeviceType( deviceType : String ) : DeviceAuthenticationRequest
		{
			this.data["deviceType"] = deviceType;
			return this;
		}


		/**
		* An optional displayname for the player
		*/
		public function setDisplayName( displayName : String ) : DeviceAuthenticationRequest
		{
			this.data["displayName"] = displayName;
			return this;
		}


		/**
		* The device type
		*/
		public function setOperatingSystem( operatingSystem : String ) : DeviceAuthenticationRequest
		{
			this.data["operatingSystem"] = operatingSystem;
			return this;
		}



		/**
		* An optional segment configuration for this request.
		* If this request reates a new player on the gamesparks platform, the segments of the new player will match the values provided
		*/
		public function setSegments( segments : Object ) : DeviceAuthenticationRequest
		{
			this.data["segments"] = segments;
			return this;
		}
				
	}
	
}

