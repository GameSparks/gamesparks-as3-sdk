
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.messages
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A message indicating that the challenge has been won.
	* This message is only sent to the individual player who has won the challenge
	*/ 
	public class ChallengeWonMessage extends GSResponse
	{
		public static var MESSAGE_TYPE:String = ".ChallengeWonMessage";
		
		public function ChallengeWonMessage(data : Object)
		{
			super(data);
		}
	
	
		/**
		* An object representing the challenge.
		*/ 
		public function getChallenge() : Challenge{
			if(data.challenge != null)
			{
				return new Challenge(data.challenge);
			}
			return null;
		}
		/**
		* The amount of type 1 currency the player has won.
		*/ 
		public function getCurrency1Won() : Number
		{
			if(data.currency1Won != null)
			{
				return data.currency1Won;
			}
			return NaN;
		}
		/**
		* The amount of type 2 currency the player has won.
		*/ 
		public function getCurrency2Won() : Number
		{
			if(data.currency2Won != null)
			{
				return data.currency2Won;
			}
			return NaN;
		}
		/**
		* The amount of type 3 currency the player has won.
		*/ 
		public function getCurrency3Won() : Number
		{
			if(data.currency3Won != null)
			{
				return data.currency3Won;
			}
			return NaN;
		}
		/**
		* The amount of type 4 currency the player has won.
		*/ 
		public function getCurrency4Won() : Number
		{
			if(data.currency4Won != null)
			{
				return data.currency4Won;
			}
			return NaN;
		}
		/**
		* The amount of type 5 currency the player has won.
		*/ 
		public function getCurrency5Won() : Number
		{
			if(data.currency5Won != null)
			{
				return data.currency5Won;
			}
			return NaN;
		}
		/**
		* The amount of type 6 currency the player has won.
		*/ 
		public function getCurrency6Won() : Number
		{
			if(data.currency6Won != null)
			{
				return data.currency6Won;
			}
			return NaN;
		}
		/**
		* An object containing the short codes and amounts of the currencies the player has won
		*/ 
		public function getCurrencyWinnings() : Object
		{
			if(data.currencyWinnings != null)
			{
				return data.currencyWinnings;
			}
			return null;
		}
		/**
		* The leaderboard data associated with this challenge.
		*/ 
		public function getLeaderboardData() : LeaderboardData{
			if(data.leaderboardData != null)
			{
				return new LeaderboardData(data.leaderboardData);
			}
			return null;
		}
		/**
		* A unique identifier for this message.
		*/ 
		public function getMessageId() : String
		{
			if(data.messageId != null)
			{
				return data.messageId;
			}
			return null;
		}
		/**
		* Flag indicating whether this message could be sent as a push notification or not.
		*/ 
		public function getNotification() : Boolean
		{
			if(data.notification != null)
			{
				return data.notification;
			}
			return false;
		}
		/**
		* A textual title for the message.
		*/ 
		public function getSubTitle() : String
		{
			if(data.subTitle != null)
			{
				return data.subTitle;
			}
			return null;
		}
		/**
		* A textual summary describing the message's purpose.
		*/ 
		public function getSummary() : String
		{
			if(data.summary != null)
			{
				return data.summary;
			}
			return null;
		}
		/**
		* A textual title for the message.
		*/ 
		public function getTitle() : String
		{
			if(data.title != null)
			{
				return data.title;
			}
			return null;
		}
		/**
		* The winning player's name.
		*/ 
		public function getWinnerName() : String
		{
			if(data.winnerName != null)
			{
				return data.winnerName;
			}
			return null;
		}
	}

}

