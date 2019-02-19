
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.messages
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A message sent from a player to one of his social network friends.
	*/ 
	public class FriendMessage extends GSResponse
	{
		public static var MESSAGE_TYPE:String = ".FriendMessage";
		
		public function FriendMessage(data : Object)
		{
			super(data);
		}
	
	
		/**
		* The player's id who is sending the message.
		*/ 
		public function getFromId() : String
		{
			if(data.fromId != null)
			{
				return data.fromId;
			}
			return null;
		}
		/**
		* The player's message.
		*/ 
		public function getMessage() : String
		{
			if(data.message != null)
			{
				return data.message;
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
		* The name of the player who is sending the message.
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

