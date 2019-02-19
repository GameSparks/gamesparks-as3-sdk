
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the challenge instance id that was accepted.
	*/
	public class AcceptChallengeResponse extends GSResponse
	{
	
		public function AcceptChallengeResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The ID of the challenge
		*/ 
		public function getChallengeInstanceId() : String{
			if(data.challengeInstanceId != null)
			{
				return data.challengeInstanceId;
			}
			return null;
		}
	}

}

