
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.messages
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A message sent from a Cloud Code script to one or more players.
	* See the Spark.sendMessage function in the Cloud Code - Java Script API documentation.
	*/ 
	public class ScriptMessage extends GSResponse
	{
		public static var MESSAGE_TYPE:String = ".ScriptMessage";
		
		public function ScriptMessage(data : Object)
		{
			super(data);
		}
	
	
		/**
		* JSON data sent from a Cloud Code script.
		*/ 
		public function getData() : Object
		{
			if(data.data != null)
			{
				return data.data;
			}
			return null;
		}
		/**
		* The extension code used when creating this script message
		*/ 
		public function getExtCode() : String
		{
			if(data.extCode != null)
			{
				return data.extCode;
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
	}

}

