
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class Player extends GSData
	{
	
		public function Player(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The achievements of the Player
		/// </summary>
		//method type 4
		public function getAchievements() : Vector.<String>
		{
			var ret : Vector.<String> = new Vector.<String>();

			if(data.achievements != null)
			{
			 	var list : Array = data.achievements;
			 	for(var item : String in list)
			 	{
				 	ret.push(list[item]);
			 	}
			}
			
			return ret;
		}
		/// <summary>
		/// The display name of the Player
		/// </summary>
		//method type 5
		public function getDisplayName() : String{
			if(data.displayName != null)
			{
				return data.displayName;
			}
			return null;
		}
		/// <summary>
		/// The external Id's of the Player
		/// </summary>
		//method type 5
		public function getExternalIds() : Object{
			if(data.externalIds != null)
			{
				return data.externalIds;
			}
			return null;
		}
		/// <summary>
		/// The Id of the Player
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
		/// The online status of the Player
		/// </summary>
		//method type 5
		public function getOnline() : Boolean{
			if(data.online != null)
			{
				return data.online;
			}
			return false;
		}
		/// <summary>
		/// The script data of the Player
		/// </summary>
		//method type 5
		public function getScriptData() : Object{
			if(data.scriptData != null)
			{
				return data.scriptData;
			}
			return null;
		}
		/// <summary>
		/// The virtual goods of the Player
		/// </summary>
		//method type 4
		public function getVirtualGoods() : Vector.<String>
		{
			var ret : Vector.<String> = new Vector.<String>();

			if(data.virtualGoods != null)
			{
			 	var list : Array = data.virtualGoods;
			 	for(var item : String in list)
			 	{
				 	ret.push(list[item]);
			 	}
			}
			
			return ret;
		}
	}

}

