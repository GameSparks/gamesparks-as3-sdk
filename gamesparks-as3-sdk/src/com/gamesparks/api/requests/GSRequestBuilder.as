
package com.gamesparks.api.requests
{

	import com.gamesparks.api.requests.*;
	import com.gamesparks.GS;
	
	public class GSRequestBuilder
	{
		private var gs:GS;
		
		public function GSRequestBuilder(gs:GS)
		{
			this.gs = gs;
		}
		
		public function createAcceptChallengeRequest():AcceptChallengeRequest
		{
			return new AcceptChallengeRequest(gs);
		}
		public function createAccountDetailsRequest():AccountDetailsRequest
		{
			return new AccountDetailsRequest(gs);
		}
		public function createAmazonBuyGoodsRequest():AmazonBuyGoodsRequest
		{
			return new AmazonBuyGoodsRequest(gs);
		}
		public function createAmazonConnectRequest():AmazonConnectRequest
		{
			return new AmazonConnectRequest(gs);
		}
		public function createAnalyticsRequest():AnalyticsRequest
		{
			return new AnalyticsRequest(gs);
		}
		public function createAroundMeLeaderboardRequest():AroundMeLeaderboardRequest
		{
			return new AroundMeLeaderboardRequest(gs);
		}
		public function createAuthenticationRequest():AuthenticationRequest
		{
			return new AuthenticationRequest(gs);
		}
		public function createBatchAdminRequest():BatchAdminRequest
		{
			return new BatchAdminRequest(gs);
		}
		public function createBuyVirtualGoodsRequest():BuyVirtualGoodsRequest
		{
			return new BuyVirtualGoodsRequest(gs);
		}
		public function createCancelBulkJobAdminRequest():CancelBulkJobAdminRequest
		{
			return new CancelBulkJobAdminRequest(gs);
		}
		public function createChangeUserDetailsRequest():ChangeUserDetailsRequest
		{
			return new ChangeUserDetailsRequest(gs);
		}
		public function createChatOnChallengeRequest():ChatOnChallengeRequest
		{
			return new ChatOnChallengeRequest(gs);
		}
		public function createConsumeVirtualGoodRequest():ConsumeVirtualGoodRequest
		{
			return new ConsumeVirtualGoodRequest(gs);
		}
		public function createCreateChallengeRequest():CreateChallengeRequest
		{
			return new CreateChallengeRequest(gs);
		}
		public function createCreateTeamRequest():CreateTeamRequest
		{
			return new CreateTeamRequest(gs);
		}
		public function createDeclineChallengeRequest():DeclineChallengeRequest
		{
			return new DeclineChallengeRequest(gs);
		}
		public function createDeviceAuthenticationRequest():DeviceAuthenticationRequest
		{
			return new DeviceAuthenticationRequest(gs);
		}
		public function createDismissMessageRequest():DismissMessageRequest
		{
			return new DismissMessageRequest(gs);
		}
		public function createDismissMultipleMessagesRequest():DismissMultipleMessagesRequest
		{
			return new DismissMultipleMessagesRequest(gs);
		}
		public function createDropTeamRequest():DropTeamRequest
		{
			return new DropTeamRequest(gs);
		}
		public function createEndSessionRequest():EndSessionRequest
		{
			return new EndSessionRequest(gs);
		}
		public function createFacebookConnectRequest():FacebookConnectRequest
		{
			return new FacebookConnectRequest(gs);
		}
		public function createFindChallengeRequest():FindChallengeRequest
		{
			return new FindChallengeRequest(gs);
		}
		public function createFindMatchRequest():FindMatchRequest
		{
			return new FindMatchRequest(gs);
		}
		public function createFindPendingMatchesRequest():FindPendingMatchesRequest
		{
			return new FindPendingMatchesRequest(gs);
		}
		public function createGameCenterConnectRequest():GameCenterConnectRequest
		{
			return new GameCenterConnectRequest(gs);
		}
		public function createGetChallengeRequest():GetChallengeRequest
		{
			return new GetChallengeRequest(gs);
		}
		public function createGetDownloadableRequest():GetDownloadableRequest
		{
			return new GetDownloadableRequest(gs);
		}
		public function createGetLeaderboardEntriesRequest():GetLeaderboardEntriesRequest
		{
			return new GetLeaderboardEntriesRequest(gs);
		}
		public function createGetMessageRequest():GetMessageRequest
		{
			return new GetMessageRequest(gs);
		}
		public function createGetMyTeamsRequest():GetMyTeamsRequest
		{
			return new GetMyTeamsRequest(gs);
		}
		public function createGetPropertyRequest():GetPropertyRequest
		{
			return new GetPropertyRequest(gs);
		}
		public function createGetPropertySetRequest():GetPropertySetRequest
		{
			return new GetPropertySetRequest(gs);
		}
		public function createGetTeamRequest():GetTeamRequest
		{
			return new GetTeamRequest(gs);
		}
		public function createGetUploadUrlRequest():GetUploadUrlRequest
		{
			return new GetUploadUrlRequest(gs);
		}
		public function createGetUploadedRequest():GetUploadedRequest
		{
			return new GetUploadedRequest(gs);
		}
		public function createGooglePlayBuyGoodsRequest():GooglePlayBuyGoodsRequest
		{
			return new GooglePlayBuyGoodsRequest(gs);
		}
		public function createGooglePlayConnectRequest():GooglePlayConnectRequest
		{
			return new GooglePlayConnectRequest(gs);
		}
		public function createGooglePlusConnectRequest():GooglePlusConnectRequest
		{
			return new GooglePlusConnectRequest(gs);
		}
		public function createIOSBuyGoodsRequest():IOSBuyGoodsRequest
		{
			return new IOSBuyGoodsRequest(gs);
		}
		public function createJoinChallengeRequest():JoinChallengeRequest
		{
			return new JoinChallengeRequest(gs);
		}
		public function createJoinPendingMatchRequest():JoinPendingMatchRequest
		{
			return new JoinPendingMatchRequest(gs);
		}
		public function createJoinTeamRequest():JoinTeamRequest
		{
			return new JoinTeamRequest(gs);
		}
		public function createKongregateConnectRequest():KongregateConnectRequest
		{
			return new KongregateConnectRequest(gs);
		}
		public function createLeaderboardDataRequest():LeaderboardDataRequest
		{
			return new LeaderboardDataRequest(gs);
		}
		public function createLeaderboardsEntriesRequest():LeaderboardsEntriesRequest
		{
			return new LeaderboardsEntriesRequest(gs);
		}
		public function createLeaveTeamRequest():LeaveTeamRequest
		{
			return new LeaveTeamRequest(gs);
		}
		public function createListAchievementsRequest():ListAchievementsRequest
		{
			return new ListAchievementsRequest(gs);
		}
		public function createListBulkJobsAdminRequest():ListBulkJobsAdminRequest
		{
			return new ListBulkJobsAdminRequest(gs);
		}
		public function createListChallengeRequest():ListChallengeRequest
		{
			return new ListChallengeRequest(gs);
		}
		public function createListChallengeTypeRequest():ListChallengeTypeRequest
		{
			return new ListChallengeTypeRequest(gs);
		}
		public function createListGameFriendsRequest():ListGameFriendsRequest
		{
			return new ListGameFriendsRequest(gs);
		}
		public function createListInviteFriendsRequest():ListInviteFriendsRequest
		{
			return new ListInviteFriendsRequest(gs);
		}
		public function createListLeaderboardsRequest():ListLeaderboardsRequest
		{
			return new ListLeaderboardsRequest(gs);
		}
		public function createListMessageDetailRequest():ListMessageDetailRequest
		{
			return new ListMessageDetailRequest(gs);
		}
		public function createListMessageRequest():ListMessageRequest
		{
			return new ListMessageRequest(gs);
		}
		public function createListMessageSummaryRequest():ListMessageSummaryRequest
		{
			return new ListMessageSummaryRequest(gs);
		}
		public function createListTeamChatRequest():ListTeamChatRequest
		{
			return new ListTeamChatRequest(gs);
		}
		public function createListTeamsRequest():ListTeamsRequest
		{
			return new ListTeamsRequest(gs);
		}
		public function createListTransactionsRequest():ListTransactionsRequest
		{
			return new ListTransactionsRequest(gs);
		}
		public function createListVirtualGoodsRequest():ListVirtualGoodsRequest
		{
			return new ListVirtualGoodsRequest(gs);
		}
		public function createLogChallengeEventRequest():LogChallengeEventRequest
		{
			return new LogChallengeEventRequest(gs);
		}
		public function createLogEventRequest():LogEventRequest
		{
			return new LogEventRequest(gs);
		}
		public function createMatchDetailsRequest():MatchDetailsRequest
		{
			return new MatchDetailsRequest(gs);
		}
		public function createMatchmakingRequest():MatchmakingRequest
		{
			return new MatchmakingRequest(gs);
		}
		public function createNXConnectRequest():NXConnectRequest
		{
			return new NXConnectRequest(gs);
		}
		public function createPSNConnectRequest():PSNConnectRequest
		{
			return new PSNConnectRequest(gs);
		}
		public function createPsnBuyGoodsRequest():PsnBuyGoodsRequest
		{
			return new PsnBuyGoodsRequest(gs);
		}
		public function createPushRegistrationRequest():PushRegistrationRequest
		{
			return new PushRegistrationRequest(gs);
		}
		public function createQQConnectRequest():QQConnectRequest
		{
			return new QQConnectRequest(gs);
		}
		public function createRegistrationRequest():RegistrationRequest
		{
			return new RegistrationRequest(gs);
		}
		public function createRevokePurchaseGoodsRequest():RevokePurchaseGoodsRequest
		{
			return new RevokePurchaseGoodsRequest(gs);
		}
		public function createScheduleBulkJobAdminRequest():ScheduleBulkJobAdminRequest
		{
			return new ScheduleBulkJobAdminRequest(gs);
		}
		public function createSendFriendMessageRequest():SendFriendMessageRequest
		{
			return new SendFriendMessageRequest(gs);
		}
		public function createSendTeamChatMessageRequest():SendTeamChatMessageRequest
		{
			return new SendTeamChatMessageRequest(gs);
		}
		public function createSocialDisconnectRequest():SocialDisconnectRequest
		{
			return new SocialDisconnectRequest(gs);
		}
		public function createSocialLeaderboardDataRequest():SocialLeaderboardDataRequest
		{
			return new SocialLeaderboardDataRequest(gs);
		}
		public function createSocialStatusRequest():SocialStatusRequest
		{
			return new SocialStatusRequest(gs);
		}
		public function createSteamBuyGoodsRequest():SteamBuyGoodsRequest
		{
			return new SteamBuyGoodsRequest(gs);
		}
		public function createSteamConnectRequest():SteamConnectRequest
		{
			return new SteamConnectRequest(gs);
		}
		public function createTwitchConnectRequest():TwitchConnectRequest
		{
			return new TwitchConnectRequest(gs);
		}
		public function createTwitterConnectRequest():TwitterConnectRequest
		{
			return new TwitterConnectRequest(gs);
		}
		public function createUpdateMessageRequest():UpdateMessageRequest
		{
			return new UpdateMessageRequest(gs);
		}
		public function createViberConnectRequest():ViberConnectRequest
		{
			return new ViberConnectRequest(gs);
		}
		public function createWeChatConnectRequest():WeChatConnectRequest
		{
			return new WeChatConnectRequest(gs);
		}
		public function createWindowsBuyGoodsRequest():WindowsBuyGoodsRequest
		{
			return new WindowsBuyGoodsRequest(gs);
		}
		public function createWithdrawChallengeRequest():WithdrawChallengeRequest
		{
			return new WithdrawChallengeRequest(gs);
		}
		public function createXBOXLiveConnectRequest():XBOXLiveConnectRequest
		{
			return new XBOXLiveConnectRequest(gs);
		}
		public function createXboxOneConnectRequest():XboxOneConnectRequest
		{
			return new XboxOneConnectRequest(gs);
		}
	}
}

