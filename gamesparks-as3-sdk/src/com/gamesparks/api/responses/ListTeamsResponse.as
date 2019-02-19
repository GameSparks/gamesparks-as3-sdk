
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the list of teams for a game.
	*/
	public class ListTeamsResponse extends GSResponse
	{
	
		public function ListTeamsResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of JSON objects containing team information
		*/ 
		public function getTeams() : Vector.<Team>
		{
			var ret : Vector.<Team> = new Vector.<Team>();

			if(data.teams != null)
			{
			 	var list : Array = data.teams;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new Team(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

