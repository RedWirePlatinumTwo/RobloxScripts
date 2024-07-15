local hook 
local Services = {} Services[1] = 'Workspace' Services[2] = 'RunService' Services[3] = 'GuiService' Services[4] = 'Stats' Services[5] = 'TimerService' Services[6] = 'SoundService' Services[7] = 'VideoCaptureService' Services[8] = 'NonReplicatedCSGDictionaryService' Services[9] = 'CSGDictionaryService' Services[10] = 'LogService' Services[11] = 'ContentProvider' Services[12] = 'KeyframeSequenceProvider' Services[13] = 'AnimationClipProvider' Services[14] = 'Chat' Services[15] = 'MarketplaceService' Services[16] = 'Players' Services[17] = 'PointsService' Services[18] = 'AdService' Services[19] = 'HttpRbxApiService' Services[20] = 'NotificationService' Services[21] = 'ReplicatedFirst' Services[22] = 'TweenService' Services[23] = 'MaterialService' Services[24] = 'TextService' Services[25] = 'PlayerEmulatorService' Services[26] = 'CorePackages' Services[27] = 'StudioData' Services[28] = 'SharedTableRegistry' Services[29] = 'StarterPlayer' Services[30] = 'StarterPack' Services[31] = 'StarterGui' Services[32] = 'CoreGui' Services[33] = 'LocalizationService' Services[34] = 'CloudLocalizationTable' Services[35] = 'PolicyService' Services[36] = 'TeleportService' Services[37] = 'JointsService' Services[38] = 'CollectionService' Services[39] = 'PhysicsService' Services[40] = 'BadgeService' Services[41] = 'GeometryService' Services[42] = 'FriendService' Services[43] = 'InsertService' Services[44] = 'GamePassService' Services[45] = 'Debris' Services[46] = 'CookiesService' Services[47] = 'UserInputService' Services[48] = 'KeyboardService' Services[49] = 'MouseService' Services[50] = 'VRService' Services[51] = 'ContextActionService' Services[52] = 'ScriptService' Services[53] = 'AssetService' Services[54] = 'TouchInputService' Services[55] = 'BrowserService' Services[56] = 'AppStorageService' Services[57] = 'AnalyticsService' Services[58] = 'ScriptContext' Services[59] = 'RbxAnalyticsService' Services[60] = 'HttpService' Services[61] = 'Lighting' Services[62] = '' Services[63] = 'Selection' Services[64] = 'ScriptRegistrationService' Services[65] = 'RuntimeScriptService' Services[66] = 'RobloxReplicatedStorage' Services[67] = 'IXPService' Services[68] = 'MemStorageService' Services[69] = 'GamepadService' Services[70] = 'MeshContentProvider' Services[71] = 'SolidModelContentProvider' Services[72] = 'HSRDataContentProvider' Services[73] = 'LodDataService' Services[74] = '' Services[75] = '' Services[76] = '' Services[77] = '' Services[78] = 'TextBoxService' Services[79] = 'ControllerService' Services[80] = 'MessageBusService' Services[81] = 'NetworkClient' Services[82] = 'ChangeHistoryService' Services[83] = 'Visit' Services[84] = 'GuidRegistryService' Services[85] = 'PermissionsService' Services[86] = 'Teams' Services[87] = 'ReplicatedStorage' Services[88] = 'TestService' Services[89] = 'SocialService' Services[90] = 'TextChatService' Services[91] = 'SafetyService' Services[92] = 'ProximityPromptService' Services[93] = 'AvatarChatService' Services[94] = 'VoiceChatService' Services[95] = 'FacialAnimationStreamingServiceV2' Services[96] = 'RobloxServerStorage' Services[97] = 'EventIngestService' Services[98] = 'CaptureService' Services[99] = 'GroupService' Services[100] = 'FaceAnimatorService' Services[101] = 'SessionService' Services[102] = 'HapticService' Services[103] = 'ExperienceAuthService' Services[104] = 'AvatarEditorService' Services[105] = 'PlatformFriendsService' Services[106] = 'RtMessagingService' Services[107] = 'DataStoreService' Services[108] = 'ServerScriptService' Services[109] = 'ServerStorage' Services[110] = '' Services[111] = 'SpawnerService' Services[112] = 'PathfindingService' Services[113] = 'TemporaryCageMeshProvider'
hook = hookmetamethod(game, "__index", function(self, val)
	if self == game and table.find(Services, val) and checkcaller() then
		return game:GetService(val)
	else
		return hook(self,val)
	end
end)