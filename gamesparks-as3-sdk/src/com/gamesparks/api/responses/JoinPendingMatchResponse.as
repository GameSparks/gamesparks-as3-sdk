
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response to a JoinPendingMatchRequest
	*/
	public class JoinPendingMatchResponse extends GSResponse
	{
	
		public function JoinPendingMatchResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A JSON object containing the new pending match
		*/ 
		public function getPendingMatch() : PendingMatch{
			if(data.pendingMatch != null)
			{
				return new PendingMatch(data.pendingMatch);
			}
			return null;
		}
	}

}

