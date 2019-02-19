
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.messages
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A message sent to sockets when disconnectOthers() has been called.
	*/ 
	public class SessionTerminatedMessage extends GSResponse
	{
		public static var MESSAGE_TYPE:String = ".SessionTerminatedMessage";
		
		public function SessionTerminatedMessage(data : Object)
		{
			super(data);
		}
	
	
		/**
		* Used to automatically re-authenticate a client during socket connect.
		*/ 
		public function getAuthToken() : String
		{
			if(data.authToken != null)
			{
				return data.authToken;
			}
			return null;
		}
	}

}

