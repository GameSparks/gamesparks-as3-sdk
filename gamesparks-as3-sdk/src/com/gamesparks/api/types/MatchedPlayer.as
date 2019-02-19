
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class MatchedPlayer extends GSData
	{
	
		public function MatchedPlayer(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The Location of the player
		/// </summary>
		//method type 5
		public function getLocation() : Object{
			if(data.location != null)
			{
				return data.location;
			}
			return null;
		}
		/// <summary>
		/// A JSON Map of any data that was associated to this user
		/// </summary>
		//method type 5
		public function getParticipantData() : Object{
			if(data.participantData != null)
			{
				return data.participantData;
			}
			return null;
		}
		/// <summary>
		/// The ID for player
		/// </summary>
		//method type 5
		public function getPlayerId() : String{
			if(data.playerId != null)
			{
				return data.playerId;
			}
			return null;
		}
		/// <summary>
		/// The skill of the player in this match
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

