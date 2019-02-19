
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing team data for teams that a player belong to
	*/
	public class GetMyTeamsResponse extends GSResponse
	{
	
		public function GetMyTeamsResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The team data
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

