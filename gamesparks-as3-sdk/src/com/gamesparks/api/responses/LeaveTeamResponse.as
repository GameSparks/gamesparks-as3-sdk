
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response to a player leaving a team
	*/
	public class LeaveTeamResponse extends GSResponse
	{
	
		public function LeaveTeamResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The team members
		*/ 
		public function getMembers() : Vector.<Player>
		{
			var ret : Vector.<Player> = new Vector.<Player>();

			if(data.members != null)
			{
			 	var list : Array = data.members;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new Player(list[item]));
			 	}
			}
			
			return ret;
		}
		/** <summary>
		* A summary of the owner
		*/ 
		public function getOwner() : Player{
			if(data.owner != null)
			{
				return new Player(data.owner);
			}
			return null;
		}
		/** <summary>
		* The Id of the team
		*/ 
		public function getTeamId() : String{
			if(data.teamId != null)
			{
				return data.teamId;
			}
			return null;
		}
		/** <summary>
		* The team name
		*/ 
		public function getTeamName() : String{
			if(data.teamName != null)
			{
				return data.teamName;
			}
			return null;
		}
		/** <summary>
		* The team type
		*/ 
		public function getTeamType() : String{
			if(data.teamType != null)
			{
				return data.teamType;
			}
			return null;
		}
	}

}

