
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response to a match details request
	*/
	public class MatchDetailsResponse extends GSResponse
	{
	
		public function MatchDetailsResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The accessToken used to authenticate this player for this match
		*/ 
		public function getAccessToken() : String{
			if(data.accessToken != null)
			{
				return data.accessToken;
			}
			return null;
		}
		/** <summary>
		* The host to connect to for this match
		*/ 
		public function getHost() : String{
			if(data.host != null)
			{
				return data.host;
			}
			return null;
		}
		/** <summary>
		* MatchData is arbitrary data that can be stored in a Match instance by a Cloud Code script.
		*/ 
		public function getMatchData() : Object{
			if(data.matchData != null)
			{
				return data.matchData;
			}
			return null;
		}
		/** <summary>
		* The id for this match instance
		*/ 
		public function getMatchId() : String{
			if(data.matchId != null)
			{
				return data.matchId;
			}
			return null;
		}
		/** <summary>
		* The opponents this player has been matched against
		*/ 
		public function getOpponents() : Vector.<Player>
		{
			var ret : Vector.<Player> = new Vector.<Player>();

			if(data.opponents != null)
			{
			 	var list : Array = data.opponents;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new Player(list[item]));
			 	}
			}
			
			return ret;
		}
		/** <summary>
		* The peerId of this player within the match
		*/ 
		public function getPeerId() : Number{
			if(data.peerId != null)
			{
				return data.peerId;
			}
			return NaN;
		}
		/** <summary>
		* The id of the current player
		*/ 
		public function getPlayerId() : String{
			if(data.playerId != null)
			{
				return data.playerId;
			}
			return null;
		}
		/** <summary>
		* The port to connect to for this match
		*/ 
		public function getPort() : Number{
			if(data.port != null)
			{
				return data.port;
			}
			return NaN;
		}
	}

}

