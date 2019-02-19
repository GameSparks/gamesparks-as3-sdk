
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response to a create challenge response
	*/
	public class CreateChallengeResponse extends GSResponse
	{
	
		public function CreateChallengeResponse(data : Object)
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

