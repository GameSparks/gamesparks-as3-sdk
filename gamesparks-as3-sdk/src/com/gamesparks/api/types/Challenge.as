
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class Challenge extends GSData
	{
	
		public function Challenge(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// A list of PlayerDetail objects that represents the players that have accepted this challenge.
		/// </summary>
		//method type 1
		public function getAccepted() : Vector.<PlayerDetail>
		{
			var ret : Vector.<PlayerDetail> = new Vector.<PlayerDetail>();

			if(data.accepted != null)
			{
			 	var list : Array = data.accepted;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new PlayerDetail(list[item]));
			 	}
			}
			
			return ret;
		}
		/// <summary>
		/// A unique identifier for this challenge.
		/// </summary>
		//method type 5
		public function getChallengeId() : String{
			if(data.challengeId != null)
			{
				return data.challengeId;
			}
			return null;
		}
		/// <summary>
		/// The message included in the challenge by the challenging player who created the challenge.
		/// </summary>
		//method type 5
		public function getChallengeMessage() : String{
			if(data.challengeMessage != null)
			{
				return data.challengeMessage;
			}
			return null;
		}
		/// <summary>
		/// The name of the challenge that this message relates to.
		/// </summary>
		//method type 5
		public function getChallengeName() : String{
			if(data.challengeName != null)
			{
				return data.challengeName;
			}
			return null;
		}
		/// <summary>
		/// A list of PlayerDetail objects that represents the players that were challenged in this challenge.
		/// </summary>
		//method type 1
		public function getChallenged() : Vector.<PlayerDetail>
		{
			var ret : Vector.<PlayerDetail> = new Vector.<PlayerDetail>();

			if(data.challenged != null)
			{
			 	var list : Array = data.challenged;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new PlayerDetail(list[item]));
			 	}
			}
			
			return ret;
		}
		/// <summary>
		/// Details of the player who issued this challenge.
		/// </summary>
		//method type 2		
		public function getChallenger() : PlayerDetail{
			if(data.challenger != null)
			{
				return new PlayerDetail(data.challenger);
			}
			return null;
		}
		/// <summary>
		/// The amount of type 1 currency that has been wagered on this challenge.
		/// </summary>
		//method type 5
		public function getCurrency1Wager() : Number{
			if(data.currency1Wager != null)
			{
				return data.currency1Wager;
			}
			return NaN;
		}
		/// <summary>
		/// The amount of type 2 currency that has been wagered on this challenge.
		/// </summary>
		//method type 5
		public function getCurrency2Wager() : Number{
			if(data.currency2Wager != null)
			{
				return data.currency2Wager;
			}
			return NaN;
		}
		/// <summary>
		/// The amount of type 3 currency that has been wagered on this challenge.
		/// </summary>
		//method type 5
		public function getCurrency3Wager() : Number{
			if(data.currency3Wager != null)
			{
				return data.currency3Wager;
			}
			return NaN;
		}
		/// <summary>
		/// The amount of type 4 currency that has been wagered on this challenge.
		/// </summary>
		//method type 5
		public function getCurrency4Wager() : Number{
			if(data.currency4Wager != null)
			{
				return data.currency4Wager;
			}
			return NaN;
		}
		/// <summary>
		/// The amount of type 5 currency that has been wagered on this challenge.
		/// </summary>
		//method type 5
		public function getCurrency5Wager() : Number{
			if(data.currency5Wager != null)
			{
				return data.currency5Wager;
			}
			return NaN;
		}
		/// <summary>
		/// The amount of type 6 currency that has been wagered on this challenge.
		/// </summary>
		//method type 5
		public function getCurrency6Wager() : Number{
			if(data.currency6Wager != null)
			{
				return data.currency6Wager;
			}
			return NaN;
		}
		/// <summary>
		/// An object representing the currencies that have been wagered on this challenge.
		/// </summary>
		//method type 5
		public function getCurrencyWagers() : Object{
			if(data.currencyWagers != null)
			{
				return data.currencyWagers;
			}
			return null;
		}
		/// <summary>
		/// A list of PlayerDetail objects that represents the players that have declined this challenge.
		/// </summary>
		//method type 1
		public function getDeclined() : Vector.<PlayerDetail>
		{
			var ret : Vector.<PlayerDetail> = new Vector.<PlayerDetail>();

			if(data.declined != null)
			{
			 	var list : Array = data.declined;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new PlayerDetail(list[item]));
			 	}
			}
			
			return ret;
		}
		/// <summary>
		/// The date when the challenge ends.
		/// </summary>
		//method type 5
		public function getEndDate() : Date{
			if(data.endDate != null)
			{
				return RFC3339toDate(data.endDate);
			}
			return null;
		}
		/// <summary>
		/// The latest date that a player can accept the challenge.
		/// </summary>
		//method type 5
		public function getExpiryDate() : Date{
			if(data.expiryDate != null)
			{
				return RFC3339toDate(data.expiryDate);
			}
			return null;
		}
		/// <summary>
		/// The maximum number of turns that this challenge is configured for.
		/// </summary>
		//method type 5
		public function getMaxTurns() : Number{
			if(data.maxTurns != null)
			{
				return data.maxTurns;
			}
			return NaN;
		}
		/// <summary>
		/// In a turn based challenge this fields contains the player's id whose turn it is next.
		/// </summary>
		//method type 5
		public function getNextPlayer() : String{
			if(data.nextPlayer != null)
			{
				return data.nextPlayer;
			}
			return null;
		}
		/// <summary>
		/// ScriptData is arbitrary data that can be stored in a challenge instance by a Cloud Code script.
		/// </summary>
		//method type 5
		public function getScriptData() : Object{
			if(data.scriptData != null)
			{
				return data.scriptData;
			}
			return null;
		}
		/// <summary>
		/// The challenge's short code.
		/// </summary>
		//method type 5
		public function getShortCode() : String{
			if(data.shortCode != null)
			{
				return data.shortCode;
			}
			return null;
		}
		/// <summary>
		/// The date when the challenge starts.
		/// </summary>
		//method type 5
		public function getStartDate() : Date{
			if(data.startDate != null)
			{
				return RFC3339toDate(data.startDate);
			}
			return null;
		}
		/// <summary>
		/// One of these possible state values: ISSUED, EXPIRED, ACCEPTED, DECLINED, COMPLETE, WITHDRAWN, RUNNING, WAITING, RECEIVED
		/// </summary>
		//method type 5
		public function getState() : String{
			if(data.state != null)
			{
				return data.state;
			}
			return null;
		}
		/// <summary>
		/// A collection containing the number of turns taken by each player that has accepted the challenge.
		/// Each turn count is a Long keyed on a String that represents the player's id
		/// </summary>
		//method type 1
		public function getTurnCount() : Vector.<PlayerTurnCount>
		{
			var ret : Vector.<PlayerTurnCount> = new Vector.<PlayerTurnCount>();

			if(data.turnCount != null)
			{
			 	var list : Array = data.turnCount;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new PlayerTurnCount(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

