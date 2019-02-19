
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the list of configured challenge types in the game
	*/
	public class ListChallengeTypeResponse extends GSResponse
	{
	
		public function ListChallengeTypeResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of JSON objects containing the challenge templates for the game
		*/ 
		public function getChallengeTemplates() : Vector.<ChallengeType>
		{
			var ret : Vector.<ChallengeType> = new Vector.<ChallengeType>();

			if(data.challengeTemplates != null)
			{
			 	var list : Array = data.challengeTemplates;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new ChallengeType(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

