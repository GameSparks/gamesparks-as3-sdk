
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.messages
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A message indicating that a player has posted a score in to the challenge's leaderboard.
	*/ 
	public class ChallengeChangedMessage extends GSResponse
	{
		public static var MESSAGE_TYPE:String = ".ChallengeChangedMessage";
		
		public function ChallengeChangedMessage(data : Object)
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
		* Indicates which player has changed the challenge
		*/ 
		public function getWho() : String
		{
			if(data.who != null)
			{
				return data.who;
			}
			return null;
		}
	}

}

