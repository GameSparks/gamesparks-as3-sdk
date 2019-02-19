
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class PlayerTurnCount extends GSData
	{
	
		public function PlayerTurnCount(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The number of turns that the player has taken so far during this challenge.
		/// </summary>
		//method type 5
		public function getCount() : String{
			if(data.count != null)
			{
				return data.count;
			}
			return null;
		}
		/// <summary>
		/// The unique player id.
		/// </summary>
		//method type 5
		public function getPlayerId() : String{
			if(data.playerId != null)
			{
				return data.playerId;
			}
			return null;
		}
	}

}

