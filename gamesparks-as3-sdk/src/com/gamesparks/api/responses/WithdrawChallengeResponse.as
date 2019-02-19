
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the challenge instance id that was withdrawn by a player
	*/
	public class WithdrawChallengeResponse extends GSResponse
	{
	
		public function WithdrawChallengeResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A challenge instance id
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

