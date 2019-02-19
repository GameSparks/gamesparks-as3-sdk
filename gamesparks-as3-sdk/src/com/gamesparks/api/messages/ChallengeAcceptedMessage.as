
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.messages
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A message indicating that the challenge has been accepted.
	*/ 
	public class ChallengeAcceptedMessage extends GSResponse
	{
		public static var MESSAGE_TYPE:String = ".ChallengeAcceptedMessage";
		
		public function ChallengeAcceptedMessage(data : Object)
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
		* A player message included in this message.
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
		* The name of the player whose actions generated this message.
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

