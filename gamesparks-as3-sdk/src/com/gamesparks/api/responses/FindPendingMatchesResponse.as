
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response to a FindPendingMatchesRequest
	*/
	public class FindPendingMatchesResponse extends GSResponse
	{
	
		public function FindPendingMatchesResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of JSON objects containing pending matches
		*/ 
		public function getPendingMatches() : Vector.<PendingMatch>
		{
			var ret : Vector.<PendingMatch> = new Vector.<PendingMatch>();

			if(data.pendingMatches != null)
			{
			 	var list : Array = data.pendingMatches;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new PendingMatch(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

