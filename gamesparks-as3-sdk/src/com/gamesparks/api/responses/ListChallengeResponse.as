
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing challenges that are in the state that was specified in the request
	*/
	public class ListChallengeResponse extends GSResponse
	{
	
		public function ListChallengeResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of JSON objects representing the challenges.
		*/ 
		public function getChallengeInstances() : Vector.<Challenge>
		{
			var ret : Vector.<Challenge> = new Vector.<Challenge>();

			if(data.challengeInstances != null)
			{
			 	var list : Array = data.challengeInstances;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new Challenge(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

