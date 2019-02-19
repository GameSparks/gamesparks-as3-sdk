
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the individual responses for requests performed via a BatchAdminRequest
	*/
	public class BatchAdminResponse extends GSResponse
	{
	
		public function BatchAdminResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A map of responses by player ID
		*/ 
		public function getResponses() : Object{
			if(data.responses != null)
			{
				return data.responses;
			}
			return null;
		}
	}

}

