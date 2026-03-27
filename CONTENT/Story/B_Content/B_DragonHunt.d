var int DragonHuntStart_Once;

func void B_DragonHunt()
{
	if(EnterOW_Kapitel4 == TRUE && DragonHuntStart_Once != TRUE)
	{
		Log_CreateTopic (TOPIC_Dragonhunter, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_Dragonhunter, LOG_RUNNING);
		B_LogEntry (TOPIC_Dragonhunter,"Die grosse Drachenjagd ist eröffnet und hat vermutlich viele Möchtegernabenteurer ins Minental gelockt. Ich kann nur hoffen, dass sie mir nicht im Wege stehen."); 


		if(DragonHunt_OriginalPass == TRUE)
		{
			Ext_RemoveVobTree("OW_ABANDONEDMINE_MOLERATS");
			Ext_InsertVobTree("VOBTREE/OW_DRAGONHUNTERS_MINE.ZEN");

			AI_Teleport(PC_Fighter_DJG, "OW_PATH_DJG_000");
			B_StartOtherRoutine(PC_Fighter_DJG,"PreStart");

			AI_Teleport(DJG_713_Biff, "OW_PATH_DJG_000");
			B_StartOtherRoutine(DJG_713_Biff,"PreStart");

			AI_Teleport(DJG_712_Hokurn, "OW_PATH_DJG_000");
			B_StartOtherRoutine(DJG_712_Hokurn,"PreStart");

			AI_Teleport(DJG_711_Godar, "OW_PATH_DJG_000");
			B_StartOtherRoutine(DJG_711_Godar,"PreStart");

			AI_Teleport(DJG_710_Kjorn, "OW_PATH_DJG_000");
			B_StartOtherRoutine(DJG_710_Kjorn,"PreStart");

			AI_Teleport(DJG_708_Kurgan, "OW_PATH_DJG_000");
			B_StartOtherRoutine(DJG_708_Kurgan,"PreStart");
		}
		else if(DragonHunt_SecondPass == TRUE)
		{
			Ext_InsertVobTree("VOBTREE/OW_DRAGONHUNTERS_PASS.ZEN");

			AI_Teleport(PC_Fighter_DJG, "OW_PATH_ORETRAIL_2_008");
			B_StartOtherRoutine(PC_Fighter_DJG,"StartPass");

			AI_Teleport(DJG_713_Biff, "OW_PATH_ORETRAIL_2_008");
			B_StartOtherRoutine(DJG_713_Biff,"StartPass");

			AI_Teleport(DJG_712_Hokurn, "OW_PATH_ORETRAIL_2_008");
			B_StartOtherRoutine(DJG_712_Hokurn,"StartPass");

			AI_Teleport(DJG_711_Godar, "OW_PATH_ORETRAIL_2_008");
			B_StartOtherRoutine(DJG_711_Godar,"StartPass");

			AI_Teleport(DJG_710_Kjorn, "OW_PATH_ORETRAIL_2_008");
			B_StartOtherRoutine(DJG_710_Kjorn,"StartPass");

			AI_Teleport(DJG_708_Kurgan, "OW_PATH_ORETRAIL_2_008");
			B_StartOtherRoutine(DJG_708_Kurgan,"StartPass");
		};

		DragonHuntStart_Once = TRUE;
	};
};


func void EnterThroughOriginalPass()
{
	if(Kapitel == 4)
	{
		if(DragonHunt_OriginalPass != TRUE)
		{
			DragonHunt_OriginalPass = TRUE;
			B_DragonHunt();
		};
	};
};
func void EnterThroughSecondPass()
{
	if(Kapitel == 4)
	{
		if(DragonHunt_SecondPass != TRUE)
		{
			DragonHunt_SecondPass = TRUE;
			B_DragonHunt();
		};
	};
};