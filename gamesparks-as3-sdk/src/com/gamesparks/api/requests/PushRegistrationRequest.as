
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Registers the current device for push notifications. Currently GameSparks supports iOS, Android (GCM), FCM, Kindle, Viber & Microsoft Push notifications.
	* Supply the device type, and the push notification identifier for the device.
	*/
	public class PushRegistrationRequest extends GSRequest
	{
	
		function PushRegistrationRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".PushRegistrationRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):PushRegistrationRequest
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
						callback(new PushRegistrationResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):PushRegistrationRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The type of id, valid values are ios, android, fcm, wp8, w8, kindle or viber
		*/
		public function setDeviceOS( deviceOS : String ) : PushRegistrationRequest
		{
			this.data["deviceOS"] = deviceOS;
			return this;
		}


		/**
		* The push notification identifier for the device
		*/
		public function setPushId( pushId : String ) : PushRegistrationRequest
		{
			this.data["pushId"] = pushId;
			return this;
		}

				
	}
	
}

