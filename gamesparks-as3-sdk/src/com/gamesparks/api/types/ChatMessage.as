
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class ChatMessage extends GSData
	{
	
		public function ChatMessage(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The id of the player who sent this message
		/// </summary>
		//method type 5
		public function getFromId() : String{
			if(data.fromId != null)
			{
				return data.fromId;
			}
			return null;
		}
		/// <summary>
		/// The id of this chat message
		/// </summary>
		//method type 5
		public function getId() : String{
			if(data.id != null)
			{
				return data.id;
			}
			return null;
		}
		/// <summary>
		/// The text sent in this message
		/// </summary>
		//method type 5
		public function getMessage() : String{
			if(data.message != null)
			{
				return data.message;
			}
			return null;
		}
		/// <summary>
		/// A date representing the time this message was sent
		/// </summary>
		//method type 5
		public function getWhen() : Date{
			if(data.when != null)
			{
				return RFC3339toDate(data.when);
			}
			return null;
		}
		/// <summary>
		/// The displayName of the player who sent this message
		/// </summary>
		//method type 5
		public function getWho() : String{
			if(data.who != null)
			{
				return data.who;
			}
			return null;
		}
	}

}

