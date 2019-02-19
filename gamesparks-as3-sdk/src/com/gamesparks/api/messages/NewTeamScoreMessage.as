
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.messages
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A message indicating that the player's team has achieved a new high score in the game.
	*/ 
	public class NewTeamScoreMessage extends GSResponse
	{
		public static var MESSAGE_TYPE:String = ".NewTeamScoreMessage";
		
		public function NewTeamScoreMessage(data : Object)
		{
			super(data);
		}
	
	
		/**
		* The new leaderboard data associated with this message.
		*/ 
		public function getLeaderboardData() : LeaderboardData{
			if(data.leaderboardData != null)
			{
				return new LeaderboardData(data.leaderboardData);
			}
			return null;
		}
		/**
		* The leaderboard's name.
		*/ 
		public function getLeaderboardName() : String
		{
			if(data.leaderboardName != null)
			{
				return data.leaderboardName;
			}
			return null;
		}
		/**
		* The leaderboard shortcode.
		*/ 
		public function getLeaderboardShortCode() : String
		{
			if(data.leaderboardShortCode != null)
			{
				return data.leaderboardShortCode;
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
		* The ranking information for the new score.
		*/ 
		public function getRankDetails() : LeaderboardRankDetails{
			if(data.rankDetails != null)
			{
				return new LeaderboardRankDetails(data.rankDetails);
			}
			return null;
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
	}

}

