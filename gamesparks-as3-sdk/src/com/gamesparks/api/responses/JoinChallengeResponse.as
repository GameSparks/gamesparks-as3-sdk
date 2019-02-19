
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response to a player joining a challenge
	*/
	public class JoinChallengeResponse extends GSResponse
	{
	
		public function JoinChallengeResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* Whether the player successfully joined the challenge
		*/ 
		public function getJoined() : Boolean{
			if(data.joined != null)
			{
				return data.joined;
			}
			return false;
		}
	}

}

