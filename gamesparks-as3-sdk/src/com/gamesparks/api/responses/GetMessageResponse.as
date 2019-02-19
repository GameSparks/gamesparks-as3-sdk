
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the message data for a given message
	*/
	public class GetMessageResponse extends GSResponse
	{
	
		public function GetMessageResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The message data
		*/ 
		public function getMessage() : Object{
			if(data.message != null)
			{
				return data.message;
			}
			return null;
		}
		/** <summary>
		* The message status
		*/ 
		public function getStatus() : String{
			if(data.status != null)
			{
				return data.status;
			}
			return null;
		}
	}

}

