
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response to a push registration request 
	*/
	public class PushRegistrationResponse extends GSResponse
	{
	
		public function PushRegistrationResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* An identifier for the successful registration.  Clients should store this value to be used in the event the player no longer wants to receive push notifications to this device.
		*/ 
		public function getRegistrationId() : String{
			if(data.registrationId != null)
			{
				return data.registrationId;
			}
			return null;
		}
	}

}

