
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.messages
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* This message is sent to players when their rank in a leaderboard changes with respect to the rank of their social network friends.
	*/ 
	public class SocialRankChangedMessage extends GSResponse
	{
		public static var MESSAGE_TYPE:String = ".SocialRankChangedMessage";
		
		public function SocialRankChangedMessage(data : Object)
		{
			super(data);
		}
	
	
		/**
		* The game id that this message relates to.
		*/ 
		public function getGameId() : Number
		{
			if(data.gameId != null)
			{
				return data.gameId;
			}
			return NaN;
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
		* The score details of the player whose score the receiving player has passed.
		*/ 
		public function getThem() : LeaderboardData{
			if(data.them != null)
			{
				return new LeaderboardData(data.them);
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
		* The score details of the receiving player.
		*/ 
		public function getYou() : LeaderboardData{
			if(data.you != null)
			{
				return new LeaderboardData(data.you);
			}
			return null;
		}
	}

}

