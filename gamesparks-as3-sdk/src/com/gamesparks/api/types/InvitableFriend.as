
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class InvitableFriend extends GSData
	{
	
		public function InvitableFriend(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The display name of the External Friend
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
		/// The ID of the External Friend
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
		/// The profile picture URL of the External Friend
		/// </summary>
		//method type 5
		public function getProfilePic() : String{
			if(data.profilePic != null)
			{
				return data.profilePic;
			}
			return null;
		}
	}

}

