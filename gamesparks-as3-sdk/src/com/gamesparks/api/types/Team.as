
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class Team extends GSData
	{
	
		public function Team(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// A summary of the owner
		/// </summary>
		//method type 2		
		public function getOwner() : Player{
			if(data.owner != null)
			{
				return new Player(data.owner);
			}
			return null;
		}
		/// <summary>
		/// The Id of the team
		/// </summary>
		//method type 5
		public function getTeamId() : String{
			if(data.teamId != null)
			{
				return data.teamId;
			}
			return null;
		}
		/// <summary>
		/// The team name
		/// </summary>
		//method type 5
		public function getTeamName() : String{
			if(data.teamName != null)
			{
				return data.teamName;
			}
			return null;
		}
		/// <summary>
		/// The team type
		/// </summary>
		//method type 5
		public function getTeamType() : String{
			if(data.teamType != null)
			{
				return data.teamType;
			}
			return null;
		}
	}

}

