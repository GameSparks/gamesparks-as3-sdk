
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class PlayerTransaction extends GSData
	{
	
		public function PlayerTransaction(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The items (currency or virtual goods) involved in this transaction
		/// </summary>
		//method type 1
		public function getItems() : Vector.<PlayerTransactionItem>
		{
			var ret : Vector.<PlayerTransactionItem> = new Vector.<PlayerTransactionItem>();

			if(data.items != null)
			{
			 	var list : Array = data.items;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new PlayerTransactionItem(list[item]));
			 	}
			}
			
			return ret;
		}
		/// <summary>
		/// The original request ID for this transaction
		/// </summary>
		//method type 5
		public function getOriginalRequestId() : String{
			if(data.originalRequestId != null)
			{
				return data.originalRequestId;
			}
			return null;
		}
		/// <summary>
		/// The player ID
		/// </summary>
		//method type 5
		public function getPlayerId() : String{
			if(data.playerId != null)
			{
				return data.playerId;
			}
			return null;
		}
		/// <summary>
		/// The reason for the transaction
		/// </summary>
		//method type 5
		public function getReason() : String{
			if(data.reason != null)
			{
				return data.reason;
			}
			return null;
		}
		/// <summary>
		/// Gets the date when this transaction was revoked, if applicable
		/// </summary>
		//method type 5
		public function getRevokeDate() : Date{
			if(data.revokeDate != null)
			{
				return RFC3339toDate(data.revokeDate);
			}
			return null;
		}
		/// <summary>
		/// Is true if the transaction was revoked
		/// </summary>
		//method type 5
		public function getRevoked() : Boolean{
			if(data.revoked != null)
			{
				return data.revoked;
			}
			return false;
		}
		/// <summary>
		/// The specific script in which this transaction occurred
		/// </summary>
		//method type 5
		public function getScript() : String{
			if(data.script != null)
			{
				return data.script;
			}
			return null;
		}
		/// <summary>
		/// The script type in which this transaction occurred (e.g. event)
		/// </summary>
		//method type 5
		public function getScriptType() : String{
			if(data.scriptType != null)
			{
				return data.scriptType;
			}
			return null;
		}
		/// <summary>
		/// The transaction ID of this purchase, if applicable
		/// </summary>
		//method type 5
		public function getTransactionId() : String{
			if(data.transactionId != null)
			{
				return data.transactionId;
			}
			return null;
		}
		/// <summary>
		/// The date of the transaction
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

