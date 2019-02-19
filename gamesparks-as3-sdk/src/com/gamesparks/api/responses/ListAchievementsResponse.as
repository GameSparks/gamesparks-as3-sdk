
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A reponse containing the game's achievments and an indication of whether the player has earned it
	*/
	public class ListAchievementsResponse extends GSResponse
	{
	
		public function ListAchievementsResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of JSON achievment objects
		*/ 
		public function getAchievements() : Vector.<Achievement>
		{
			var ret : Vector.<Achievement> = new Vector.<Achievement>();

			if(data.achievements != null)
			{
			 	var list : Array = data.achievements;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new Achievement(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

