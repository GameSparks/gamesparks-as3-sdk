
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the challenge instance id of the challenge that was declined
	*/
	public class DeclineChallengeResponse extends GSResponse
	{
	
		public function DeclineChallengeResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The challenge instance id
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

