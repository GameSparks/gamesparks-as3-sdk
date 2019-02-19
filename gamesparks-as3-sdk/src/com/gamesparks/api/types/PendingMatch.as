
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class PendingMatch extends GSData
	{
	
		public function PendingMatch(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The ID for the pending match
		/// </summary>
		//method type 5
		public function getId() : String{
			if(data.id != null)
			{
				return data.id;
			}
			return null;
		}
		/// <summary>
		/// A JSON Map of the matchData associated to this pending match
		/// </summary>
		//method type 5
		public function getMatchData() : Object{
			if(data.matchData != null)
			{
				return data.matchData;
			}
			return null;
		}
		/// <summary>
		/// The match group for the pending match
		/// </summary>
		//method type 5
		public function getMatchGroup() : String{
			if(data.matchGroup != null)
			{
				return data.matchGroup;
			}
			return null;
		}
		/// <summary>
		/// The match shortCode for the pending match
		/// </summary>
		//method type 5
		public function getMatchShortCode() : String{
			if(data.matchShortCode != null)
			{
				return data.matchShortCode;
			}
			return null;
		}
		/// <summary>
		/// The players already part of this pending match
		/// </summary>
		//method type 1
		public function getMatchedPlayers() : Vector.<MatchedPlayer>
		{
			var ret : Vector.<MatchedPlayer> = new Vector.<MatchedPlayer>();

			if(data.matchedPlayers != null)
			{
			 	var list : Array = data.matchedPlayers;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new MatchedPlayer(list[item]));
			 	}
			}
			
			return ret;
		}
		/// <summary>
		/// The average skill of players in this pending match
		/// </summary>
		//method type 5
		public function getSkill() : Number{
			if(data.skill != null)
			{
				return data.skill;
			}
			return NaN;
		}
	}

}

