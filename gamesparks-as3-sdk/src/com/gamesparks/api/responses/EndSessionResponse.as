
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response to an end session request
	*/
	public class EndSessionResponse extends GSResponse
	{
	
		public function EndSessionResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The length of this session
		*/ 
		public function getSessionDuration() : Number{
			if(data.sessionDuration != null)
			{
				return data.sessionDuration;
			}
			return NaN;
		}
	}

}

