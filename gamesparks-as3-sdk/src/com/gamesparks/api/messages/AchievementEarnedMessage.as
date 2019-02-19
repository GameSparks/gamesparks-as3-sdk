
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.messages
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* Message sent to a player when they have been awarded an achievement within the game.
	* This message may be triggered by a leaderboard or a script.
	* The player may have gained a virtual good or virtual currency as a result of gaining the award.
	*/ 
	public class AchievementEarnedMessage extends GSResponse
	{
		public static var MESSAGE_TYPE:String = ".AchievementEarnedMessage";
		
		public function AchievementEarnedMessage(data : Object)
		{
			super(data);
		}
	
	
		/**
		* The name of achievement.
		*/ 
		public function getAchievementName() : String
		{
			if(data.achievementName != null)
			{
				return data.achievementName;
			}
			return null;
		}
		/**
		* The short code of the achievement.
		*/ 
		public function getAchievementShortCode() : String
		{
			if(data.achievementShortCode != null)
			{
				return data.achievementShortCode;
			}
			return null;
		}
		/**
		* The amount of type 1 currency earned.
		*/ 
		public function getCurrency1Earned() : String
		{
			if(data.currency1Earned != null)
			{
				return data.currency1Earned;
			}
			return null;
		}
		/**
		* The amount of type 2 currency earned.
		*/ 
		public function getCurrency2Earned() : String
		{
			if(data.currency2Earned != null)
			{
				return data.currency2Earned;
			}
			return null;
		}
		/**
		* The amount of type 3 currency earned.
		*/ 
		public function getCurrency3Earned() : String
		{
			if(data.currency3Earned != null)
			{
				return data.currency3Earned;
			}
			return null;
		}
		/**
		* The amount of type 4 currency earned.
		*/ 
		public function getCurrency4Earned() : String
		{
			if(data.currency4Earned != null)
			{
				return data.currency4Earned;
			}
			return null;
		}
		/**
		* The amount of type 5 currency earned.
		*/ 
		public function getCurrency5Earned() : String
		{
			if(data.currency5Earned != null)
			{
				return data.currency5Earned;
			}
			return null;
		}
		/**
		* The amount of type 6 currency earned.
		*/ 
		public function getCurrency6Earned() : String
		{
			if(data.currency6Earned != null)
			{
				return data.currency6Earned;
			}
			return null;
		}
		/**
		* An object containing the short codes and amounts of the currencies credited to the player
		*/ 
		public function getCurrencyAwards() : Object
		{
			if(data.currencyAwards != null)
			{
				return data.currencyAwards;
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
		* The name of the virtual good that was earned.
		*/ 
		public function getVirtualGoodEarned() : String
		{
			if(data.virtualGoodEarned != null)
			{
				return data.virtualGoodEarned;
			}
			return null;
		}
	}

}

