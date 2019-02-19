
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.messages
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A message indicating that the asynchronous upload task trigger by the player is now complete.
	*/ 
	public class UploadCompleteMessage extends GSResponse
	{
		public static var MESSAGE_TYPE:String = ".UploadCompleteMessage";
		
		public function UploadCompleteMessage(data : Object)
		{
			super(data);
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
		* The upload data (if supplied as part of GetUploadUrlRequest) of UploadData objects
		*/ 
		public function getUploadData() : UploadData{
			if(data.uploadData != null)
			{
				return new UploadData(data.uploadData);
			}
			return null;
		}
		/**
		* The id of the upload
		*/ 
		public function getUploadId() : String
		{
			if(data.uploadId != null)
			{
				return data.uploadId;
			}
			return null;
		}
	}

}

