
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class PlayerMessage extends GSData
	{
	
		public function PlayerMessage(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The id of the message
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
		/// The message content
		/// </summary>
		//method type 5
		public function getMessage() : Object{
			if(data.message != null)
			{
				return data.message;
			}
			return null;
		}
		/// <summary>
		/// Whether the message has been delivered to the client
		/// </summary>
		//method type 5
		public function getSeen() : Boolean{
			if(data.seen != null)
			{
				return data.seen;
			}
			return false;
		}
		/// <summary>
		/// The status of the message
		/// </summary>
		//method type 5
		public function getStatus() : String{
			if(data.status != null)
			{
				return data.status;
			}
			return null;
		}
		/// <summary>
		/// The date of the message
		/// </summary>
		//method type 5
		public function getWhen() : Date{
			if(data.when != null)
			{
				return RFC3339toDate(data.when);
			}
			return null;
		}
	}

}

