
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.messages
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A message indicating that no suitable match was found during the configured time
	*/ 
	public class MatchNotFoundMessage extends GSResponse
	{
		public static var MESSAGE_TYPE:String = ".MatchNotFoundMessage";
		
		public function MatchNotFoundMessage(data : Object)
		{
			super(data);
		}
	
	
		/**
		* MatchData is arbitrary data that can be stored in a Match instance by a Cloud Code script.
		*/ 
		public function getMatchData() : Object
		{
			if(data.matchData != null)
			{
				return data.matchData;
			}
			return null;
		}
		/**
		* The group the player was assigned in the matchmaking request
		*/ 
		public function getMatchGroup() : String
		{
			if(data.matchGroup != null)
			{
				return data.matchGroup;
			}
			return null;
		}
		/**
		* The shortCode of the match type this message for
		*/ 
		public function getMatchShortCode() : String
		{
			if(data.matchShortCode != null)
			{
				return data.matchShortCode;
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
		* A JSON Map of any data that was associated to this user
		*/ 
		public function getParticipantData() : Object
		{
			if(data.participantData != null)
			{
				return data.participantData;
			}
			return null;
		}
		/**
		* The participants in this match
		*/ 
		public function getParticipants() : Vector.<Participant>
		{
			var ret : Vector.<Participant> = new Vector.<Participant>();

			if(data.participants != null)
			{
			 	var list : Array = data.participants;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new Participant(list[item]));
			 	}
			}
			
			return ret;
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

