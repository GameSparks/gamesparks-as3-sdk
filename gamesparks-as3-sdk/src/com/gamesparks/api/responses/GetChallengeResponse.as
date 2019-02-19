
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the details of a challenge
	*/
	public class GetChallengeResponse extends GSResponse
	{
	
		public function GetChallengeResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A JSON object representing the challenge.
		*/ 
		public function getChallenge() : Challenge{
			if(data.challenge != null)
			{
				return new Challenge(data.challenge);
			}
			return null;
		}
	}

}

