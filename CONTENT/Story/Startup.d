// *******************************************************************
// Startup und Init Funktionen der Level-zen-files
// -----------------------------------------------
// Die STARTUP-Funktionen werden NUR beim ersten Betreten eines Levels 
// (nach NewGame) aufgerufen, die INIT-Funktionen jedesmal
// Die Funktionen müssen so heissen wie die zen-files
// *******************************************************************

// *********
// GLOBAL
// *********

func void STARTUP_GLOBAL()
{
	// wird fuer jede Welt aufgerufen (vor STARTUP_<LevelName>)
	Game_InitGerman();
};

func void INIT_GLOBAL()
{
	// wird fuer jede Welt aufgerufen (vor INIT_<LevelName>)
	Game_InitGerman();
};


// *********
// Testlevel
// *********


func void STARTUP_Testlevel ()
{
	Wld_InsertNpc	(PC_REVIVED,	"SPAWN_PC_REVIVED"); 
	//Wld_InsertNpc	(SH,	"SPAWN_PC_HERO"); 

	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_01");
	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_02");
	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_03");
	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_04");
	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_05");
	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_06");
	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_07");
	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_08");
	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_09");
	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_10");
	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_11");
	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_12");
	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_13");
	REV_SetObjectRoutine_Fire ("TESTLEVEL_MOBFIRE_14");
};

	func void INIT_SUB_Testlevel ()
	{
	};

func void INIT_Testlevel ()
{
	B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();
	
	INIT_SUB_Testlevel();
};





	////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////
		// *************
		// OLDWORLD
		// *************
	////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////

func void STARTUP_OLDCAMP ()
{
	// Foltermeister
	//------------------------------------------
	Wld_InsertNpc	(GRD_4100_Brutus,"OC1"); 
	
	// Gefangene im Kerker
	//------------------------------------------
	Wld_InsertNpc	(STRF_1100_Straefling,"OC1"); 
	Wld_InsertNpc	(STRF_1101_Draal	 ,"OC1"); 
	Wld_InsertNpc	(STRF_1102_Straefling,"OC1"); 
	Wld_InsertNpc	(STRF_1103_Straefling,"OC1"); 
	Wld_InsertNpc	(PC_FIGHTER_OW		 ,"OC1"); 
	
	// Kerker Wache 
	//------------------------------------------
	Wld_InsertNpc	(PAL_261_Gerold,"OC1"); 
	
	// Vorstand 
	//------------------------------------------
	Wld_InsertNpc	(PAL_250_Garond,"OC1"); 
	Wld_InsertNpc	(PAL_251_Oric,"OC1"); 
	Wld_InsertNpc	(PAL_252_Parcival,"OC1"); 
	
	// Koch und Wachen EBR Haus
	//------------------------------------------
	Wld_InsertNpc	(PAL_262_Wache,"OC1"); 
	Wld_InsertNpc	(PAL_263_Wache,"OC1"); 
	Wld_InsertNpc	(STRF_1107_Chef,"OC1"); 
	
	// Haupt- Tor  Wachen
	//------------------------------------------
	Wld_InsertNpc	(PAL_253_Wache,"OC1"); 
	Wld_InsertNpc	(PAL_254_Wache,"OC1"); 
	
	// Training, Abends Campfire
	//------------------------------------------
	Wld_InsertNpc	(PAL_255_Ritter,"OC1"); 
	Wld_InsertNpc	(PAL_256_Ritter,"OC1"); 
	Wld_InsertNpc	(PAL_257_Ritter,"OC1"); 
	Wld_InsertNpc	(PAL_258_Keroloth,"OC1"); 
	
	// Palisadenwachen
	//------------------------------------------
	Wld_InsertNpc	(PAL_267_Sengrath,"OC1"); 
	Wld_InsertNpc	(PAL_268_Udar,"OC1"); 

	Wld_InsertNpc	(PAL_264_Ritter,"OC1"); 
	Wld_InsertNpc	(PAL_265_Wache,"OC1"); 
	Wld_InsertNpc	(PAL_266_Ritter,"OC1"); 
	
	// Magier
	//------------------------------------------
	Wld_InsertNpc	(PC_Mage_OW,"OC1"); 
	
	// sonstige Typen 
	//------------------------------------------
	Wld_InsertNpc	(PAL_260_Tandor,"OC1"); // Lagerhaus Wache 
	
	Wld_InsertNpc	(Sheep,"FP_SLEEP_OC_SHEEP_01"); 
	Wld_InsertNpc	(Sheep,"FP_SLEEP_OC_SHEEP_02"); 
	Wld_InsertNpc	(Sheep,"FP_SLEEP_OC_SHEEP_03"); 
	
	Wld_InsertNpc	(PAL_269_Ritter,"OC1"); 
	Wld_InsertNpc	(PAL_270_Ritter,"OC1"); 
	Wld_InsertNpc	(PAL_271_Ritter,"OC1"); 

	Wld_InsertNpc	(PAL_272_Ritter,"OC1"); 
	
	Wld_InsertNpc	(GRD_4101_Waffenknecht,"OC1"); 
	Wld_InsertNpc	(GRD_4102_Waffenknecht,"OC1"); 
	Wld_InsertNpc	(GRD_4103_Waffenknecht,"OC1"); 
	Wld_InsertNpc	(GRD_4104_Waffenknecht,"OC1"); 
	Wld_InsertNpc	(GRD_4105_Waffenknecht,"OC1"); 
	Wld_InsertNpc	(GRD_4106_Dobar,"OC1");
	Wld_InsertNpc	(GRD_4107_Parlaf,"OC1");
	Wld_InsertNpc	(GRD_4108_Engor,"OC1");
	Wld_InsertNpc	(GRD_4109_Waffenknecht,"OC1"); 
	
	Wld_InsertNpc	(GRD_4140_Waffenknecht,"OC1"); 
	Wld_InsertNpc	(GRD_4141_Waffenknecht,"OC1"); 
	Wld_InsertNpc	(GRD_4142_Waffenknecht,"OC1"); 
	Wld_InsertNpc	(GRD_4143_Haupttorwache,"OC1");
	Wld_InsertNpc	(GRD_4144_Waffenknecht,"OC1");

	Wld_InsertNpc	(GRD_4145_Waffenknecht,"OC1");
	Wld_InsertNpc	(GRD_4146_Waffenknecht,"OC1");
	Wld_InsertNpc	(GRD_4147_Waffenknecht,"OC1");

	Wld_InsertNpc	(PAL_273_Ritter,"OC1");
	Wld_InsertNpc	(PAL_274_Ritter,"OC1"); 
	
	// arbeitende STRF + Wache
	//------------------------------------------
	Wld_InsertNpc	(STRF_1108_Straefling,"OC1"); 
	Wld_InsertNpc	(STRF_1109_Straefling,"OC1");
	Wld_InsertNpc	(PAL_259_Wache,"OC1"); 	


	Wld_InsertNpc	(NONE_1000_Gordon,"OC1");



	// Old Camp (Outer Ring)
	Wld_InsertNpc	(OrcWarrior_Roam,"OC1");	
	Wld_InsertNpc	(OrcWarrior_Roam,"OC1");	

	Wld_InsertNpc   (OrcElite_Roam,"OCR_MAINGATE_SQUARE");	
	Wld_InsertNpc	(OrcDog,"OCR_MAINGATE_SQUARE");
	Wld_InsertNpc	(OrcDog,"OCR_MAINGATE_SQUARE");

	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_GATE");	
	Wld_InsertNpc   (OrcElite_Sit,"OC_ORC_CAMPFIRE_GATE");	
	Wld_InsertNpc   (OrcElite_Sit,"OC_ORC_CAMPFIRE_GATE");

	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_9_ROAM");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_9_ROAM");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_9_ROAM");	
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_9_ROAM");
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_9_ROAM");
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_9_ROAM");	

	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_12");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_13");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_HUT_15_TO_OUTSIDE");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_TO_HUT_20");
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_TO_HUT_20");	
	Wld_InsertNpc   (OrcElite_Roam,"OCR_HUT_15_OUTSIDE");	
	Wld_InsertNpc   (OrcElite_Roam,"OCR_HUT_15_OUTSIDE");

	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_ARENA_HANGAROUND");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_ARENA_HANGAROUND");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_27");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_27");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_25");
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_25");	
	Wld_InsertNpc   (OrcElite_Roam,"OCR_OUTSIDE_ARENA_HANGAROUND");	
	Wld_InsertNpc   (OrcElite_Roam,"OCR_OUTSIDE_ARENA_HANGAROUND");
	Wld_InsertNpc   (OrcShaman_Sit,"OCR_OUTSIDE_ARENA_BARONS_HUT");	

	Wld_InsertNpc   (OrcShaman_Sit,"OCR_CAMPFIRE_I_2");
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_ARENABATTLE_OUTSIDE");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_ARENABATTLE_OUTSIDE");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_ARENABATTLE_OUTSIDE");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_ARENABATTLE_OUTSIDE");	

	Wld_InsertNpc	(OrcWarrior_Roam,"OCR_OUTSIDE_HUT_30");	
	Wld_InsertNpc	(OrcWarrior_Roam,"OCR_OUTSIDE_HUT_30");	
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_30");
	Wld_InsertNpc	(OrcDog,"OCR_HUT_35");
	Wld_InsertNpc	(OrcDog,"OCR_HUT_34");
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_38");

	Wld_InsertNpc   (OrcElite_Roam,"OC_ORCTARAN_WAY_02");	
	Wld_InsertNpc   (OrcElite_Roam,"OC_ORCTARAN_WAY_02");	

	Wld_InsertNpc   (OrcElite_Sit,"OCR_FALLENTOWER_02");	
	Wld_InsertNpc	(OrcDog,"OCR_FALLENTOWER_02");

	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_79");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_79");
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_79");

	Wld_InsertNpc	(OrcShaman_Sit,"OC2");	
	Wld_InsertNpc   (OrcElite_Roam,"OCR_NORTHGATE_ADVANCE");	
	Wld_InsertNpc   (OrcElite_Roam,"OCR_NORTHGATE_ADVANCE");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_NORTHGATE_ADVANCE");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_NORTHGATE_ADVANCE");	
	Wld_InsertNpc	(OrcDog,"OCR_NORTHGATE_ADVANCE");
	Wld_InsertNpc	(OrcDog,"OCR_NORTHGATE_ADVANCE");

	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_NORTHGATE_WALL");	
	Wld_InsertNpc	(OrcDog,"OCR_NORTHGATE_WALL");

	Wld_InsertNpc	(OrcDog,"OCR_NORTHGATE_RAMP_BELOW");
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_Z4");
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_43B");
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_43B");

	Wld_InsertNpc	(OrcShaman_Sit,"OCR_OUTSIDE_HUT_53");
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_53");	
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_53");
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_TO_HUT_51");	
	Wld_InsertNpc	(OrcDog,"OCR_TO_HUT_51");

	Wld_InsertNpc   (OrcElite_Roam,"OCR_OUTSIDE_HUT_47");
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_47");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_47");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_MARKETPLACE_SCAVENGER");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_MARKETPLACE_SCAVENGER");	
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_46");	
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_46");	
	Wld_InsertNpc	(OrcDog,"OCR_WASH_8");

	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_CAMPFIRE_F_1");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_CAMPFIRE_F_1");	

	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_65");	
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_65");

	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_65");	
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_65");

	Wld_InsertNpc   (OrcElite_Roam,"OCR_SMALLTALK_A_CAMPFIRE_D");	
	Wld_InsertNpc   (OrcElite_Roam,"OC_MOAT_21");	
	Wld_InsertNpc	(OrcDog,"OCR_SMALLTALK_A_CAMPFIRE_D");	
	Wld_InsertNpc	(OrcDog,"OC_MOAT_22");	
	Wld_InsertNpc	(OrcDog,"OC_MOAT_22");

	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_CAMPFIRE_D_2");
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_CAMPFIRE_D_2");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_70");	
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_70");

	Wld_InsertNpc   (OrcWarrior_Roam,"OCR_OUTSIDE_HUT_4");	
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_4");
	Wld_InsertNpc	(OrcDog,"OCR_OUTSIDE_HUT_4");

/* 	
	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_002");	
	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_002");	
	Wld_InsertNpc   (OrcElite_Sit,"OC_ORC_CAMPFIRE_002");

	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_003");	
	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_003");	
	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_004");	

	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_005");	
	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_005");	
	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_005");	

	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_006");	
	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_006");	
	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_007");	

	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_008");	
	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_008");	

	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_009");	
	Wld_InsertNpc   (OrcElite_Sit,"OC_ORC_CAMPFIRE_009");	
	Wld_InsertNpc   (OrcElite_Sit,"OC_ORC_CAMPFIRE_009");	
	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_009");	

	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_011");	
	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_011");	

	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_012");	
	Wld_InsertNpc   (OrcElite_Sit,"OC_ORC_CAMPFIRE_012");	
	Wld_InsertNpc   (OrcElite_Sit,"OC_ORC_CAMPFIRE_012");

	Wld_InsertNpc   (OrcShaman_Sit,"OC_ORC_CAMPFIRE_013");	 
*/



	Wld_InsertNpc	(YRat,"FP_MEATBUG_SPAWN_1");
	Wld_InsertNpc	(YRat,"FP_MEATBUG_SPAWN_2");
	Wld_InsertNpc	(YRat,"FP_MEATBUG_SPAWN_3");
	Wld_InsertNpc	(YRat,"FP_MEATBUG_SPAWN_4");
	Wld_InsertNpc	(YRat,"FP_MEATBUG_SPAWN_5");
	Wld_InsertNpc	(YRat,"FP_MEATBUG_SPAWN_6");


	// Old Camp (Castle)
	Wld_InsertNpc	(MeatbugIndoor,"FP_MEATBUG_SPAWN_7");
	Wld_InsertNpc	(MeatbugIndoor,"FP_MEATBUG_SPAWN_8");
	Wld_InsertNpc	(MeatbugIndoor,"FP_MEATBUG_SPAWN_9");
	Wld_InsertNpc	(MeatbugIndoor,"FP_MEATBUG_SPAWN_10");
	Wld_InsertNpc	(MeatbugIndoor,"FP_MEATBUG_SPAWN_11");
	Wld_InsertNpc	(MeatbugIndoor,"FP_MEATBUG_SPAWN_12");
	Wld_InsertNpc	(MeatbugIndoor,"FP_MEATBUG_SPAWN_13");


	Wld_InsertItem (ItMi_GornsTreasure_MIS,"FP_ITEM_GORN");
	Wld_InsertItem (ItKE_ErzbaronFlur,"FP_ITEM_OC_01");
	Wld_InsertItem (ItKE_ErzbaronRaum,"FP_ITEM_OC_02");
};

	func void INIT_SUB_OLDCAMP ()
	{
	// ------ ROOMS ------
		Wld_AssignRoomToGuild("hh1", 	GIL_PUBLIC); 		// Paladin Building
		Wld_AssignRoomToGuild("hh2", 	GIL_PUBLIC);
		Wld_AssignRoomToGuild("hh3", 	GIL_PUBLIC);
		Wld_AssignRoomToGuild("hhmh1", 	GIL_PUBLIC);
		Wld_AssignRoomToGuild("hh4",	GIL_PAL); 
		Wld_AssignRoomToGuild("hh5",	GIL_PAL);
		Wld_AssignRoomToGuild("hh7",	GIL_PAL);
		Wld_AssignRoomToGuild("hh8",	GIL_PAL);

		Wld_AssignRoomToGuild("ki1", 	GIL_PUBLIC); 		// Chapel
		Wld_AssignRoomToGuild("ki2", 	GIL_PUBLIC);
		Wld_AssignRoomToGuild("ki3", 	GIL_PUBLIC);

		Wld_AssignRoomToGuild("eg1",	GIL_PUBLIC); 		// Sleeping quarters
		Wld_AssignRoomToGuild("eg2",	GIL_PUBLIC);
		Wld_AssignRoomToGuild("eg3",	GIL_MIL);
		Wld_AssignRoomToGuild("eg4",	GIL_PUBLIC);
		Wld_AssignRoomToGuild("eg5",	GIL_MIL);

		Wld_AssignRoomToGuild("Kel1",	GIL_PUBLIC);		// Prison
		Wld_AssignRoomToGuild("Kel2",	GIL_PUBLIC);
		Wld_AssignRoomToGuild("Kel3",	GIL_PUBLIC);
		Wld_AssignRoomToGuild("Kel4",	GIL_PUBLIC);
		Wld_AssignRoomToGuild("Kel5",	GIL_PUBLIC);
		Wld_AssignRoomToGuild("Kel6",	GIL_PUBLIC);
		Wld_AssignRoomToGuild("Kel7",	GIL_PUBLIC);
		Wld_AssignRoomToGuild("Kel8",	GIL_PUBLIC);
		Wld_AssignRoomToGuild("Kel9",	GIL_MIL);			// Treasury
		Wld_AssignRoomToGuild("Kel10",	GIL_MIL);
		Wld_AssignRoomToGuild("Kel11",	GIL_PUBLIC);
		
		Wld_AssignRoomToGuild("he1", 	GIL_PUBLIC); 		// Main Gate
		Wld_AssignRoomToGuild("he2", 	GIL_PUBLIC);
		Wld_AssignRoomToGuild("he3", 	GIL_PUBLIC);

		Wld_AssignRoomToGuild("wg1",	GIL_PUBLIC);		// Link between Sleeping quarters and Main Gate
		Wld_AssignRoomToGuild("wg3",	GIL_MIL);			// Link between Paladin building and ruined tower
		
		Wld_AssignRoomToGuild("tu1", 	GIL_PUBLIC); 		// Kitchen in Tower
		Wld_AssignRoomToGuild("tu2",	GIL_MIL); 			// Ruined Tower

		Wld_AssignRoomToGuild("st",		GIL_PUBLIC); 		// Store
		Wld_AssignRoomToGuild("sthaus",	GIL_PUBLIC);

	
	// ------ TRIGGERS ------
		// Old Camp
		Wld_SendTrigger("EVT_OC_INNERMAINGATE");

	// ------ OBJECTROUTINE ------
		// Old Camp
		REV_SetObjectRoutine_Fire ("OC_FIREPLACE_HIGH_01");
		REV_SetObjectRoutine_Fire ("OC_FIREPLACE_HIGH_02");
		REV_SetObjectRoutine_Fire ("OC_FIREPLACE_HIGH_03");
		REV_SetObjectRoutine_Fire ("OC_FIREPLACE_HIGH_04");
		REV_SetObjectRoutine_Fire ("OC_FIREPLACE_HIGH2_05");
		REV_SetObjectRoutine_Fire ("OC_FIREPLACE_HIGH2_08");
		REV_SetObjectRoutine_Fire ("OC_FIREPLACE_HIGH_05");
		REV_SetObjectRoutine_Fire ("OC_FIREPLACE_HIGH_06");
		REV_SetObjectRoutine_Fire ("OC_FIREPLACE_HIGH_07");
		REV_SetObjectRoutine_Fire ("OC_FIREPLACE_HIGH2_06");
		REV_SetObjectRoutine_Fire ("OC_FIREPLACE_HIGH2_07");
		REV_SetObjectRoutine_Fire ("OC_FIREPLACE_HIGH_PRAY_01");
		REV_SetObjectRoutine_Fire ("OC_FIREPLACE_HIGH_PRAY_02");
	};

	func void INIT_OLDCAMP ()
	{
		B_InitMonsterAttitudes ();
		B_InitGuildAttitudes();
		B_InitNpcGlobals ();    
		
		INIT_SUB_OLDCAMP();
	};

func void STARTUP_NEWCAMP ()
{
	// New Camp (Rice Fields)
	Wld_InsertNpc		(Giant_Rat,"NC_PATH86");
	Wld_InsertNpc		(Giant_Rat,"NC_PATH52");
	Wld_InsertNpc		(Giant_Rat,"NC_RICEBUNKER_10");
	Wld_InsertNpc		(Giant_Rat,"NC_RICEBUNKER_04");


	// New Camp (Lake)
	Wld_InsertNpc		(DraconianGreen,"NC_SPAWN_DAM_LURKER");
	Wld_InsertNpc		(Draconian,"NC_BEACH_007");
	Wld_InsertNpc		(Draconian,"NC_BEACH_008");
	Wld_InsertNpc		(Draconian,"NC_BEACH_013");
	Wld_InsertNpc		(Draconian,"NC_BEACH_010");
	Wld_InsertNpc		(Draconian,"NC_BEACH_012");	
	Wld_InsertNpc		(DraconianGold,"NC_BEACH_011");
	Wld_InsertNpc		(Draconian,"NC_BEACH_005");
	Wld_InsertNpc		(Draconian,"NC_BEACH_014");
	Wld_InsertNpc		(Draconian,"NC_BEACH_004");
	Wld_InsertNpc		(Draconian,"NC_BEACH_003");
	Wld_InsertNpc		(Draconian,"NC_BEACH_015");
	Wld_InsertNpc		(Draconian,"NC_BEACH_002");
	Wld_InsertNpc		(Draconian,"NC_BEACH_018");
	Wld_InsertNpc		(Draconian,"NC_BEACH_001");
	Wld_InsertNpc		(Draconian,"NC_BEACH_006");
	Wld_InsertNpc		(Draconian,"NC_BEACH_009");
	Wld_InsertNpc		(Draconian,"NC_BEACH_011");
	Wld_InsertNpc		(Draconian,"NC_BEACH_016");
	Wld_InsertNpc		(Draconian,"NC_BEACH_017");

	Wld_InsertNpc		(Alligator,"NC_PATH_PEASANT");
	Wld_InsertNpc		(Alligator,"NC_PATH_PEASANT_OUTSIDE4");
	Wld_InsertNpc		(Alligator,"NC_PATH_PEASANT_OUTSIDE8");
	Wld_InsertNpc		(Alligator,"NC_PATH_PEASANT_OUTSIDE6");

	Wld_InsertNpc		(Lurker,"NC_PATH_PEASANT5");
	Wld_InsertNpc		(Lurker,"NC_PATH_PEASANT5");

	Wld_InsertNpc		(Lurker,"NC_PATH_PEASANT_OUTSIDE8_WASH");
	Wld_InsertNpc		(Lurker,"NC_PATH_PEASANT_OUTSIDE8_WASH");
	
	Wld_InsertNpc		(IceGolem_Sylvio1,"OW_PATH_073");
	Wld_InsertNpc		(IceGolem_Sylvio2,"NC_WATERFALL_TOP01");


	// New Camp (Cave)
	Wld_InsertNpc		(StoneGolem,"NC_PLACE02");

	Wld_InsertNpc		(Wisp,"NC_KDW01_IN");
	Wld_InsertNpc		(Wisp,"NC_KDW02_IN");
	Wld_InsertNpc		(Wisp,"NC_KDW03_IN");
	Wld_InsertNpc		(Wisp,"NC_KDW04_IN");
	Wld_InsertNpc		(Wisp,"NC_KDW05_IN");
	Wld_InsertNpc		(Wisp,"NC_KDW06_IN");

	Wld_InsertItem		(ITMW_REVIVED_2H_MAGESTAFF_GOOD_02,"FP_ITEM_OW_00");
};

	func void INIT_SUB_NEWCAMP ()
	{
	};

	func void INIT_NEWCAMP ()
	{
		B_InitMonsterAttitudes ();
		B_InitGuildAttitudes();
		B_InitNpcGlobals ();    
		
		INIT_SUB_NEWCAMP();
	};

func void STARTUP_PSICAMP ()
{
	// Psi Camp
	Wld_InsertNpc		(Skeleton_Templar,"PSI_GATE_GUARD_1");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_GATE_GUARD_2");

	Wld_InsertNpc		(Skeleton_Templar,"PSI_LABOR_GUARD_2");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_LABOR_GUARD_1");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_HERB_SHOP_01");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_PATH_TEMPLE_7");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_PATH_TEMPLE_6");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_PATH_TEMPLE_3");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_PATH_2_2_GUARD");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_PATH_2_4");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_HERB_PLACE_2");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_PATH_2_8");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_MEETINGPOINT");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_GUARD2");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_GUARD3");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_GUARD3_MOVEMENT3");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_PATH_9_10");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_26_HUT_EX");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_SWAMP_0");
	Wld_InsertNpc		(Skeleton_Templar,"PSI_PATH_102");

	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_SPEECH");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_GUARD_TREE_EX");	
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_2_0");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_2_1");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_1_HUT_EX");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_1_2");	
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PLACE");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_TREE_EX");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_HANGAROUND");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_2_6");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_5_HUT_EX");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_16_HUT_EX");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_5_1");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_6_1");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_2_9");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_2_14_2");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_2_14");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_2_13");

	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_27_HUT_EX");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_MEETINGPOINT_2");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_25_HUT_EX");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_24_HUT_EX");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_24_HUT_EX_SMALLTALK");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_SWAMP_1");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_SWAMP_6");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_SMITH_GUARD");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_WALK_05");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_SWAMP_7");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_LABOR_BASEMENT_1");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_12_8");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_LABOR_DOWN");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_32_HUT_EX");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_31_HUT_EX");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_WASH2");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_9_1");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_11_3");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_11_5");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_VIEWPOINT");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_TEACH_1");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_7_2");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_7_3");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_17_HUT_EX");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_TATTOO");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_11_HUT_EX");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_PATH_4_4");
	Wld_InsertNpc		(DMT_DementorAmbient,"PSI_22_HUT_EX_GUARD");


	// Swamp
	Wld_InsertNpc		(SwampDrone,"PATH_TAKE_HERB_06");
	Wld_InsertNpc		(SwampBiter,"PATH_TAKE_HERB_06");
	Wld_InsertNpc		(SwampBiter,"PATH_TAKE_HERB_06");
	Wld_InsertNpc		(SwampBiter,"PATH_TAKE_HERB_06");

	Wld_InsertNpc		(SwampRat,"PATH_TAKE_HERB_02");
	Wld_InsertNpc		(SwampRat,"PATH_TAKE_HERB_02");
	Wld_InsertNpc		(SwampRat,"PATH_TAKE_HERB_02");

	Wld_InsertNpc		(Swampshark,"PATH_AROUND_PSI20");

	Wld_InsertNpc		(SwampGolem,"PATH_AROUND_PSI15");

	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY11_SPAWN01");
	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY11_SPAWN01");
	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY11_SPAWN01");

	Wld_InsertNpc		(SwampDrone,"OW_PATH_BLOODFLY10_SPAWN01");
	Wld_InsertNpc		(SwampDrone,"OW_PATH_BLOODFLY09_SPAWN01");

	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY12_SPAWN01");
	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY12_SPAWN01");
	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY12_SPAWN01");

	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY08_SPAWN01");
	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY08_SPAWN01");
	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY08_SPAWN01");

	Wld_InsertNpc		(Swampshark,"PATH_AROUND_PSI19");

	Wld_InsertNpc		(SwampGolem,"PATH_AROUND_PSI21");

	Wld_InsertNpc		(Swampshark,"PATH_AROUND_PSI16");

	Wld_InsertNpc		(Swampshark,"PATH_AROUND_PSI18");

	Wld_InsertNpc		(Swampshark,"PATH_AROUND_PSI11");

	Wld_InsertNpc		(SwampGolem,"PATH_AROUND_PSI10");

	Wld_InsertNpc		(Swampshark,"PATH_AROUND_PSI17");

	Wld_InsertNpc		(SwampDrone,"PATH_TAKE_HERB_2_1");
	Wld_InsertNpc		(Bloodfly,"PATH_TAKE_HERB_2_1");
	Wld_InsertNpc		(Bloodfly,"PATH_TAKE_HERB_2_1");
	Wld_InsertNpc		(Bloodfly,"PATH_TAKE_HERB_2_1");

	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY11_SPAWN01");
	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY11_SPAWN01");
	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY11_SPAWN01");

	Wld_InsertNpc		(SwampRat,"PATH_TAKE_HERB_MOVEMENT2");
	Wld_InsertNpc		(SwampRat,"PATH_TAKE_HERB_MOVEMENT2");
	Wld_InsertNpc		(SwampRat,"PATH_TAKE_HERB_MOVEMENT2");

	Wld_InsertNpc		(SwampDrone,"OW_PATH_BLOODFLY13_SPAWN01");
	Wld_InsertNpc		(SwampDrone,"OW_PATH_BLOODFLY13_SPAWN01");

	Wld_InsertNpc		(Bloodfly,"PATH_TAKE_BLOODFLY_SPAWN");
	Wld_InsertNpc		(Bloodfly,"PATH_TAKE_BLOODFLY_SPAWN");
	Wld_InsertNpc		(Bloodfly,"PATH_TAKE_BLOODFLY_SPAWN");


	Wld_InsertNpc		(SwampGolem,"PATH_AROUND_PSI18");
	Wld_InsertNpc		(SwampGolem,"PATH_AROUND_PSI19");

	Wld_InsertNpc		(Swampshark,"PATH_AROUND_PSI21");

	Wld_InsertNpc		(DMT_DementorAmbient,"PATH_AROUND_PSI_FOCUS_003");
};

	func void INIT_SUB_PSICAMP ()
	{
	};

	func void INIT_PSICAMP ()
	{
		B_InitMonsterAttitudes ();
		B_InitGuildAttitudes();
		B_InitNpcGlobals ();    
		
		INIT_SUB_PSICAMP();
	};

func void STARTUP_FREEMINECAMP ()
{
	// Road to Free Mine Camp
	Wld_InsertNpc		(Icewolf,"OW_PATH_075_GUARD2");
	Wld_InsertNpc		(Icewolf,"OW_PATH_075_GUARD3");
	Wld_InsertNpc		(Icewolf,"OW_PATH_075_GUARD4");

	Wld_InsertNpc		(IceSnapper,"OW_PATH_084");
	Wld_InsertNpc		(IceSnapper,"OW_PATH_086");
	Wld_InsertNpc		(IceSnapper,"OW_PATH_3001");

	Wld_InsertNpc		(IceGolem,"OW_PATH_3001_MOVE");

	Wld_InsertNpc		(IceGolem,"OW_ICEREGION_PATH_04");


	// Free Mine Camp
	Wld_InsertNpc		(IceGolem,"FMC_ENTRANCE");

	Wld_InsertNpc		(Draconian,"FMC_HUT02_OUT");	

	Wld_InsertNpc		(Draconian,"FMC_PATH03");	
	Wld_InsertNpc		(Draconian,"FMC_PATH06");	

	Wld_InsertNpc		(Draconian,"FMC_PATH05");	
	Wld_InsertNpc		(Draconian,"FMC_PATH31");	
	Wld_InsertNpc		(IceGolem,"FMC_HUT04_OUT");
	Wld_InsertNpc		(Draconian,"FMC_PATH07");	
	Wld_InsertNpc		(Draconian,"FMC_PATH20");	

	Wld_InsertNpc		(IceGolem,"FMC_HUT07_OUT");
	Wld_InsertNpc		(Draconian,"FMC_PATH13");	
	Wld_InsertNpc		(Draconian,"FMC_PATH19");	
	Wld_InsertNpc		(Draconian,"FMC_HUT16_OUT");	

	Wld_InsertNpc		(IceGolem,"FMC_PATH30");
	Wld_InsertNpc		(Draconian,"FMC_PATH23");	

	Wld_InsertNpc		(Draconian,"FMC_HUT01_OUT");	
	Wld_InsertNpc		(Draconian,"FMC_HUT10_OUT");	

	Wld_InsertNpc		(IceGolem,"FMC_HUT12_OUT");
	Wld_InsertNpc		(IceGolem,"FMC_HUT11_OUT");

	Wld_InsertNpc		(Draconian,"FMC_PATH16");	
	Wld_InsertNpc		(Draconian,"FMC_PATH18");	
	Wld_InsertNpc		(Draconian,"FMC_PATH26");	
	Wld_InsertNpc		(IceGolem,"FMC_PATH24");
};

	func void INIT_SUB_FREEMINECAMP ()
	{
	};

	func void INIT_FREEMINECAMP ()
	{
		B_InitMonsterAttitudes ();
		B_InitGuildAttitudes();
		B_InitNpcGlobals ();    
		
		INIT_SUB_FREEMINECAMP();
	};

func void STARTUP_DEMONTOWER ()
{
	// Demon Tower Area
	Wld_InsertNpc		(StoneGolem,"OW_PATH_124");	
	Wld_InsertNpc		(FireGolem,"OW_PATH_126");	
	Wld_InsertNpc		(IceGolem,"OW_PATH_128");	
	
	Wld_InsertNpc		(Bloodhound,"SPAWN_OW_WARAN_DEMON_02_01");
	Wld_InsertNpc		(Bloodhound,"SPAWN_OW_WARAN_DEMON_02_01");
	
	Wld_InsertNpc		(Bloodhound,"SPAWN_OW_WARAN_DEMON_01");
	Wld_InsertNpc		(Bloodhound,"SPAWN_OW_WARAN_DEMON_01");
	Wld_InsertNpc		(Bloodhound,"SPAWN_OW_WARAN_DEMON_01");
	
	Wld_InsertNpc		(OrcDog,"OW_PATH_3047");
	Wld_InsertNpc		(OrcDog,"OW_PATH_3047");
	Wld_InsertNpc		(OrcElite_Roam,"OW_PATH_3048");
	Wld_InsertNpc		(OrcShaman_Sit,"FP_CAMPFIRE_ORC_DEMONTOWER_001");
	Wld_InsertNpc		(OrcShaman_Sit,"FP_CAMPFIRE_ORC_DEMONTOWER_002");


	// Demon Tower
	Wld_InsertNpc				(Gobbo_Skeleton,"DT_E1_04");
	Wld_InsertNpc				(Gobbo_Skeleton,"DT_E1_05");
	Wld_InsertNpc				(Gobbo_SkeletonOWDemonTower,"DT_E1_06"); // Hat den Teleport ItRu_TeleportOWDemonTower in der Tasche
	Wld_InsertNpc				(Gobbo_Skeleton,"DT_E1_07");
	Wld_InsertNpc				(Gobbo_Skeleton,"DT_E1_08");
	Wld_InsertNpc				(Gobbo_Skeleton,"DT_E1_09");

	Wld_InsertNpc				(Demon,"DT_E2_04");
	Wld_InsertNpc				(DemonLord,"DT_E2_06");

	Wld_InsertNpc				(Skeleton,"DT_E3_04");
	Wld_InsertNpc				(Skeleton,"DT_E3_07");

	Wld_InsertItem	(ItMi_Zeitspalt_Addon,"FP_ITEM_XARDASALTERTURM_01");
};

	func void INIT_SUB_DEMONTOWER ()
	{
	// ------ ROOMS ------
		Wld_AssignRoomToGuild("DT1", GIL_DMT);
		Wld_AssignRoomToGuild("DT2", GIL_DMT); //wichtig, damit Diego nicht folgt
	};

	func void INIT_DEMONTOWER ()
	{
		B_InitMonsterAttitudes ();
		B_InitGuildAttitudes();
		B_InitNpcGlobals ();    
		
		INIT_SUB_DEMONTOWER();
	};

func void STARTUP_FORTRESS ()
{
	Wld_InsertNpc		(StoneGolem,"FORTRESS_ENTRANCE_002");

	Wld_InsertNpc		(BDT_3000_Gomez,"FORTRESS_ENTRANCE_002");
	Wld_InsertNpc		(BDT_3001_Scar,"FORTRESS_ENTRANCE_002");
	Wld_InsertNpc		(BDT_3002_Arto,"FORTRESS_ENTRANCE_002");
	Wld_InsertNpc		(BDT_3003_Cutter,"FORTRESS_ENTRANCE_002");
	Wld_InsertNpc		(BDT_3004_Bullit,"FORTRESS_ENTRANCE_002");
	Wld_InsertNpc		(BDT_3005_Drake,"FORTRESS_ENTRANCE_002");
	Wld_InsertNpc		(BDT_3006_Santino,"FORTRESS_ENTRANCE_002");
	Wld_InsertNpc		(BDT_3007_Sly,"FORTRESS_ENTRANCE_002");

	Wld_InsertNpc		(Shadow_Warrior,"FP_STAND_SHADOWLORD_000");
	Wld_InsertNpc		(Shadow_Warrior,"FP_STAND_SHADOWLORD_001");
	Wld_InsertNpc		(Shadow_Warrior,"FP_STAND_SHADOWLORD_002");
	Wld_InsertNpc		(Shadow_Warrior,"FP_STAND_SHADOWLORD_003");
	Wld_InsertNpc		(Shadow_Warrior,"FP_STAND_SHADOWLORD_004");
	Wld_InsertNpc		(Shadow_Warrior,"FP_STAND_SHADOWLORD_005");
	Wld_InsertNpc		(Shadow_Warrior,"FP_STAND_SHADOWLORD_006");
};

	func void INIT_SUB_FORTRESS ()
	{
	// ------ ROOMS ------
		Wld_AssignRoomToGuild("BF1", GIL_PUBLIC);
		Wld_AssignRoomToGuild("BF2", GIL_PUBLIC);
		Wld_AssignRoomToGuild("BFK", GIL_PUBLIC);
		Wld_AssignRoomToGuild("BFS", GIL_PUBLIC);
		Wld_AssignRoomToGuild("BFM", GIL_PUBLIC);
		Wld_AssignRoomToGuild("BFT", GIL_PUBLIC);
		Wld_AssignRoomToGuild("BFT", GIL_PUBLIC);

	// ------ TRIGGERS ------
		//Wld_SendTrigger("EVT_OW_MOUNTAINRUIN_01");

	// ------ OBJECTROUTINE ------
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH2_01");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH2_02");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH2_03");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH2_04");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH2_05");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH2_06");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH2_07");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH2_08");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH2_09");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH2_10");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH2_11");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH2_12");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH_01");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH_02");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH_03");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH_04");
		REV_SetObjectRoutine_Fire ("OC_FIREFORTRESS_HIGH_05");
	};

	func void INIT_FORTRESS ()
	{
		B_InitMonsterAttitudes ();
		B_InitGuildAttitudes();
		B_InitNpcGlobals ();    
		
		INIT_SUB_FORTRESS();
	};



func void STARTUP_SURFACE ()
{
	// Dragons
	Wld_InsertNpc		(Dragon_Swamp,					"OW_SWAMPDRAGON");
	Wld_InsertItem		(ItWr_StonePlateCommon_Addon,	"OW_ITEM_SWAMPHORT_01"); 
	Wld_InsertItem		(ITRI_REVIVED_STR_DEX_01,		"OW_ITEM_SWAMPHORT_02"); 

	Wld_InsertNpc		(Dragon_Rock, 					"OW_STONEDRAGON");
	Wld_InsertItem		(ITAM_REVIVED_STR_DEX_01,		"OW_ITEM_ROCKHORT_01"); 
	Wld_InsertItem		(ITPO_REVIVED_BOOST_MASTER_03,	"OW_ITEM_ROCKHORT_02"); 

	Wld_InsertNpc		(Dragon_Fire, 					"OW_FIREDRAGON");
	Wld_InsertItem		(ITRW_REVIVED_CROSSBOW_FIRE_01,	"OW_ITEM_FIREHORT_01"); 
	Wld_InsertItem		(ItMi_Sextant,			"OW_ITEM_FIREHORT_02"); 

	Wld_InsertNpc		(Dragon_Ice, 					"OW_ICEDRAGON");
	Wld_InsertItem		(ItWr_Addon_LPBook,				"OW_ITEM_ICEHORT_01"); 
	Wld_InsertItem		(ItAt_DragonEgg_MIS,			"OW_ITEM_ICEHORT_02"); 


	// Exchange Place			
	Wld_InsertNpc       (OrcElite_Sit,"WP_INTRO06_TREES");
	Wld_InsertNpc       (OrcWarrior_Rest,"WP_INTRO04");	
	
	Wld_InsertNpc       (OrcWarrior_Roam,"WP_INTRO_WI07_005");			
	Wld_InsertNpc       (OrcWarrior_Roam,"WP_INTRO_WI07");
		
	Wld_InsertNpc       (OrcWarrior_Roam,"OW_PATH_1_16_8");	
	Wld_InsertNpc       (OrcWarrior_Roam,"OW_PATH_1_16_4");
	Wld_InsertNpc       (OrcWarrior_Roam,"SPAWN_OW_MEATBUG_01_01");	

	Wld_InsertItem		(ItSe_DiegosTreasure_Mis,"FP_ITEM_DIEGOTREASURE"); 


	// Abandoned Mine
	Wld_InsertNpc       (Meatbug,"FP_ROAM_OW_MEATBUG_01_01");
	Wld_InsertNpc       (Meatbug,"FP_ROAM_OW_MEATBUG_01_02");
	Wld_InsertNpc       (Meatbug,"FP_ROAM_OW_MEATBUG_01_03");

	Wld_InsertNpc       (Meatbug,"FP_ROAM_OW_MEATBUG_02_01");
	/* Wld_InsertNpc       (Meatbug,"FP_ROAM_OW_MEATBUG_02_02");
	Wld_InsertNpc       (Meatbug,"FP_ROAM_OW_MEATBUG_02_03");
	Wld_InsertNpc       (Meatbug,"FP_ROAM_OW_MEATBUG_02_04");
	Wld_InsertNpc       (Meatbug,"FP_ROAM_OW_MEATBUG_02_05"); */
	Wld_InsertNpc       (Meatbug,"FP_ROAM_OW_MEATBUG_02_06");


	// Abandoned Mine Plateau
	Wld_InsertNpc		(ScavengerJuvenile,"SPAWN_SCAVENGER_TOTU_LEFT_PLAT");
	Wld_InsertNpc		(ScavengerJuvenile,"SPAWN_SCAVENGER2_TOTU_LEFT_PLAT2");

	Wld_InsertNpc		(Snapper,"SPAWN_MOLELRAT_TOTU_LEFT_PLAT4");
	Wld_InsertNpc		(Snapper,"SPAWN_MOLELRAT_TOTU_LEFT_PLAT4");
	Wld_InsertNpc		(Gobbo_Black,"SPAWN_OW_GOBBO_01_01");

	Wld_InsertNpc		(Molerat,"SPAWN_MOLERAT02_SPAWN01");	
	Wld_InsertNpc		(Molerat,"SPAWN_MOLERAT02_SPAWN01");	


	// Oretrail
	Wld_InsertNpc		(DragonSnapper,"FP_ROAM_TOTURIAL_CHICKEN_3"); 	
	Wld_InsertNpc		(Scavenger, "FP_ROAM_TOTURIAL_CHICKEN_1");  
	Wld_InsertNpc		(Scavenger, "FP_ROAM_INTRO_CHICKEN_1");  
	Wld_InsertNpc		(Scavenger, "FP_ROAM_INTRO_CHICKEN_2");  
	
	Wld_InsertNpc		(DragonSnapper, "FP_ROAM_OW_MAETBUG_ROOT_01"); 

	Wld_InsertNpc		(OUT_4110_JERGAN,"OW_SPAWN_SCOUT");		
	Wld_InsertNpc		(PAL_2004_Bruder,"OW_SPAWN_BRUDER");	


	// Oretrail (Drax und Ratford)
	Wld_InsertNpc		(BDT_1000_LOAFER 	,"FP_SMALLTALK_A_START_PATH_1_5_1");
	Wld_InsertNpc		(BDT_1003_Bandit_M 	,"FP_SMALLTALK_A_START_PATH_1_5_2");

	Wld_InsertNpc		(Snapper,"FP_ROAM_OW_GOBBO_07_02");  
	Wld_InsertNpc		(Snapper,"FP_ROAM_OW_GOBBO_07_03");
	Wld_InsertNpc		(Snapper,"FP_ROAM_OW_GOBBO_07_04"); 

	Wld_InsertNpc		(Snapper,"FP_ROAM_OW_STARTSCAVNGERBO_01_01"); 
	Wld_InsertNpc		(Snapper,"FP_ROAM_OW_STARTSCAVNGERBO_01_02"); 


	// River (Old Mine/New Camp/Dragonhunter Camp)
	Wld_InsertNpc		(STRF_1115_Geppert,"SPAWN_OW_BLACKGOBBO_A1"); 		
	Wld_InsertNpc		(STRF_1116_Kervo,"SPAWN_OW_BLACKGOBBO_A1"); 

	Wld_InsertNpc		(Kervo_Lurker1,"OW_MOVEMENT_LURKER_NEARBGOBBO01");
	Wld_InsertNpc		(Kervo_Lurker2,"SPAWN_OW_WARAN_CAVE1_1");
	Wld_InsertNpc		(Kervo_Lurker3,"SPAWN_OW_WARAN_CAVE1_1");
	Wld_InsertNpc		(Kervo_Lurker4,"SPAWN_OW_NEARBGOBBO_LURKER_A1");
	Wld_InsertNpc		(Kervo_Lurker5,"OW_MOVEMENT_LURKER_NEARBGOBBO03");	
	Wld_InsertNpc		(Kervo_Lurker6,"SPAWN_OW_NEARBGOBBO_LURKER_A1");

	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_MINICOAST_LURKER_A1");
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_MINICOAST_LURKER_A1");


	// River (Oretrail)
	Wld_InsertNpc		(Lurker,"FP_ROAM_OW_BLOODFLY_E_1");
	Wld_InsertNpc		(Lurker,"FP_ROAM_OW_BLOODFLY_E_5");


	// River (To Monastery)
	Wld_InsertNpc		(Lurker,"OW_PATH_BLOODFLY01_SPAWN01");
	Wld_InsertNpc		(Lurker,"OW_PATH_BLOODFLY01_SPAWN01");

	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY01_MOVEMENT");
	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY01_MOVEMENT");

	Wld_InsertNpc		(Lurker,"SPAWN_OW_LURKER_RIVER2_BEACH3");
	Wld_InsertNpc		(Lurker,"SPAWN_OW_LURKER_RIVER2_BEACH3");

	Wld_InsertNpc		(Lurker,"SPAWN_OW_LURKER_RIVER2");
	Wld_InsertNpc		(Lurker,"SPAWN_OW_LURKER_RIVER2");

	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY02_SPAWN01");
	Wld_InsertNpc		(Bloodfly,"OW_PATH_BLOODFLY02_SPAWN01");

	Wld_InsertNpc		(Snapper,"SPAWN_OW_SNAPPER_OCWOOD1_05_02");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_SNAPPER_OCWOOD1_05_02");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_SNAPPER_OCWOOD1_05_02");


	// Sea Monastery
	Wld_InsertNpc		(Waran,"SPAWN_ROAM_OW_WARAN_RUIN");
	Wld_InsertNpc		(Waran,"SPAWN_ROAM_OW_WARAN_RUIN");
	Wld_InsertNpc		(Waran,"SPAWN_ROAM_OW_WARAN_RUIN");
	Wld_InsertNpc		(FireWaran,"SPAWN_ROAM_OW_WARAN_RUIN_001");
	Wld_InsertNpc		(FireWaran,"SPAWN_ROAM_OW_WARAN_RUIN_000");

	Wld_InsertNpc		(Waran,"OW_ABYSS_SPAWN_WARAN");
	Wld_InsertNpc		(Waran,"OW_ABYSS_SPAWN_WARAN");
	Wld_InsertNpc		(Waran,"OW_ABYSS_SPAWN_WARAN");
	Wld_InsertNpc		(FireWaran,"SPAWN_ROAM_OW_WARAN_RUIN_004");
	Wld_InsertNpc		(FireWaran,"SPAWN_ROAM_OW_WARAN_RUIN_004");

	Wld_InsertNpc		(Snapper,"SPAWN_ABYSS_TO_CAVE_MOVE");
	Wld_InsertNpc		(Snapper,"SPAWN_ABYSS_TO_CAVE_MOVE");
	Wld_InsertNpc		(Snapper,"SPAWN_ABYSS_TO_CAVE_MOVE");

	Wld_InsertNpc		(DragonSnapper,"OW_MONSTER_NAVIGATE");
	Wld_InsertNpc		(Snapper,"OW_MONSTER_NAVIGATE");
	Wld_InsertNpc		(Snapper,"OW_MONSTER_NAVIGATE");

	Wld_InsertNpc		(DragonSnapper,"OW_MONSTER_NAVIGATE_02");
	Wld_InsertNpc		(Snapper,"OW_MONSTER_NAVIGATE_02");
	Wld_InsertNpc		(Snapper,"OW_MONSTER_NAVIGATE_02");

	Wld_InsertNpc		(DragonSnapper,"OW_MONSTER_NAVIGATE_03");
	Wld_InsertNpc		(Snapper,"OW_MONSTER_NAVIGATE_03");
	Wld_InsertNpc		(Snapper,"OW_MONSTER_NAVIGATE_03");

	Wld_InsertNpc       (Meatbug,"OW_PATH_175_MEATBUG");
	Wld_InsertNpc       (Meatbug,"OW_PATH_175_MEATBUG");
	Wld_InsertNpc       (Meatbug,"OW_PATH_175_MEATBUG");
	Wld_InsertNpc       (Meatbug,"OW_PATH_175_MEATBUG");

	Wld_InsertNpc		(DragonSnapper,"OW_PATH_SNAPPER04_SPAWN01");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_SNAPPER04_SPAWN01");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_SNAPPER04_SPAWN01");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_SNAPPER04_SPAWN01");

	Wld_InsertNpc		(DragonSnapper,"OW_PATH_SNAPPER04_SPAWN02");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_SNAPPER04_SPAWN02");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_SNAPPER04_SPAWN02");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_SNAPPER04_SPAWN02");

	Wld_InsertNpc		(Shadowbeast,"OW_PATH_TEMPELRUIN06");

	Wld_InsertNpc		(Draconian,"LOCATION_28_03");
	Wld_InsertNpc		(Draconian,"LOCATION_28_04");

	Wld_InsertNpc		(Draconian,"LOCATION_28_06");
	Wld_InsertNpc		(Draconian,"LOCATION_28_06A");

	Wld_InsertNpc		(Draconian,"OW_PATH_176_TEMPELFOCUS");
	Wld_InsertNpc		(Draconian,"OW_PATH_176_TEMPELFOCUS");
	Wld_InsertNpc		(Draconian,"OW_PATH_176_TEMPELFOCUS");


	// Shipwreck
	Wld_InsertNpc		(FireWaran,"OW_COAST_SHIPWRECK_WARAN");
	Wld_InsertNpc		(FireWaran,"OW_COAST_SHIPWRECK_WARAN");
	Wld_InsertNpc		(FireWaran,"OW_COAST_SHIPWRECK_WARAN");

	Wld_InsertNpc		(FireWaran,"OW_COAST_SHIPWRECK_WARAN_2");
	Wld_InsertNpc		(FireWaran,"OW_COAST_SHIPWRECK_WARAN_2");
	Wld_InsertNpc		(FireWaran,"OW_COAST_SHIPWRECK_WARAN_2");


	// Fog Tower
	Wld_InsertNpc	(Skeleton, 				"OW_FOGDUNGEON_06"); 

	Wld_InsertNpc	(Lesser_Skeleton,		"OW_FOGDUNGEON_SKELETT_SPAWN");
	Wld_InsertNpc	(Skeleton, 				"OW_FOGDUNGEON_09"); 

	Wld_InsertNpc	(Skeleton_Templar,		"OW_FOGDUNGEON_SKELETT_SPAWN");

	Wld_InsertNpc	(Skeleton,				"OW_FOGDUNGEON_16");
	Wld_InsertNpc	(Lesser_Skeleton,		"OW_FOGDUNGEON_28");
	Wld_InsertNpc	(Skeleton_Templar,		"OW_FOGDUNGEON_28");
	Wld_InsertNpc	(Skeleton_Templar,		"OW_FOGDUNGEON_23");
	Wld_InsertNpc	(Skeleton_Templar,		"OW_FOGDUNGEON_24");
	Wld_InsertNpc	(Lesser_Skeleton,		"OW_FOGDUNGEON_19");
	Wld_InsertNpc	(Skeleton,				"OW_FOGDUNGEON_20");

	Wld_InsertNpc	(Skeleton,				"OW_FOGDUNGEON_36"); 
	Wld_InsertNpc	(Skeleton,				"OW_FOGDUNGEON_36_MOVEMENT"); 
	Wld_InsertNpc	(Skeleton_Templar,		"OW_FOGDUNGEON_36_MOVEMENT"); 
	Wld_InsertNpc	(Skeleton,				"OW_FOGDUNGEON_36_MOVEMENT2"); 
	Wld_InsertNpc	(Lesser_Skeleton,		"OW_FOGDUNGEON_36_MOVEMENT2");
	Wld_InsertNpc	(Skeleton_Templar,		"OW_FOGDUNGEON_37"); 
	Wld_InsertNpc	(SkeletonMage,			"OW_FOGDUNGEON_37");

	Wld_InsertNpc	(Skeleton, 				"OW_FOGDUNGEON_40"); 
	Wld_InsertNpc	(Lesser_Skeleton, 		"OW_FOGDUNGEON_40");
	Wld_InsertNpc	(Skeleton, 				"OW_FOGDUNGEON_43"); 
	Wld_InsertNpc	(Skeleton_Templar, 		"OW_FOGDUNGEON_43"); 


	// Forest (North)
	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCA_05_01");	
	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCA_05_01");	
	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCA_05_01");	
		
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLY_06_01");	
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLY_06_01");	
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLY_06_01");
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLY_06_01");

	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCAVENGER_OCWOOD1");	
	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCAVENGER_OCWOOD1");	
	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCAVENGER_OCWOOD1");	

	Wld_InsertNpc		(Keiler,"SPAWN_OW_MOLERAT_OCWOOD_OC2");	
	Wld_InsertNpc		(Keiler,"SPAWN_OW_MOLERAT_OCWOOD_OC2");	
	Wld_InsertNpc		(Keiler,"SPAWN_OW_MOLERAT_OCWOOD_OC2");	

	Wld_InsertNpc		(Wolf,"FP_ROAM_OW_WOLF_08_02");
	Wld_InsertNpc		(Wolf,"FP_ROAM_OW_WOLF_08_04");
	Wld_InsertNpc		(Wolf,"FP_ROAM_OW_WOLF_08_06");
	Wld_InsertNpc		(BlackWolf,"FP_SLEEP_OW_WOLF_08_01");
	Wld_InsertNpc		(BlackWolf,"FP_SLEEP_OW_WOLF_08_03");

	Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_OW_WOLF_WOOD05_02");
	Wld_InsertNpc		(OrcDog,"SPAWN_OW_WOLF_WOOD05_02");

	Wld_InsertNpc		(OrcWarrior_Roam,"OW_PATH_258");
	Wld_InsertNpc		(OrcDog,"SPAWN_OW_MOLERAT_OCWOOD_OLDMINE3");
	Wld_InsertNpc		(OrcDog,"SPAWN_OW_MOLERAT_OCWOOD_OLDMINE3");

	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCAVENGER_WOOD10_04");	
	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCAVENGER_WOOD10_04");	
	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCAVENGER_WOOD10_04");	

	Wld_InsertNpc		(DragonSnapper,"SPAWN_OW_SNAPPERS_WOOD_OM");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_SNAPPERS_WOOD_OM"); 
	Wld_InsertNpc		(Snapper,"SPAWN_OW_SNAPPERS_WOOD_OM");

	Wld_InsertNpc		(Molerat,"SPAWN_OW_MOLERATS_WOOD_OM");	
	Wld_InsertNpc		(Molerat,"SPAWN_OW_MOLERATS_WOOD_OM");	
	Wld_InsertNpc		(Molerat,"SPAWN_OW_MOLERATS_WOOD_OM");	

	Wld_InsertNpc		(Gobbo_Black,"SPAWN_OW_BLOODFLY_WOOD05_01");	
	Wld_InsertNpc		(Gobbo_Green,"SPAWN_OW_BLOODFLY_WOOD05_01");	
	Wld_InsertNpc		(Gobbo_Green,"SPAWN_OW_BLOODFLY_WOOD05_01");	

	Wld_InsertNpc		(Gobbo_Black,"SPAWN_OW_SCAVENGER_OLDWOOD_C3");	
	Wld_InsertNpc		(Gobbo_Green,"SPAWN_OW_SCAVENGER_OLDWOOD_C3");	
	Wld_InsertNpc		(Gobbo_Green,"SPAWN_OW_SCAVENGER_OLDWOOD_C3");	

	Wld_InsertNpc		(Molerat,"SPAWN_OW_SCAVENGER_OCWOODEND2");	
	Wld_InsertNpc		(Molerat,"SPAWN_OW_SCAVENGER_OCWOODEND2");	

	Wld_InsertNpc		(Scavenger,"OW_PATH_SCAVENGER12_SPAWN01");	
	Wld_InsertNpc		(Scavenger,"OW_PATH_SCAVENGER12_SPAWN01");	
	Wld_InsertNpc		(Scavenger,"OW_PATH_SCAVENGER12_SPAWN01");	
	Wld_InsertNpc		(Scavenger,"OW_PATH_SCAVENGER12_SPAWN01");	
	Wld_InsertNpc		(Scavenger,"OW_PATH_SCAVENGER12_SPAWN01");	


	// Road to Troll Canyon
	Wld_InsertNpc		(GRD_4112_Den 	,"OW_PATH_182");

	Wld_InsertNpc		(Scavenger,"FP_ROAM_OW_SCAVENGER_01_05");
	Wld_InsertNpc		(Scavenger,"FP_ROAM_OW_SCAVENGER_01_06");
	Wld_InsertNpc		(Scavenger,"FP_ROAM_OW_SCAVENGER_01_07");
	
	Wld_InsertNpc		(DragonSnapper,"SPAWN_OW_SCA_01_BADITS2");
	Wld_InsertNpc		(DragonSnapper,"SPAWN_OW_SCA_01_BADITS2");
	
	Wld_InsertNpc		(FireWaran,"SPAWN_OW_SCA_01_BADITS7");
	Wld_InsertNpc		(FireWaran,"SPAWN_OW_SCA_01_BADITS7");
	
	Wld_InsertNpc		(FireWaran,"SPAWN_OW_WARAN_01_BADITS6");
	Wld_InsertNpc		(FireWaran,"SPAWN_OW_WARAN_01_BADITS6");


	// Quentin's Camp
	Wld_InsertNpc	(FireGolem,	"LOCATION_11_02");
	Wld_InsertNpc	(FireGolem,	"LOCATION_11_05");

	Wld_InsertNpc	(Draconian,	"LOCATION_11_07");
	Wld_InsertNpc	(Draconian,	"LOCATION_11_09");
	Wld_InsertNpc	(Draconian,	"LOCATION_11_12");
	Wld_InsertNpc	(Draconian,	"LOCATION_11_12_01");
	Wld_InsertNpc	(Draconian,	"LOCATION_11_12_03"); 
	Wld_InsertNpc	(Draconian,	"LOCATION_11_12_06");
	Wld_InsertNpc	(Draconian,	"LOCATION_11_13");


	// Troll Canyon
	Wld_InsertNpc	(FireWaran,	"SPAWNOW_PATH_190_MOVMENT");
	Wld_InsertNpc	(FireWaran,	"SPAWNOW_PATH_190_MOVMENT"); 
	Wld_InsertNpc	(Draconian,	"SPAWNOW_PATH_190_MOVMENT");
	Wld_InsertNpc	(Draconian,	"SPAWNOW_PATH_190_MOVMENT");

	Wld_InsertNpc	(FireGolem,	"LOCATION_12_011");


	// Old Mine
	Wld_InsertNpc		(STRF_4111_Grimes,"OW_PATH_264");
	Wld_InsertNpc		(STRF_1117_Straefling,"OW_PATH_264");	
	Wld_InsertNpc		(PAL_218_Ritter,"OW_PATH_264");	
	Wld_InsertNpc		(PAL_219_Ritter,"OW_PATH_264");	
	
	Wld_InsertNpc		(GRD_4151_Leiche,"OW_PATH_151");	
	Wld_InsertNpc		(STRF_1150_Leiche,"OW_GOBBO_PLACE_SPAWN");	
	Wld_InsertNpc		(STRF_1151_Leiche,"OW_PATH_48");	
	Wld_InsertNpc		(STRF_1153_Leiche,"HELPPOINT8");	

	B_KillNpc			(GRD_4151_Leiche);
	B_KillNpc			(STRF_1150_Leiche);
	B_KillNpc			(STRF_1151_Leiche);
	B_KillNpc			(STRF_1153_Leiche);

	Wld_InsertNpc		(Snapper,"SPAWN_SNAPPER_OM_ENTRANCE_000");
	Wld_InsertNpc		(Snapper,"SPAWN_SNAPPER_OM_ENTRANCE_000"); 
	Wld_InsertNpc		(Snapper,"SPAWN_SNAPPER_OM_ENTRANCE_000");

	Wld_InsertNpc		(Snapper,"SPAWN_SNAPPER_OM_ENTRANCE_001");
	Wld_InsertNpc		(Snapper,"SPAWN_SNAPPER_OM_ENTRANCE_001"); 
	Wld_InsertNpc		(Snapper,"SPAWN_SNAPPER_OM_ENTRANCE_001");

	Wld_InsertNpc		(Snapper,"SPAWN_SNAPPER_OM_ENTRANCE_002");
	Wld_InsertNpc		(Snapper,"SPAWN_SNAPPER_OM_ENTRANCE_002"); 
	Wld_InsertNpc		(Snapper,"SPAWN_SNAPPER_OM_ENTRANCE_002");

	Wld_InsertNpc		(Snapper,"SPAWN_SNAPPER_OM_ENTRANCE_003");
	Wld_InsertNpc		(Snapper,"SPAWN_SNAPPER_OM_ENTRANCE_003"); 
	Wld_InsertNpc		(Snapper,"SPAWN_SNAPPER_OM_ENTRANCE_003");


	// New Camp Area
	Wld_InsertNpc		(Molerat,"SPAWN_OW_MOLERAT_A_6_NC4");	
	Wld_InsertNpc		(Molerat,"SPAWN_OW_MOLERAT_A_6_NC4");		
	Wld_InsertNpc		(Molerat,"SPAWN_OW_MOLERAT_A_6_NC4_02");	
	Wld_InsertNpc		(Molerat,"SPAWN_OW_MOLERAT_A_6_NC4_04");	

	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLYS_152");	
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLYS_152");
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLYS_152");	
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLYS_152");	

	Wld_InsertNpc		(Scavenger,"OW_PATH_SCAVENGER13_SPAWN01");	
	Wld_InsertNpc		(Scavenger,"OW_PATH_SCAVENGER13_SPAWN01");	
	Wld_InsertNpc		(Scavenger,"OW_PATH_SCAVENGER13_SPAWN01");	
	Wld_InsertNpc		(Scavenger,"OW_PATH_SCAVENGER13_SPAWN01");	
	Wld_InsertNpc		(Scavenger,"OW_PATH_SCAVENGER13_SPAWN01");		

	Wld_InsertNpc		(Bloodfly,"OW_BLOODFLY_NEW_COAST_SPAWN");	
	Wld_InsertNpc		(Bloodfly,"OW_BLOODFLY_NEW_COAST_SPAWN");
	Wld_InsertNpc		(Bloodfly,"OW_BLOODFLY_NEW_COAST_SPAWN");	
	Wld_InsertNpc		(Bloodfly,"OW_BLOODFLY_NEW_COAST_SPAWN");	
	Wld_InsertNpc		(Bloodfly,"OW_BLOODFLY_NEW_COAST_SPAWN");	
	Wld_InsertNpc		(Bloodfly,"OW_BLOODFLY_NEW_COAST_SPAWN");


	// New Camp Area (Fajeth's Mine)
	Wld_InsertNpc		(Pal_281_Fajeth, 		"LOCATION_23_CAVE_1_OUT"); 
	Wld_InsertNpc		(Pal_280_Tengron, 		"LOCATION_23_CAVE_1_OUT");

	Wld_InsertNpc		(GRD_4120_Bilgot, 		"LOCATION_23_CAVE_1_OUT");

	Wld_InsertNpc		(STRF_1106_Fed, 		"LOCATION_23_CAVE_1_OUT");
	Wld_InsertNpc		(STRF_1104_Straefling,	"LOCATION_23_CAVE_1_OUT");
	Wld_InsertNpc		(STRF_1105_Straefling, 	"LOCATION_23_CAVE_1_OUT");
	Wld_InsertNpc		(STRF_1110_Straefling, 	"LOCATION_23_CAVE_1_OUT");
	Wld_InsertNpc		(STRF_1111_Straefling, 	"LOCATION_23_CAVE_1_OUT");
	Wld_InsertNpc		(STRF_1112_Straefling, 	"LOCATION_23_CAVE_1_OUT");
	Wld_InsertNpc		(STRF_1113_Straefling, 	"LOCATION_23_CAVE_1_OUT");
	Wld_InsertNpc		(STRF_1114_Straefling, 	"LOCATION_23_CAVE_1_OUT");

	Wld_InsertNpc		(NewMine_Snapper1,"SPAWN_OW_WARAN_NC_03");
	Wld_InsertNpc		(NewMine_Snapper2,"OW_SCAVENGER_COAST_NEWCAMP_SPAWN");
	Wld_InsertNpc		(NewMine_Snapper3,"OW_SCAVENGER_COAST_NEWCAMP_SPAWN");
	Wld_InsertNpc		(NewMine_Snapper4,"SPAWN_OW_MOLERAT_03_04");
	Wld_InsertNpc		(NewMine_Snapper5,"SPAWN_OW_MOLERAT_03_04");	

	Wld_InsertItem		(ITFO_FISH, "FP_OWITEM_FAJETH_000");
	Wld_InsertItem		(ITFO_BOOZE, "FP_OWITEM_FAJETH_001");


	// New Camp Area (Mountain to Stonehenge)
	Wld_InsertNpc		(Bloodhound,"OW_PATH_07_15_CAVE3");

	Wld_InsertNpc		(DragonSnapper,"OW_PATH_07_15_CAVE");	
	Wld_InsertNpc		(Snapper,"OW_PATH_07_15");
	Wld_InsertNpc		(Snapper,"OW_PATH_07_15");


	// Bandits (Aidan camp)
	Wld_InsertNpc		(BDT_1000_LOAFER, "OW_PATH_056");
	Wld_InsertNpc		(BDT_1003_Bandit_M, "OW_PATH_056");

	Wld_InsertNpc		(Gobbo_Elite,"OW_GOBBO_PLACE_SPAWN");	
	Wld_InsertNpc		(Gobbo_Black,"OW_GOBBO_PLACE_SPAWN");	
	Wld_InsertNpc		(Gobbo_Black,"OW_GOBBO_PLACE_SPAWN");	

	Wld_InsertNpc		(Waran,"OW_WARAN_G_SPAWN");
	Wld_InsertNpc		(Waran,"OW_WARAN_G_SPAWN");

	Wld_InsertNpc		(BlackWolf,"OW_PATH_02_SPAWN_HOGEWOLF");
	Wld_InsertNpc		(BlackWolf,"OW_PATH_02_SPAWN_HOGEWOLF");
	
	Wld_InsertNpc		(Wolf,"PATH_OC_NC_22");
	Wld_InsertNpc		(Wolf,"PATH_OC_NC_22");

	Wld_InsertNpc		(Wolf,"OW_WOODRUIN_FOR_WOLF_SPAWN");
	Wld_InsertNpc		(Wolf,"OW_WOODRUIN_FOR_WOLF_SPAWN");

	Wld_InsertNpc		(BlackWolf,"OW_WOODRUIN_WOLF_SPAWN");
	Wld_InsertNpc		(BlackWolf,"OW_WOODRUIN_WOLF_SPAWN");


	// (between these two locations idk)
	Wld_InsertNpc		(OUT_4130_TALBIN,"SPAWN_TALL_PATH_BANDITOS2_03");	
	Wld_InsertNpc		(VLK_4131_Engrom,"SPAWN_TALL_PATH_BANDITOS2_03");
	
	Wld_InsertNpc		(Lurker,"SPAWN_OW_BLOODFLY_12");
	Wld_InsertNpc		(Lurker,"SPAWN_OW_BLOODFLY_12");
	Wld_InsertNpc		(Lurker,"SPAWN_OW_BLOODFLY_12");
	Wld_InsertNpc		(Lurker,"SPAWN_OW_BLOODFLY_12");

	Wld_InsertNpc		(Gobbo_Black,"OW_MOLERAT_CAVE_SPAWN");
	Wld_InsertNpc		(Gobbo_Black,"OW_MOLERAT_CAVE_SPAWN");
	Wld_InsertNpc		(Gobbo_Black,"OW_MOLERAT_CAVE_SPAWN");
	Wld_InsertNpc		(Gobbo_Black,"OW_MOLERAT_CAVE_SPAWN");
	
	Wld_InsertNpc		(Giant_Bug,"OW_SCAVENGER_CAVE3_SPAWN");
	Wld_InsertNpc		(Giant_Bug,"OW_SCAVENGER_CAVE3_SPAWN");
	Wld_InsertNpc		(Giant_Bug,"OW_SCAVENGER_CAVE3_SPAWN");


	// Bandits (Cavalorn's Hut)
	//Wld_InsertItem (ItSe_ADDON_CavalornsBeutel,"FP_OW_ITEM_02"); //it's in the chest now

	Wld_InsertNpc		(PAL_217_Marcos,"OC1");

	Wld_InsertNpc		(Scavenger,"OW_SCAVENGER_TREE_SPAWN");
	Wld_InsertNpc		(Scavenger,"OW_SCAVENGER_TREE_SPAWN");
	Wld_InsertNpc		(Scavenger,"OW_SCAVENGER_TREE_SPAWN");

	Wld_InsertNpc		(BDT_1000_LOAFER,"OW_SAWHUT_MOLERAT_SPAWN01");
	
	Wld_InsertNpc		(BDT_1002_LOAFER,"OW_SAWHUT_MOLERAT_MOVEMENT");

	Wld_InsertNpc		(BDT_1008_Bandit_H,"PATH_OC_NC_3");
	Wld_InsertNpc		(BDT_1003_Bandit_M,"PATH_OC_NC_3");

	Wld_InsertNpc		(BDT_1006_Bandit_H,"PATH_OC_NC_5_1");	
	Wld_InsertNpc		(BDT_1001_Bandit_L,"PATH_OC_NC_4");


	// Orc Arena
	Wld_InsertNpc		(Snapper, "OW_CAVE2_SNAPPER_SPAWN");
	Wld_InsertNpc		(Snapper, "OW_CAVE2_SNAPPER_SPAWN");
	Wld_InsertNpc		(Snapper, "OW_CAVE2_SNAPPER_MOVEMENT2");
	Wld_InsertNpc		(Snapper, "OW_CAVE2_SNAPPER_MOVEMENT2");


	Wld_InsertNpc		(Warg, "OW_PATH_BANDITOS01");
	Wld_InsertNpc		(Warg, "OW_PATH_BANDITOS01");

	Wld_InsertNpc		(Meatbug, "OW_PATH_RUIN_2");
	Wld_InsertNpc		(Meatbug, "OW_PATH_RUIN_2");
	Wld_InsertNpc		(Meatbug, "OW_PATH_RUIN_2");


	Wld_InsertNpc		(Lurker,"SPAWN_OW_FIREWARAN_BEACH_01");
	Wld_InsertNpc		(Lurker,"SPAWN_OW_FIREWARAN_BEACH_01");

	Wld_InsertNpc		(Lurker,"SPAWN_OW_LURKER_BEACH_02");
	Wld_InsertNpc		(Lurker,"SPAWN_OW_LURKER_BEACH_02");

	Wld_InsertNpc		(Lurker,"SPAWN_OW_LURKER_BEACH_03");
	Wld_InsertNpc		(Lurker,"SPAWN_OW_LURKER_BEACH_03");


	Wld_InsertNpc		(OrcShaman_Sit,"OW_PATH_RUIN_7");
	Wld_InsertNpc		(OrcShaman_Sit,"OW_PATH_RUIN_7");

	Wld_InsertNpc		(Stoneguardian, "OW_PATH_ORCRUIN_GOLEM");
	Wld_InsertNpc		(Stoneguardian, "OW_PATH_ORCRUIN_GOLEM");


	// Stonehenge
	Wld_InsertNpc		(Skeleton,"STONES");
	Wld_InsertNpc		(Skeleton,"OW_PATH_035");
	Wld_InsertNpc		(Skeleton,"OW_PATH_3_13");
	Wld_InsertNpc		(Skeleton,"OW_PATH_07_01");
	Wld_InsertNpc		(Skeleton,"OW_PATH_090");

	Wld_InsertNpc		(Zombie01,"LOCATION_05_02_STONEHENGE");
	Wld_InsertNpc		(Zombie02,"LOCATION_05_02_STONEHENGE2");
	Wld_InsertNpc		(Zombie04,"LOCATION_05_02_STONEHENGE3");
	Wld_InsertNpc		(Shadowbeast_Skeleton_Angar,"LOCATION_05_02_STONEHENGE4");
	Wld_InsertNpc		(Zombie03,"LOCATION_05_02_STONEHENGE5");

	Wld_InsertNpc		(Skeleton_Lord,"OW_PATH_033_TO_CAVE5_000");
	Wld_InsertNpc		(Bloodhound,"OW_PATH_033_TO_CAVE5");

	Wld_InsertNpc		(Skeleton_Lord,"OW_PATH_091");


	// Stonehenge area
	Wld_InsertNpc		(Alligator,"OW_LAKE_NC_LURKER_SPAWN01");
	Wld_InsertNpc		(Alligator,"OW_LAKE_NC_LURKER_SPAWN02");

	Wld_InsertNpc		(Lurker,"OW_LAKE_NC_BLOODFLY_SPAWN01");
	Wld_InsertNpc		(Lurker,"OW_LAKE_NC_BLOODFLY_SPAWN01");
	Wld_InsertNpc		(Lurker,"OW_LAKE_NC_BLOODFLY_SPAWN01");
	Wld_InsertNpc		(Lurker,"OW_LAKE_NC_BLOODFLY_SPAWN01");

	Wld_InsertNpc		(Snapper, "OW_PATH_WARAN06_SPAWN01");
	Wld_InsertNpc		(Snapper, "OW_PATH_WARAN06_SPAWN01");
	Wld_InsertNpc		(Snapper, "OW_PATH_WARAN06_SPAWN01");
	Wld_InsertNpc		(Snapper, "OW_PATH_WARAN06_SPAWN01");	

	Wld_InsertNpc		(Shadowbeast,"SPAWN_OW_WOLF_NEAR_SHADOW3");

	Wld_InsertNpc		(DragonSnapper,"SPAWN_OW_SHADOWBEAST_10_03");
	Wld_InsertNpc		(DragonSnapper,"SPAWN_OW_SHADOWBEAST_10_03");
	Wld_InsertNpc		(DragonSnapper,"SPAWN_OW_SHADOWBEAST_10_03");

	Wld_InsertNpc		(Warg,"SPAWN_OW_SHADOWBEAST_NEAR_SHADOW4");
	Wld_InsertNpc		(Warg,"SPAWN_OW_SHADOWBEAST_NEAR_SHADOW4");
	Wld_InsertNpc		(Warg,"SPAWN_OW_SHADOWBEAST_NEAR_SHADOW4");

	Wld_InsertNpc		(Hellhound,"OW_DEADWOOD_WOLF_SPAWN01");
	Wld_InsertNpc		(Hellhound,"OW_DEADWOOD_WOLF_SPAWN01");
	Wld_InsertNpc		(Hellhound,"OW_DEADWOOD_WOLF_SPAWN01");

	Wld_InsertNpc		(DragonSnapper,"OW_PATH_07_05");


	// Orc Territory (Near Diego)
	Wld_InsertNpc		(PC_Thief_OW, 				"LOCATION_02_05");
	Wld_InsertNpc		(PAL_2006_Leiche, 			"LOCATION_02_01");
	Wld_InsertNpc		(PAL_2007_Leiche, 			"LOCATION_02_02");
	B_KillNpc			(PAL_2006_Leiche);
	B_KillNpc			(PAL_2007_Leiche);

	Wld_InsertNpc		(Snapper,"SPAWN_OW_BLACKWOLF_02_01");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_BLACKWOLF_02_01");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_BLACKWOLF_02_01");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_BLACKWOLF_02_01");


	Wld_InsertNpc   	(OrcWarrior_Roam,"SPAWN_OW_MOLERAT_ORC_04");	
	Wld_InsertNpc		(OrcBiter,"SPAWN_OW_MOLERAT_ORC_04");
	Wld_InsertNpc		(OrcBiter,"SPAWN_OW_MOLERAT_ORC_04");

	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_PATH_195");	
	Wld_InsertNpc		(OrcBiter,"OW_PATH_195");
	Wld_InsertNpc		(OrcBiter,"OW_PATH_195");

	Wld_InsertNpc		(Warg,"OW_ORC_ORCDOG_SPAWN01");
	Wld_InsertNpc		(Warg,"OW_ORC_ORCDOG_SPAWN01");
	Wld_InsertNpc		(Warg,"OW_ORC_ORCDOG_SPAWN01");
	Wld_InsertNpc		(Warg,"OW_ORC_ORCDOG_SPAWN01");

	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_PATH_3_05");	
	Wld_InsertNpc		(OrcBiter,"OW_PATH_3_05");
	Wld_InsertNpc		(OrcBiter,"OW_PATH_3_05");

	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_PATH_3_06");	
	Wld_InsertNpc		(OrcBiter,"OW_PATH_3_06");
	Wld_InsertNpc		(OrcBiter,"OW_PATH_3_06");

	Wld_InsertNpc		(OrcDog,"OW_PATH_104");
	Wld_InsertNpc		(OrcDog,"OW_PATH_104");
	Wld_InsertNpc		(OrcDog,"OW_PATH_104");
	Wld_InsertNpc		(OrcDog,"OW_PATH_104");

	Wld_InsertNpc		(DragonSnapper,"OW_PATH_013B");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_013B");

	Wld_InsertNpc		(OrcElite_Roam,"OW_PATH_BLACKWOLF07_SPAWN01");
	Wld_InsertNpc		(OrcWarrior_Roam,"OW_PATH_BLACKWOLF07_SPAWN01");
	Wld_InsertNpc		(OrcWarrior_Roam,"OW_PATH_BLACKWOLF07_SPAWN01");
	Wld_InsertNpc		(OrcWarrior_Roam,"OW_PATH_BLACKWOLF07_SPAWN01");
	Wld_InsertNpc		(OrcWarrior_Roam,"OW_PATH_BLACKWOLF07_SPAWN01");

	Wld_InsertItem 		(ItWr_GilbertLetter,"FP_OW_ITEM_14");


	// Orc Territory (Orc City Outside)
	Wld_InsertNpc		(Snapper,"SPAWN_OW_WARAN_ORC_01");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_WARAN_ORC_01");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_WARAN_ORC_01");
	
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_SCAVENGER15_SPAWN01");
	Wld_InsertNpc		(Snapper,"OW_PATH_SCAVENGER15_SPAWN01");

	Wld_InsertNpc		(DragonSnapper,"SPAWN_OW_SNAPPER_CAVE_DM");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_SNAPPER_CAVE_DM");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_SNAPPER_CAVE_DM");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_SNAPPER_CAVE_DM");

	Wld_InsertNpc		(Gobbo_Black,"SPAWN_OW_BLOCKGOBBO_CAVE_DM6");
	Wld_InsertNpc		(Gobbo_Black,"SPAWN_OW_BLOCKGOBBO_CAVE_DM6");
	Wld_InsertNpc		(Gobbo_Black,"SPAWN_OW_BLOCKGOBBO_CAVE_DM6");
	Wld_InsertNpc		(Gobbo_Black,"SPAWN_OW_BLOCKGOBBO_CAVE_DM6");

	Wld_InsertNpc		(Gobbo_Warrior,"SPAWN_OW_SNAPPER_INCAVE_DM2");
	Wld_InsertNpc		(Gobbo_Warrior,"SPAWN_OW_SNAPPER_INCAVE_DM2");
	
	Wld_InsertNpc		(DragonSnapper,"SPAWN_OW_SCAVENGER_ORC_03");
	Wld_InsertNpc		(DragonSnapper,"SPAWN_OW_SCAVENGER_ORC_03");
	
	Wld_InsertNpc		(OrcDog,"OW_PATH_099_007");
	Wld_InsertNpc		(OrcDog,"OW_PATH_099_007");
	Wld_InsertNpc		(OrcDog,"OW_PATH_099_007");
	Wld_InsertNpc		(OrcDog,"OW_PATH_099_007");


	// Orc Territory (Orc City)
	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_PATH_099");	
	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_PATH_099");	
	Wld_InsertNpc		(OrcBiter,"OW_PATH_099");

	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_ORCBRIDGE_END");	
	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_ORCBRIDGE_END");	
	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_ORCBRIDGE_END");	

	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_ORC_PATH_02_MOVE");	
	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_ORC_PATH_02_MOVE");	

	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_ORC_PATH_02_GUARD_SPAWN");	
	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_ORC_PATH_02_GUARD_SPAWN");	
	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_ORC_PATH_02_GUARD_SPAWN");	

/* 	Wld_InsertNpc   	(OrcCity_Dance,"OW_ORC_PLACE_01");	
	Wld_InsertNpc   	(OrcCity_Dance,"OW_ORC_PLACE_01_MOVEMENT3");	
	Wld_InsertNpc   	(OrcCity_Drum,"OW_ORC_HUT_01");	
	Wld_InsertNpc   	(OrcCity_Drum,"OW_ORC_HUT_02");	

	Wld_InsertNpc   	(OrcCity_Dance,"OW_ORC_PATH_06_1");	
	Wld_InsertNpc   	(OrcCity_Dance,"OW_ORC_HUT_03_MOVEMENT");	
	Wld_InsertNpc   	(OrcCity_Drum,"OW_ORC_HUT_03");	
	Wld_InsertNpc   	(OrcCity_Drum,"OW_ORC_HUT_04");	 */

	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_ORC_PATH_06_4");	
	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_ORC_PATH_06_4");	

	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_PATH_06_13_GUARD");	
	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_PATH_06_13_GUARD");	
	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_PATH_06_13_GUARD");	
	Wld_InsertNpc   	(OrcWarrior_Roam,"OW_PATH_06_13_GUARD");	

	Wld_InsertNpc   	(OrcWarrior_Roam,"FP_ORC_GUARD_SHAMANE");	
	Wld_InsertNpc   	(OrcWarrior_Roam,"FP_ORC_GUARD_SHAMANE");

	Wld_InsertNpc		(OrcShaman_Sit,"OW_ORC_SHAMAN_ROOM2");	
	Wld_InsertNpc		(OrcShaman_Sit,"OW_ORC_SHAMAN_ROOM2_2");	
	Wld_InsertNpc		(OrcShaman_Sit,"OW_ORC_SHAMAN_ROOM3_3");	

	Wld_InsertNpc   	(OrcElite_Roam,"OW_ORC_SHAMAN_PATH6");	
	Wld_InsertNpc   	(OrcElite_Roam,"OW_ORC_SHAMAN_ROOM3_1");	
	Wld_InsertNpc   	(OrcElite_Roam,"OW_ORC_SHAMAN_ROOM3_2");		

/* 	Wld_InsertNpc   	(OrcCity_Pray,"OW_PATH_06_13");	
	Wld_InsertNpc   	(OrcCity_Pray,"OW_PATH_06_14_HEILIGTUM2");	
	Wld_InsertNpc   	(OrcCity_Pray,"OW_PATH_06_14_HEILIGTUM3");	
	Wld_InsertNpc   	(OrcCity_Pray,"OW_PATH_06_14_HEILIGTUM");	
	Wld_InsertNpc   	(OrcCity_Pray,"OW_PATH_06_15");	 */

	Wld_InsertNpc   	(OrcElite_Roam,"OW_ORC_BOSS3");	
	Wld_InsertNpc   	(OrcElite_Roam,"OW_ORC_BOSS3");	

	Wld_InsertNpc   	(OrcElite_Roam,"OW_ORC_BOSS4");	
	Wld_InsertNpc   	(OrcElite_Roam,"OW_ORC_BOSS4");	
	Wld_InsertNpc   	(OrcElite_Roam,"OW_ORC_BOSS4");	
	Wld_InsertNpc   	(OrcElite_Roam,"OW_ORC_BOSS4");	

	Wld_InsertNpc   	(OrcElite_Roam,"OW_ORC_BOSS4_006");	
	Wld_InsertNpc   	(OrcElite_Roam,"OW_ORC_BOSS4_007");	
	Wld_InsertNpc   	(OrcElite_Roam,"OW_ORC_BOSS4_009");	
	Wld_InsertNpc   	(OrcElite_Roam,"OW_ORC_BOSS4_010");	


	// Orc Territory (Silvestro Mine)	
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_SNAPPER02_SPAWN01");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_SNAPPER02_SPAWN01");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_SNAPPER02_SPAWN02");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_SNAPPER02_SPAWN02");
	
	Wld_InsertNpc		(DragonSnapper,"SPAWN_OW_SCAVENGER_01_DEMONT5");
	Wld_InsertNpc		(DragonSnapper,"SPAWN_OW_SCAVENGER_01_DEMONT5");
	
	Wld_InsertNpc		(GRD_4150_Leiche,"OW_SILVESTROMINE");	
	Wld_InsertNpc		(PAL_2002_Silvestro,"OW_SILVESTROMINE");	
	Wld_InsertNpc		(PAL_2003_Leiche,"OW_SILVESTROMINE");	
	Wld_InsertNpc		(PAL_2005_Leiche,"OW_SILVESTROMINE");
	Wld_InsertNpc		(STRF_1152_Leiche,"OW_SILVESTROMINE");	
	Wld_InsertNpc		(STRF_1154_Leiche,"OW_SILVESTROMINE");	
	Wld_InsertNpc		(STRF_1155_Leiche,"OW_SILVESTROMINE");	
	Wld_InsertNpc		(STRF_1156_Leiche,"OW_SILVESTROMINE");	
	Wld_InsertNpc		(STRF_1157_Leiche,"OW_SILVESTROMINE");	

	B_KillNpc			(GRD_4150_Leiche);
	B_KillNpc			(PAL_2002_Silvestro);
	B_KillNpc			(PAL_2003_Leiche);	
	B_KillNpc			(PAL_2005_Leiche);
	B_KillNpc			(STRF_1152_Leiche);
	B_KillNpc			(STRF_1154_Leiche);
	B_KillNpc			(STRF_1155_Leiche);
	B_KillNpc			(STRF_1156_Leiche);
	B_KillNpc			(STRF_1157_Leiche);
	
	Wld_InsertNpc		(MinecrawlerQueen,"OW_SILVESTROMINE_042");
	Wld_InsertNpc		(MinecrawlerWarrior,"OW_SILVESTROMINE_041");
	Wld_InsertNpc		(MinecrawlerWarrior,"OW_SILVESTROMINE_040");
	Wld_InsertNpc		(MinecrawlerWarrior,"OW_SILVESTROMINE_036");
	Wld_InsertNpc		(MinecrawlerWarrior,"OW_SILVESTROMINE_035");
	Wld_InsertNpc		(MinecrawlerWarrior,"OW_SILVESTROMINE_034");
	Wld_InsertNpc		(MinecrawlerWarrior,"OW_SILVESTROMINE_033");
	Wld_InsertNpc		(MinecrawlerWarrior,"OW_SILVESTROMINE_031");
	Wld_InsertNpc		(MinecrawlerWarrior,"OW_SILVESTROMINE_031");
	Wld_InsertNpc		(Minecrawler,"OW_SILVESTROMINE_028");
	Wld_InsertNpc		(Minecrawler,"OW_SILVESTROMINE_025");
	Wld_InsertNpc		(Minecrawler,"OW_SILVESTROMINE_025");
	Wld_InsertNpc		(Minecrawler,"OW_SILVESTROMINE_022");
	Wld_InsertNpc		(Minecrawler,"OW_SILVESTROMINE_013");
	Wld_InsertNpc		(Minecrawler,"OW_SILVESTROMINE_012");
	Wld_InsertNpc		(Minecrawler,"OW_SILVESTROMINE_012");
	Wld_InsertNpc		(Minecrawler,"OW_SILVESTROMINE_010");
	Wld_InsertNpc		(Minecrawler,"OW_SILVESTROMINE_007");
	Wld_InsertNpc		(Minecrawler,"OW_SILVESTROMINE_004");
	Wld_InsertNpc		(Minecrawler,"OW_SILVESTROMINE_004");
	Wld_InsertNpc		(Minecrawler,"OW_SILVESTROMINE_001");


	// Sunken Tower
	Wld_InsertNpc		(StoneGolem,"OW_PATH_116");
	
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_210");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_210");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_210_A");

	Wld_InsertNpc		(Lurker,"MT05_001");
	Wld_InsertNpc		(Lurker,"MT05_002");
	Wld_InsertNpc		(Lurker,"MT05_003");
	
	Wld_InsertNpc		(Lurker,"MT08");
	Wld_InsertNpc		(Lurker,"MT08");
	
	Wld_InsertNpc	(Skeleton,	"MAGICTOWER_01"); 
	Wld_InsertNpc	(Skeleton,		"MAGICTOWER_01"); 
	
	Wld_InsertNpc	(Skeleton,	"MAGICTOWER_STAIRS"); 
	Wld_InsertNpc	(Skeleton,		"MAGICTOWER_STAIRS"); 

	Wld_InsertNpc	(SkeletonMage,		"MAGICTOWER_02"); 

	Wld_InsertNpc	(Zombie01, 			"MAGICTOWER_COR"); 
	Wld_InsertNpc	(Zombie02,			"MAGICTOWER_COR"); 

	Wld_InsertNpc	(Zombie03,			"MAGICTOWER_SAT"); 
	Wld_InsertNpc	(Zombie04,			"MAGICTOWER_SAT"); 

	Wld_InsertNpc	(Zombie01,			"MAGICTOWER_03_MOVEMENT"); 
	Wld_InsertNpc	(Zombie02,			"MAGICTOWER_03_MOVEMENT"); 
	
	Wld_InsertNpc	(Zombie03,			"MAGICTOWER_03_MOVEMENT_2"); 
	Wld_InsertNpc	(Zombie04,			"MAGICTOWER_03_MOVEMENT_2"); 
	
	Wld_InsertNpc	(Zombie01,			"MAGICTOWER_04"); 
	Wld_InsertNpc	(Zombie02,			"MAGICTOWER_04"); 
	Wld_InsertNpc	(Zombie03,			"MAGICTOWER_04"); 
	Wld_InsertNpc	(Zombie04,			"MAGICTOWER_04"); 
	Wld_InsertNpc		(DemonLord,		"MAGICTOWER_04_002"); 

	Wld_InsertNpc	(Zombie01,			"MAGICTOWER_06"); 
	Wld_InsertNpc	(Zombie02,			"MAGICTOWER_06"); 
	Wld_InsertNpc	(Zombie03,			"MAGICTOWER_06"); 
	Wld_InsertNpc	(Zombie04,			"MAGICTOWER_06"); 
	Wld_InsertNpc		(DemonLord,		"MAGICTOWER_06_002");


	// Road to Psi Camp
	Wld_InsertNpc		(Wolf,"SPAWN_OW_WOLF_OC_PSI");
	Wld_InsertNpc		(Wolf,"SPAWN_OW_WOLF_OC_PSI");

	Wld_InsertNpc		(Bloodfly,"SPAWN_BLOODFLY_LOCATION_29_01");
	Wld_InsertNpc		(Bloodfly,"SPAWN_BLOODFLY_LOCATION_29_01");
	Wld_InsertNpc		(Bloodfly,"SPAWN_BLOODFLY_LOCATION_29_01");
	Wld_InsertNpc		(Bloodfly,"SPAWN_BLOODFLY_LOCATION_29_01");

	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCAVENGER_GOBBOCAVE_03_01");
	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCAVENGER_GOBBOCAVE_03_01");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_SNAPPER_OCWOOD1_05_02");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_SNAPPER_OCWOOD1_05_02");

	Wld_InsertNpc		(Waran,"SPAWN_OW_WARAN_OC_PSI_GOBBOCAVE_01");
	Wld_InsertNpc		(Waran,"SPAWN_OW_WARAN_OC_PSI_GOBBOCAVE_01");
	Wld_InsertNpc		(Waran,"SPAWN_OW_WARAN_OC_PSI_GOBBOCAVE_01");

	Wld_InsertNpc		(Gobbo_Warrior,"SPAWN_GOBBO_LOCATION_29_03");
	Wld_InsertNpc		(Gobbo_Warrior,"SPAWN_GOBBO_LOCATION_29_03");
	Wld_InsertNpc		(Gobbo_Black,"SPAWN_GOBBO_LOCATION_29_03");
	Wld_InsertNpc		(Gobbo_Black,"SPAWN_GOBBO_LOCATION_29_03");
	Wld_InsertNpc		(Gobbo_Black,"SPAWN_GOBBO_LOCATION_29_03");
	Wld_InsertNpc		(Gobbo_Black,"SPAWN_GOBBO_LOCATION_29_03");

	Wld_InsertNpc		(Gobbo_Elite,"SPAWN_OW_GOBBO_CAVE03INDOOR_05");
	Wld_InsertNpc		(Gobbo_Elite,"SPAWN_OW_GOBBO_CAVE03INDOOR_05");
	Wld_InsertNpc		(Gobbo_Warrior,"SPAWN_OW_GOBBO_CAVE03INDOOR_02");
	Wld_InsertNpc		(Gobbo_Warrior,"SPAWN_OW_GOBBO_CAVE03INDOOR_02");
	Wld_InsertNpc		(Gobbo_Warrior,"SPAWN_OW_GOBBO_CAVE03INDOOR_02");

	Wld_InsertNpc		(Gobbo_Black,"GOBBO_MASTERCAVE5");
	Wld_InsertNpc		(Gobbo_Black,"GOBBO_MASTERCAVE5");
	Wld_InsertNpc		(Gobbo_Black,"GOBBO_MASTERCAVE7");
	Wld_InsertNpc		(Gobbo_Black,"GOBBO_MASTERCAVE7");
	Wld_InsertNpc		(Gobbo_Black,"GOBBO_MASTERCAVE8");
	Wld_InsertNpc		(Gobbo_Black,"GOBBO_MASTERCAVE8");
	Wld_InsertNpc		(Gobbo_Black,"GOBBO_MASTERCAVE8");
	Wld_InsertNpc		(Gobbo_Black,"GOBBO_MASTERCAVE9");
	Wld_InsertNpc		(Gobbo_Warrior,"GOBBO_MASTERCAVE9");
	Wld_InsertNpc		(Gobbo_Warrior,"GOBBO_MASTERCAVE9");
	Wld_InsertNpc		(Gobbo_Warrior,"GOBBO_MASTERCAVE10");
	Wld_InsertNpc		(Gobbo_Elite,"GOBBO_MASTERCAVE10");
	Wld_InsertNpc		(Gobbo_Elite,"GOBBO_MASTERCAVE10");

	Wld_InsertNpc		(Scavenger_Demon,"SPAWN_OW_SCAVENGER_OCWALD_PSI_PATH2");
	Wld_InsertNpc		(Scavenger_Demon,"SPAWN_OW_SCAVENGER_OCWALD_PSI_PATH2");

	Wld_InsertNpc		(Scavenger_Demon,"FP_ROAM_OW_WARAN_OCWALD_PSI_PATH4");
	Wld_InsertNpc		(Scavenger_Demon,"FP_ROAM_OW_WARAN_OCWALD_PSI_PATH4");
	Wld_InsertNpc		(Scavenger_Demon,"FP_ROAM_OW_WARAN_OCWALD_PSI_PATH4");

	Wld_InsertNpc		(Scavenger_Demon,"SPAWN_SCAVENGERPATH_OC_PSI_14");
	Wld_InsertNpc		(Scavenger_Demon,"SPAWN_SCAVENGERPATH_OC_PSI_14");

	Wld_InsertNpc		(Scavenger_Demon,"SPAWN_BLOODFLYPATH_OC_PSI_14");
	Wld_InsertNpc		(Scavenger_Demon,"SPAWN_BLOODFLYPATH_OC_PSI_14");


	// Road to Stone Fortress
	Wld_InsertNpc		(Waran,"PATH_TO_PLATEAU01");
	Wld_InsertNpc		(Waran,"PATH_TO_PLATEAU01");
	Wld_InsertNpc		(Waran,"PATH_TO_PLATEAU01"); 
	
	Wld_InsertNpc		(Waran,"SPAWN_OW_WARAN_EBENE_02_05");
	Wld_InsertNpc		(Waran,"SPAWN_OW_WARAN_EBENE_02_05");
	Wld_InsertNpc		(Waran,"SPAWN_OW_WARAN_EBENE_02_05");

	Wld_InsertNpc		(Waran,"SPAWN_OW_WARAN_EBENE2_02_05");
	Wld_InsertNpc		(Waran,"SPAWN_OW_WARAN_EBENE2_02_05");
	Wld_InsertNpc		(Waran,"SPAWN_OW_WARAN_EBENE2_02_05");

	Wld_InsertNpc		(OUT_4148_GESTATH,"PATH_TO_PLATEAU03_001");

	Wld_InsertNpc		(Zombie01,"PLATEAU_ROUND02_CAVE_MOVE");
	Wld_InsertNpc		(Zombie02,"PLATEAU_ROUND02_CAVE_MOVE");
	Wld_InsertNpc		(Zombie03,"PLATEAU_ROUND02_CAVE_MOVE");
	Wld_InsertNpc		(Zombie04,"PLATEAU_ROUND02_CAVE_MOVE");

	Wld_InsertNpc		(Bloodhound,"PATH_TO_PLATEAU04_RIGHT");

	Wld_InsertNpc		(Bloodhound,"PLATEAU_ROUND01");
	Wld_InsertNpc		(Bloodhound,"LOCATION_18_IN");
	Wld_InsertNpc		(Bloodhound,"PLATEAU_ROUND04");
	Wld_InsertNpc		(Bloodhound,"PLATEAU_ROUND05");
	Wld_InsertNpc		(Bloodhound,"PLATEAU_ROUND05");



	// Old Castle
	Wld_InsertNpc   	(OrcElite_Roam,"CASTLE_5");	
	Wld_InsertNpc   	(OrcElite_Roam,"CASTLE_5");	

	Wld_InsertNpc		(Hellhound,"OW_PATH_012");
	Wld_InsertNpc		(Hellhound,"OW_PATH_012");

	Wld_InsertNpc		(Hellhound,"PATH_CASTLE_TO_WATERFALL");
	Wld_InsertNpc		(Hellhound,"PATH_CASTLE_TO_WATERFALL");

	Wld_InsertNpc		(Shadowbeast,"OW_PATH_012A_002");

	Wld_InsertNpc   	(Snapper,"CASTLE_8_006");	
	Wld_InsertNpc   	(Snapper,"CASTLE_8_006");

	Wld_InsertNpc   	(Snapper,"CASTLE_8_008");	
	Wld_InsertNpc   	(Snapper,"CASTLE_8_008");
		
	Wld_InsertNpc   	(Snapper,"CASTLE_8_009");	
	Wld_InsertNpc   	(Snapper,"CASTLE_8_009");	

	Wld_InsertNpc   	(DragonSnapper,"CASTLE_8_005");
		
	Wld_InsertNpc   	(OrcElite_Roam,"CASTLE_02");	
	Wld_InsertNpc   	(OrcElite_Roam,"CASTLE_05");	
	Wld_InsertNpc   	(OrcElite_Roam,"CASTLE_07");	
	Wld_InsertNpc   	(OrcElite_Roam,"CASTLE_09");
	Wld_InsertNpc   	(OrcElite_Roam,"CASTLE_22");


	// Orc Graveyard (Outside)
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_198_ORCGRAVEYARD4");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_198_ORCGRAVEYARD4");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_198_ORCGRAVEYARD4");

	Wld_InsertNpc		(OrcElite_Rest,"OW_PATH_198_ORCGRAVEYARD6");

	Wld_InsertNpc		(OrcShaman_Sit,"OW_PATH_198_ORCGRAVEYARD8");


	// Forest (West)
	Wld_InsertNpc		(BlackWolf,"SPAWN_OW_WOLF2_WALD_OC2");
	Wld_InsertNpc		(BlackWolf,"SPAWN_OW_WOLF2_WALD_OC2");

	Wld_InsertNpc		(Wolf,"SPAWN_OW_MOLERAT2_WALD_OC1");
	Wld_InsertNpc		(Wolf,"SPAWN_OW_MOLERAT2_WALD_OC1");
	Wld_InsertNpc		(Wolf,"SPAWN_OW_MOLERAT2_WALD_OC1");
	
	Wld_InsertNpc		(Wolf,"SPAWN_OW_SCAVENGER_INWALD_OC2");
	Wld_InsertNpc		(Wolf,"SPAWN_OW_SCAVENGER_INWALD_OC2");

	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_WOLF2_WALD_OC3");
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_WOLF2_WALD_OC3");

	Wld_InsertNpc		(Bloodfly,"SPAWN_WALD_OC_BLOODFLY01");
	Wld_InsertNpc		(Bloodfly,"SPAWN_WALD_OC_BLOODFLY01");

	Wld_InsertNpc		(Keiler,"SPAWN_OW_SCAVENGER_LONE_WALD_OC3");
	Wld_InsertNpc		(Keiler,"SPAWN_OW_SCAVENGER_LONE_WALD_OC3");
	
	Wld_InsertNpc		(Wolf,"PATH_WALD_OC_MOLERATSPAWN");
	Wld_InsertNpc		(Wolf,"PATH_WALD_OC_MOLERATSPAWN");
		
	Wld_InsertNpc		(BlackWolf,"PATH_WALD_OC_WOLFSPAWN");
	Wld_InsertNpc		(BlackWolf,"PATH_WALD_OC_WOLFSPAWN");

	Wld_InsertNpc		(Lurker,"SPAWN_SCAVENGER_PATH_OC_PSI_03");
	Wld_InsertNpc		(Lurker,"SPAWN_SCAVENGER_PATH_OC_PSI_03");

	Wld_InsertNpc		(Lurker,"SPAWN_SCAVENGER_PATH_OC_PSI_02");
	Wld_InsertNpc		(Lurker,"SPAWN_SCAVENGER_PATH_OC_PSI_02");

	Wld_InsertNpc		(Snapper,"SPAWN_OW_SCAVENGER_PSIWOOD2");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_SCAVENGER_PSIWOOD2");

	Wld_InsertNpc		(Snapper,"SPAWN_OW_WOLF_PSIWOOD_5");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_WOLF_PSIWOOD_5");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_WOLF_PSIWOOD_5");

	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLYS_PSIWOOD_4");
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLYS_PSIWOOD_4");
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLYS_PSIWOOD_4");
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLYS_PSIWOOD_4");

	Wld_InsertNpc		(Shadowbeast, "OW_PATH_227");
	
	Wld_InsertNpc       (Shadowbeast,"SPAWN_OW_SHADOWBEAST2_PSIWOOD_02");

	Wld_InsertNpc		(Warg,"SPAWN_OW_WOLFK__PSIWOOD_OUT3");
	Wld_InsertNpc		(Warg,"SPAWN_OW_WOLFK__PSIWOOD_OUT3");

	Wld_InsertNpc		(Molerat,"SPAWN_OW_MOLERATN_PSIWOOD_1");
	Wld_InsertNpc		(Molerat,"SPAWN_OW_MOLERATN_PSIWOOD_1");

	Wld_InsertNpc		(Molerat,"SPAWN_OW_MOLERATL__PSIWOOD_01");
	Wld_InsertNpc		(Molerat,"SPAWN_OW_MOLERATL__PSIWOOD_01");

	Wld_InsertNpc		(Wolf,"SPAWN_OW_WOLFL__PSIWOOD_OUT4");
	Wld_InsertNpc		(Wolf,"SPAWN_OW_WOLFL__PSIWOOD_OUT4");

	Wld_InsertNpc		(Snapper,"OW_PATH_SCAVENGER03_SPAWN01");
	Wld_InsertNpc		(Snapper,"OW_PATH_SCAVENGER03_SPAWN01");
	Wld_InsertNpc		(Snapper,"OW_PATH_SCAVENGER03_SPAWN01");
	Wld_InsertNpc		(Snapper,"OW_PATH_SCAVENGER03_SPAWN01");

	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLY_01_OCWOOD1_OCW5");
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLY_01_OCWOOD1_OCW5");
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLY_01_OCWOOD1_OCW5");
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLY_01_OCWOOD1_OCW5");

	Wld_InsertNpc		(Warg,"SPAWN_OW_PATH_WOLF_WOOD");
	Wld_InsertNpc		(Warg,"SPAWN_OW_PATH_WOLF_WOOD");
	Wld_InsertNpc		(Warg,"SPAWN_OW_PATH_WOLF_WOOD");

	Wld_InsertNpc		(Wolf,"SPAWN_OW_NWOLF_04_PSIWOOD5");
	Wld_InsertNpc		(Wolf,"SPAWN_OW_NWOLF_04_PSIWOOD5");

	Wld_InsertNpc		(Keiler,"SPAWN_OW_ENTRANCE_SCAVENGER_OC1_02");

	Wld_InsertNpc		(Bloodhound,"SPAWN_OW_BLOODHOUND_01");
	Wld_InsertNpc		(Bloodhound,"SPAWN_OW_BLOODHOUND_01");

	Wld_InsertNpc		(Keiler,"SPAWN_SCAVENGEROW_PATH_280");

	Wld_InsertNpc		(BlackWolf,"SPAWN_OW_WOLF_NEARSHADOW_PSIWOOD_02");
	Wld_InsertNpc		(BlackWolf,"SPAWN_OW_WOLF_NEARSHADOW_PSIWOOD_02");
	Wld_InsertNpc		(BlackWolf,"SPAWN_OW_WOLF_NEARSHADOW_PSIWOOD_02");

	Wld_InsertNpc		(Keiler,"SPAWN_OW_SCAVENGER_04_02_1");
	Wld_InsertNpc		(Keiler,"SPAWN_OW_SCAVENGER_04_02_1");
	Wld_InsertNpc		(Keiler,"SPAWN_OW_SCAVENGER_04_02_1");
	Wld_InsertNpc		(Keiler,"SPAWN_OW_SCAVENGER_04_02_1");

	Wld_InsertNpc		(DragonSnapper,"OW_PATH_008");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_008");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_008");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_008");

	Wld_InsertNpc		(Warg,"OW_PATH_WOLF04_SPAWN01");
	Wld_InsertNpc		(Warg,"OW_PATH_WOLF04_SPAWN01");
	Wld_InsertNpc		(Warg,"OW_PATH_WOLF04_SPAWN01");
	Wld_InsertNpc		(Warg,"OW_PATH_WOLF04_SPAWN01");

	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCAVENGER_NEARSHADOW_PSIWOOD_01");
	
	Wld_InsertNpc       (Shadowbeast,"SPAWN_OW_SHADOWBEAST1_PSIWOOD_02");

	Wld_InsertNpc		(Hellhound,"SPAWN_OW_WOLF_04_PSI5");
	Wld_InsertNpc		(Hellhound,"SPAWN_OW_WOLF_04_PSI5");
	Wld_InsertNpc		(Hellhound,"SPAWN_OW_WOLF_04_PSI5");

	Wld_InsertNpc		(Molerat,"FP_ROAM_OW_MOLERAT_04_PSI");
	Wld_InsertNpc		(Molerat,"FP_ROAM_OW_MOLERAT_04_PSI");

	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCAVNEGER_04_PSI3");
	Wld_InsertNpc		(Scavenger,"SPAWN_OW_SCAVNEGER_04_PSI3");

	Wld_InsertNpc		(DragonSnapper,"OW_PATH_WOLF05_SPAWN01");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_WOLF05_SPAWN01");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_WOLF05_SPAWN01");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_WOLF05_SPAWN01");

	Wld_InsertNpc		(DragonSnapper,"OW_PATH_WOLF05_SPAWN02");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_WOLF05_SPAWN02");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_WOLF05_SPAWN02");
	Wld_InsertNpc		(DragonSnapper,"OW_PATH_WOLF05_SPAWN02");

	// Orc Tents
	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_IN_000");
	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_OUT_000");
	
	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_IN_001");
	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_OUT_001");
	
	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_IN_002");
	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_OUT_002");
	Wld_InsertNpc       (OrcShaman_Sit,"FP_CAMPFIRE_ORCTENT_002");

	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_IN_003");
	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_OUT_003");
	
	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_IN_004");
	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_OUT_004");
	
	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_IN_005");
	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_OUT_005");
	
	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_IN_006");
	Wld_InsertNpc       (OrcElite_Roam,"OW_ORCTENT_OUT_006");
	

	// Orc Tents (Old Camp)
	Wld_InsertNpc       (OrcElite_Sit,"OC_ORCTENT_001");
	Wld_InsertNpc   	(OrcWarrior_Roam,"OC1_MOVE");	
	Wld_InsertNpc   	(OrcWarrior_Roam,"OC1_MOVE");	

	Wld_InsertNpc		(OrcElite_Roam,"PATH_OC_NC_28");
	Wld_InsertNpc		(OrcDog,"PATH_OC_NC_28B");
	Wld_InsertNpc   	(OrcDog,"PATH_OC_NC_28B");	
	Wld_InsertNpc   	(OrcDog,"PATH_OC_NC_28B");	

	Wld_InsertNpc       (OrcElite_Sit,"OC_ORCTENT_002");
	Wld_InsertNpc       (OrcWarrior_Roam,"OC_ROUND_029");
	Wld_InsertNpc       (OrcWarrior_Roam,"OC_ROUND_029");

	Wld_InsertNpc   	(OrcWarrior_Sit,"OC_ROUND_22_CF_1");	
	Wld_InsertNpc   	(OrcWarrior_Sit,"OC_ROUND_22_CF_2");	
	Wld_InsertNpc   	(OrcWarrior_Sit,"OC_ROUND_22_CF_2_MOVEMENT");	
	
	Wld_InsertNpc       (OrcElite_Sit,"OC_ORCTENT_003");
	Wld_InsertNpc       (OrcElite_Sit,"OC_ORCTENT_003_A");
	Wld_InsertNpc       (OrcElite_Sit,"OC_ORCTENT_003_B");
	Wld_InsertNpc	    (OrcShaman_Sit,"FP_CAMPFIRE_ORCTENT_003");
	Wld_InsertNpc       (OrcWarrior_Roam,"OC_ROUND_031");
	Wld_InsertNpc       (OrcWarrior_Roam,"OC_ROUND_031");
	Wld_InsertNpc       (OrcWarrior_Roam,"OC_ROUND_031");
	
	Wld_InsertNpc       (OrcElite_Sit,"OC_ORCTENT_004");
	Wld_InsertNpc       (OrcWarrior_Roam,"OW_PATH_298A");
	Wld_InsertNpc       (OrcWarrior_Roam,"OW_PATH_298A");
	
	Wld_InsertNpc       (OrcElite_Sit,"OC_ORCTENT_005");
	Wld_InsertNpc       (OrcWarrior_Roam,"OC_ROUND_25");
	Wld_InsertNpc       (OrcWarrior_Roam,"OC_ROUND_25");
	
	Wld_InsertNpc       (OrcElite_Sit,"OC_ORCTENT_006");
	Wld_InsertNpc       (OrcWarrior_Roam,"OC_ROUND_032");
	Wld_InsertNpc       (OrcWarrior_Roam,"OC_ROUND_032");
	
	Wld_InsertNpc       (OrcElite_Sit,"OC_ORCTENT_007");
	Wld_InsertNpc       (OrcWarrior_Roam,"OC_ROUND_033");
	Wld_InsertNpc       (OrcWarrior_Roam,"OC_ROUND_033");


	// Old Camp Area
	Wld_InsertNpc		(Giant_Bug,"OW_SCAVENGER_SPAWN_TREE");
	Wld_InsertNpc		(Giant_Bug,"OW_SCAVENGER_SPAWN_TREE");

	Wld_InsertNpc   	(OrcWarrior_Roam,"SPAWN_OW_SCAVENGER_AL_ORC");	
	Wld_InsertNpc		(OrcDog,"SPAWN_OW_SCAVENGER_AL_ORC");
	Wld_InsertNpc		(OrcDog,"SPAWN_OW_SCAVENGER_AL_ORC");

	Wld_InsertNpc   	(OrcWarrior_Roam,"SPAWN_PATH_GUARD1");	
	Wld_InsertNpc   	(OrcDog,"SPAWN_PATH_GUARD1");

	Wld_InsertNpc   	(OrcWarrior_Roam,"SPAWN_OW_SCAVENGER_06_04");	
	Wld_InsertNpc   	(OrcWarrior_Roam,"SPAWN_OW_SCAVENGER_06_04");	
	Wld_InsertNpc		(OrcDog,"SPAWN_OW_SCAVENGER_06_04");
	Wld_InsertNpc		(OrcDog,"SPAWN_OW_SCAVENGER_06_04");

	Wld_InsertNpc		(Gobbo_Warrior,"SPAWN_OW_MOLERAT_06_CAVE_GUARD3");
	Wld_InsertNpc		(Gobbo_Black,"SPAWN_OW_MOLERAT_06_CAVE_GUARD3");
	Wld_InsertNpc		(Gobbo_Black,"SPAWN_OW_MOLERAT_06_CAVE_GUARD3");

	Wld_InsertNpc		(GRD_4152_Olav, 		"LOCATION_15_IN_2");
	Wld_InsertNpc		(Molerat,"SPAWN_OW_SMALLCAVE01_MOLERAT");	
	Wld_InsertNpc		(Molerat,"SPAWN_OW_SMALLCAVE01_MOLERAT");	
	Wld_InsertNpc		(Molerat,"SPAWN_OW_SMALLCAVE01_MOLERAT");	

	Wld_InsertNpc		(Snapper,"SPAWN_OW_SCAVENGER_OC_PSI_RUIN1");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_SCAVENGER_OC_PSI_RUIN1");
	Wld_InsertNpc		(Snapper,"SPAWN_OW_SCAVENGER_OC_PSI_RUIN1");

	Wld_InsertNpc		(Waran,"SPAWN_OW_WARAN_OC_PSI3");
	Wld_InsertNpc		(Waran,"SPAWN_OW_WARAN_OC_PSI3");
	Wld_InsertNpc		(Waran,"SPAWN_OW_WARAN_OC_PSI3");

	Wld_InsertNpc		(Scavenger,"SPAWN_O_SCAVENGER_05_02");
	Wld_InsertNpc		(Scavenger,"SPAWN_O_SCAVENGER_05_02");

	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLY_OC_WOOD03");
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLY_OC_WOOD03");
	Wld_InsertNpc		(Bloodfly,"SPAWN_OW_BLOODFLY_OC_WOOD03");

	Wld_InsertNpc		(Lurker,"OW_PATH_OW_PATH_WARAN05_SPAWN01");
	Wld_InsertNpc		(Lurker,"OW_PATH_OW_PATH_WARAN05_SPAWN01");
	Wld_InsertNpc		(Lurker,"OW_PATH_OW_PATH_WARAN05_SPAWN01");


	// Hosh-Pak
	Wld_InsertNpc		(Snapper,"FP_ROAM_OW_SNAPPER_OW_ORC");
	Wld_InsertNpc		(Snapper,"FP_ROAM_OW_SNAPPER_OW_ORC");
	Wld_InsertNpc		(Snapper,"FP_ROAM_OW_SNAPPER_OW_ORC");
	Wld_InsertNpc		(Snapper,"FP_ROAM_OW_SNAPPER_OW_ORC");
	Wld_InsertNpc		(Snapper,"FP_ROAM_OW_SNAPPER_OW_ORC");
	Wld_InsertNpc		(Snapper,"FP_ROAM_OW_SNAPPER_OW_ORC");

	Wld_InsertNpc		(DragonSnapper,"LOCATION_16_IN");

	Wld_InsertNpc   (OrcShaman_Hosh_Pak	,"OW_HOSHPAK_CAMPFIRE");
	Wld_InsertNpc   (OrcShaman_Sit	,"OW_HOSHPAK_CAMPFIRE");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OW_HOSHPAK_10");
	Wld_InsertNpc   (OrcWarrior_Roam,"OW_HOSHPAK_03");	
	Wld_InsertNpc   (OrcWarrior_Roam,"OW_HOSHPAK_08");
	Wld_InsertNpc   (OrcWarrior_Roam,"OW_HOSHPAK_06");
	Wld_InsertNpc   (OrcElite_Sit,"OW_HOSHPAK_TENT");	
};

	func void INIT_SUB_SURFACE ()
	{
	// ------ ROOMS ------
		Wld_AssignRoomToGuild("UTEMP01", GIL_DMT);

		Wld_AssignRoomToGuild("OWORC01", GIL_ORC);
		Wld_AssignRoomToGuild("OWORC02", GIL_ORC);
		Wld_AssignRoomToGuild("OWORC03", GIL_ORC);
		Wld_AssignRoomToGuild("OWORC04", GIL_ORC); //doesnt exist??
		Wld_AssignRoomToGuild("OWORC05", GIL_ORC);
		Wld_AssignRoomToGuild("OWORC06", GIL_ORC);
	
	// ------ OBJECTROUTINE ------
		// Fajeth's mine
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_HIGH2_02");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_HIGH2_03");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_HIGH2_25");
		
		// Old Mine
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_HIGH2_23");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_HIGH2_24");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_HIGH2_29");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_HIGH2_30");
		
		// Road to Psi Camp
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_PCHIGH2_01");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_PCHIGH2_02");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_PCHIGH2_03");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_PCHIGH2_04");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_PCHIGH2_05");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_PCHIGH2_06");

		// Demon Tower
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_HIGH2_11");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_HIGH2_12");

		// Orc Graveyard
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_ORCLAMP_01");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_ORCLAMP_02");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_ORCLAMP_03");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_ORCLAMP_04");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_ORCLAMP_05");
		REV_SetObjectRoutine_Fire ("OW_FIREPLACE_ORCLAMP_06");
	
	// ------ TRIGGERS ------
		// Fish Movers
		Wld_SendTrigger("EVT_OW_FISHMOVER_LIST");

		// Castle
		Wld_SendTrigger("EVT_CASTLE_TRIGGER_LIST_1");

		// Old Mine
		Wld_SendTrigger("EVT_AM_LOB_GATE_BIG");

		// Free Mine
		Wld_SendTrigger("FREEMINEGATE");

		// Old Monastery
		Wld_SendTrigger("EVT_OW_FOKUS_GATE_MOVER_01");

		// Exchange Place
		Wld_SendTrigger("EVT_OW_STARTLOCKOUT_MOVER");

		B_ENTER_OLDWORLD();
	};

	func void INIT_SURFACE ()
	{
		B_InitMonsterAttitudes ();
		B_InitGuildAttitudes();
		B_InitNpcGlobals ();    
		
		INIT_SUB_SURFACE();
	};


// ------  OLDWORLD.zen ------
FUNC VOID INIT_OLDWORLD ()
{
	// ------ INIT WORLD ------
		INIT_SUB_OLDCAMP();
		INIT_SUB_NEWCAMP();
		INIT_SUB_PSICAMP();
		INIT_SUB_FREEMINECAMP();
		INIT_SUB_DEMONTOWER();
		INIT_SUB_FORTRESS();
		INIT_SUB_SURFACE();	

	// ------ INIT NPC ------
		B_InitMonsterAttitudes ();
		B_InitGuildAttitudes();
		B_InitNpcGlobals ();    

		B_ENTER_OLDWORLD();

	if (MIS_ReadyForChapter4  == TRUE )	//Joly: muß hier in der INIT ganz zum schluss stehen, nachdem alle NSCs fürs Kapitel insertet wurden!!!
	&& (B_Chapter4_OneTime == FALSE)
	{
		B_Kapitelwechsel (4, OLDWORLD_ZEN);
		B_Chapter4_OneTime = TRUE;
	};
};

FUNC VOID STARTUP_OLDWORLD ()
{
	STARTUP_OLDCAMP();
	STARTUP_NEWCAMP();
	STARTUP_PSICAMP();
	STARTUP_FREEMINECAMP();
	STARTUP_DEMONTOWER();
	STARTUP_FORTRESS();
	STARTUP_SURFACE();

	//Wld_SetTime	(00,00);//Joly:nachtstart wegen video
};


	////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////
		// *************
		// NEWWORLD
		// *************
	////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////

// ------ CITY -------
func void STARTUP_NewWorld_Part_City_01()
{
	// Allgemein 
	// ----------------------
	// 5 - 6 Uhr Vorbereitung
	// 6 - 20 Uhr Arbeiten
	// 20 - 0 Uhr Freizeit
	// 0 - 5 Uhr Schlafen oder Kneipe
	// ------------------------------
	
	//ITEMS Türme
	Wld_InsertItem (ItMw_Zweihaender1,"FP_CITY_WEAPON_01");//
	Wld_InsertItem (ItMw_Schwert,"FP_CITY_WEAPON_02");//
	Wld_InsertItem (ItMw_Zweihaender2,"FP_CITY_WEAPON_03");//
	Wld_InsertItem (ItMw_Schwert4,"FP_CITY_WEAPON_04");//
	Wld_InsertItem (ItMw_Kriegshammer2,"FP_CITY_WEAPON_05");//
	Wld_InsertItem (ItMw_ShortSword5,"FP_CITY_WEAPON_06");//
	
	Wld_InsertItem (Itke_Buerger,"FP_ITEM_OV_01");//
	Wld_InsertItem (ItWr_Pfandbrief_MIS,"FP_ITEM_OV_02");//
	
	//---Südtor--------------------
	Wld_InsertNpc (Mil_309_Stadtwache	,"NW_CITY_ENTRANCE_01");	//Stadttorwache
	Wld_InsertNpc (Mil_310_Stadtwache	,"NW_CITY_ENTRANCE_01");	//Stadttorwache Important
	
	//---Hauptstrasse--------------
	Wld_InsertNpc (VLK_458_Rupert		, "NW_CITY_ENTRANCE_01");	//Essensstand, pennt bei Matteo - NW_City_Bed_Rupert
	Wld_InsertNpc (VLK_499_Buerger		, "NW_CITY_ENTRANCE_01");	//OV-Bürger. Ißt an Stand, Smalltalk im OV, pennt iv ??? (OV)
	Wld_InsertNpc (VLK_416_Matteo		, "NW_CITY_ENTRANCE_01");	//Ausrüstungs-Händler, pennt in NW_City_Bed_Matteo
	Wld_InsertNpc (MIL_325_Miliz 		, "NW_CITY_ENTRANCE_01");	//TORWACHE vor Matteos Lager
	Wld_InsertNpc (VLK_425_Regis		, "NW_CITY_ENTRANCE_01");	//Bank, Abends Smalltalk vor Kneipe, nachts in Stadtkneipe.
	Wld_InsertNpc (VLK_451_Buerger		, "NW_CITY_ENTRANCE_01");	//Smalltalk mit 452, Smalltalk mit Thorben, nachts in Kneipe 
	Wld_InsertNpc (VLK_452_Buerger		, "NW_CITY_ENTRANCE_01");	//Smalltalk mit 451, pennt in OV - wo ???
	//-----------------------------
	Wld_InsertNpc (VLK_413_Bosper 		, "NW_CITY_ENTRANCE_01");	//Bogner, lebt und pennt in NW_CITY_BED_GRITTA
	Wld_InsertNpc (VLK_427_Buergerin	, "NW_CITY_ENTRANCE_01"); 	//Bospers Frau, Smalltalk mit 452, pennt in NW_CITY_MERCHANT_SHOP01_IN_01
	//-----------------------------
	Wld_InsertNpc (VLK_462_Thorben		, "NW_CITY_ENTRANCE_01"); 	//Schreiner, pennt in NW_CITY_BED_BOSPER
	Wld_InsertNpc (VLK_418_Gritta		, "NW_CITY_ENTRANCE_01"); 	//Nichte vom Schreiner - Mission "Kleid" - lebt und pennt in NW_CITY_BED_BOSPER_B
	//-----------------------------
	Wld_InsertNpc (VLK_412_Harad	 	, "NW_CITY_ENTRANCE_01");	//Schmied, pennt in NW_City_Bed_Harad
	Wld_InsertNpc (VLK_457_Brian		, "NW_CITY_ENTRANCE_01");	//Schmiedgehilfe, abends Smalltalk vor Kneipe, pennt in NW_City_Bed_Brian
	
	//--------------------Turm bei Gritta -----------------------
	Wld_InsertNpc (BDT_448_JOE			, "NW_CITY_ENTRANCE_01");	//Dieb wurde dummerweise eingesperrt
	//-----------------------------
	Wld_InsertNpc (Mil_319_Pablo		, "NW_CITY_ENTRANCE_01");	//Steckbrief-Miliz, Rotationswache Hauptstrasse/Kneipenstrasse/Vatras-Platz
	
	//---Alchemist-----------------
	Wld_InsertNpc (VLK_417_Constantino	, "NW_CITY_ENTRANCE_01");	//Alchemy Master, lebt und pennt in NW_City_Bed_Velax
	
	//---Kneipenstrasse und Vatras-Platz---
	Wld_InsertNpc (VLK_420_Coragon 		, "NW_CITY_ENTRANCE_01");	//Wirt Stadtkneipe 24h
	//------------------------------
	Wld_InsertNpc (Mil_323_Miliz		, "NW_CITY_ENTRANCE_01"); 	//Rotationswache Hauptstrasse/Kneipenstrasse/Vatras-Platz
	//------------------------------
	Wld_InsertNpc (KDW_439_Vatras	 	, "NW_CITY_ENTRANCE_01");	//24 im Schrein, betet nachts am Schrein
	Wld_InsertNpc (VLK_426_Buergerin	, "NW_CITY_ENTRANCE_01");	//Zuhörerin, nachts vor Stadtkneipe
	Wld_InsertNpc (VLK_428_Buergerin	, "NW_CITY_ENTRANCE_01");	//Zuhörerin, nachts Smalltalk Bierstand
	Wld_InsertNpc (VLK_450_Buerger		, "NW_CITY_ENTRANCE_01");	//Zuhörer, nachts vor Stadtkneipe
	Wld_InsertNpc (VLK_454_Buerger		, "NW_CITY_ENTRANCE_01");	//Zuhörer, nachts an Blubber
	Wld_InsertNpc (VLK_455_Buerger		, "NW_CITY_ENTRANCE_01");	//Zuhörer, nachts Smalltalk Bierstand
	Wld_InsertNpc (VLK_421_Valentino	, "NW_CITY_ENTRANCE_01"); 	//OV-Bürger, 
	//------------------------------	
	Wld_InsertNpc (Mil_322_Miliz		, "NW_CITY_ENTRANCE_01");	//Rotationswache Hauptstrasse/Kneipenstrasse/Vatras-Platz
	
	//---Galgenplatz-------------------
	Wld_InsertNpc (VLK_4201_Wirt		, "NW_CITY_ENTRANCE_01"); 	//Bierstand Wirt, 24h
	Wld_InsertNpc (NOV_602_Ulf			, "NW_CITY_ENTRANCE_01");	//am saufen, 24h, ab Kap ??? wo?		
	Wld_InsertNpc (VLK_406_Herold		, "NW_CITY_ENTRANCE_01");	//HEROLD, pennt in OV oder Kaserne - wo ???
	Wld_InsertNpc (VLK_456_Abuyin		, "NW_CITY_ENTRANCE_01");	//Wasserpfeifen-Händler, pennt in Hotel
	Wld_InsertNpc (VLK_440_Bartok	 	, "NW_CITY_ENTRANCE_01");	//Bogenlehrer, nachts vor Stadtkneipe
	Wld_InsertNpc (VLK_4007_Buerger	 	, "NW_CITY_ENTRANCE_01");	//Bogenlehrer, nachts vor Stadtkneipe
	Wld_InsertNpc (VLK_4008_Buerger	 	, "NW_CITY_ENTRANCE_01");	//Bogenlehrer, nachts vor Stadtkneipe
	
	//---Hotel-------------------------
	Wld_InsertNpc (VLK_414_Hanna	 	, "NW_CITY_ENTRANCE_01"); 	//Hotelbesitzerin, 24h
	
	//---Marktplatz--------------------
	Wld_InsertNpc (VLK_407_Hakon		, "NW_CITY_ENTRANCE_01");	//Waffenhändler, nachts in Hotel
	Wld_InsertNpc (VLK_408_Jora			, "NW_CITY_ENTRANCE_01");	//Krämer, nachts in Hotel
	Wld_InsertNpc (VLK_409_Zuris		, "NW_CITY_ENTRANCE_01");	//Trankhändler, nachts in Zuris Haus
	Wld_InsertNpc (VLK_410_Baltram		, "NW_CITY_ENTRANCE_01");	//Lebensmittelhändler, nachts in Hotel
	Wld_InsertNpc (VLK_470_Sarah		, "NW_CITY_ENTRANCE_01");	//Waffenhändlerin (Canthars Opfer), nachts in Hotel
	Wld_InsertNpc (BDT_492_RENGARU		, "NW_CITY_ENTRANCE_01");	//Dieb, der wegrennt, wenn man ihn zur Rede stellt, nachts an Bierstand
	Wld_InsertNpc (KDF_511_Daron		, "NW_CITY_ENTRANCE_01");	//Magier auf Marktplats, nachts in Zuris Haus
	//---------------------------------
	Wld_InsertNpc (VLK_486_Buergerin	, "NW_CITY_ENTRANCE_01"); 	//Zuris Frau, nachts in Zuris Haus
	Wld_InsertNpc (VLK_495_Buergerin	, "NW_CITY_ENTRANCE_01");	//Coragons Frau, nachts in Kneipe (kocht)	
	Wld_InsertNpc (VLK_496_Buergerin	, "NW_CITY_ENTRANCE_01");	//OV-Frau, nachts ???		
	Wld_InsertNpc (VLK_497_Buergerin	, "NW_CITY_ENTRANCE_01");	//OV-Frau, nachts ???
	//---------------------------------
	Wld_InsertNpc (Mil_320_Miliz		, "NW_CITY_ENTRANCE_01");	//Marktplatzwache 24h
			
	//---Osttor------------------------
	Wld_InsertNpc (Mil_332_Stadtwache 	, "NW_CITY_ENTRANCE_01");	//Stadttorwache
	Wld_InsertNpc (Mil_333_Stadtwache 	, "NW_CITY_ENTRANCE_01");	//Stadttorwache Important

	//---------------------------------
	//---Weg zum Hafen-----------------
	Wld_InsertNpc (VLK_484_Lehmar		, "NW_CITY_ENTRANCE_01"); 	//Geldverleiher, hafen04, pennt in hafen04
	Wld_InsertNpc (VLK_488_Buergerin	, "NW_CITY_ENTRANCE_01");	//Lehmars Frau, pennt in hafen04
	Wld_InsertNpc (VLK_415_Meldor		, "NW_CITY_ENTRANCE_01"); 	//Einer von Lehmars Schlägern, pennt in hafen03
	Wld_InsertNpc (VLK_487_Buergerin	, "NW_CITY_ENTRANCE_01"); 	//Meldors Frau, pennt in hafen03

	//---Platz A----------- (Fight Club)	
	Wld_InsertNpc (VLK_438_Alrik	 	, "NW_CITY_ENTRANCE_01");	//Kampf-Veranstalter, NW_City_Path_Habour_16_01, nachts in Hintrhof auf Bank
	Wld_InsertNpc (VLK_467_Buerger		, "NW_CITY_ENTRANCE_01"); 	//Kampf-Zuschauer, NW_City_Watch_Fight_01, nachts in Puff
	Wld_InsertNpc (VLK_475_Buerger		, "NW_CITY_ENTRANCE_01"); 	//Kampf-Zuschauer, NW_City_Watch_Fight_02, nachts in Puff
	Wld_InsertNpc (VLK_489_Buerger		, "NW_CITY_ENTRANCE_01"); 	//Kampf-Zuschauer, NW_City_Watch_Fight_03, nachts in Puff
		
	//---Platz B-----------	(Schrebergarten)
	//Alwins Frau und Fellans Frau

	//---Platz C----------- (Schlachter)
	Wld_InsertNpc (VLK_424_Alwin		, "NW_CITY_ENTRANCE_01");	//Metzger, pennt in hafen02 - NW_City_Habour_Hut_07_Bed_01
	Wld_InsertNpc (VLK_479_Lucy	, "NW_CITY_ENTRANCE_01"); 	//Alwins Frau, Gärtnerin, NW_City_Pick_02, pennt in hafen02
	Wld_InsertNpc (Hammel			, "NW_CITY_SHEEP_SPAWN_02");	//Schaf
	Wld_InsertNpc (Sheep			, "NW_CITY_SHEEP_SPAWN_01");	//Schaf
	Wld_InsertNpc (Sheep			, "NW_CITY_SHEEP_SPAWN_01");	//Schaf
	
	//---Ratten in Gasse---------------
	Wld_InsertNpc (YRat			, "NW_CITY_RATS_01");		//Hintergasse 04/05/06
	Wld_InsertNpc (YRat			, "NW_CITY_RATS_01");		//Hintergasse 04/05/06
		
	//---Platz D----------- (Arme Handwerker)
	Wld_InsertNpc (VLK_461_Carl			, "NW_CITY_ENTRANCE_01"); 	//Schmied, pennt in hafen07
	Wld_InsertNpc (VLK_429_Buergerin	, "NW_CITY_ENTRANCE_01"); 	//Carls Frau, pennt in hafen07
	Wld_InsertNpc (VLK_453_Arbeiter		, "NW_CITY_ENTRANCE_01");	//Sägt, pennt in hafen06
	Wld_InsertNpc (VLK_430_Buergerin	, "NW_CITY_ENTRANCE_01"); 	//Frau vom Säger, pennt in hafen 06
	
	//---Forscher----------
	Wld_InsertNpc (VLK_498_Ignaz		, "NW_CITY_ENTRANCE_01"); 	//verrückter Forscher, hafen09, lebt und pennt da
	
	//---Platz E----------- (Edda)
	Wld_InsertNpc (VLK_471_Edda			, "NW_CITY_ENTRANCE_01"); 	//Kocht für die Armen, pennt in hafen08 - NW_City_Habour_Poor_Area_Hut_06_Bed_02
	//Bett frei (Bed_01)

	//---Platz F----------- (Fellan)
	Wld_InsertNpc (VLK_480_Fellan		, "NW_CITY_ENTRANCE_01"); 	//irrer Hämmerer, pennt in FELLAN - NW_City_Habour_Hut_05_Bed_01
	Wld_InsertNpc (VLK_478_Buergerin	, "NW_CITY_ENTRANCE_01"); 	//Fellans Frau, Gärtnerin, NW_City_Pick_01, pennt in FELLAN
	Wld_InsertNpc (VLK_481_Buerger		, "NW_CITY_ENTRANCE_01"); 	//pennt in hafen01
	Wld_InsertNpc (VLK_482_Buergerin	, "NW_CITY_ENTRANCE_01"); 	//pennt in hafen01
	
	//---Platz G -----------
	Wld_InsertNpc (VLK_466_Gernod		, "NW_CITY_ENTRANCE_01"); 	//pennt in hafen05
	Wld_InsertNpc (VLK_485_Buergerin	, "NW_CITY_ENTRANCE_01"); 	//Gernods Frau, pennt in hafen05
	
	//---Spaziergänger für Hafen---------
	Wld_InsertNpc (VLK_459_Buerger		, "NW_CITY_ENTRANCE_01"); 	//pennt in hafen10
	Wld_InsertNpc (VLK_472_Buergerin	, "NW_CITY_ENTRANCE_01"); 	//pennt in hafen10
	//--------------------------------
	Wld_InsertNpc (VLK_460_Buerger		, "NW_CITY_ENTRANCE_01"); 	//pennt in hafen11
	Wld_InsertNpc (VLK_473_Buergerin	, "NW_CITY_ENTRANCE_01"); 	//pennt in hafen11
	
	//---Hafen--------------
	Wld_InsertNpc (SLD_449_Lares		, "NW_CITY_ENTRANCE_01");	//Steht am Kai (PreStart 24h), dann nachts in Kneipe
	Wld_InsertNpc (VLK_444_Jack			, "NW_CITY_ENTRANCE_01");	//am Kai, wartet, daß der Leuchtturm frei wird

	//---Hafenkneipe---------
	Wld_InsertNpc (VLK_432_Moe	 		, "NW_CITY_ENTRANCE_01");	//Rausschmeisser 24h
	Wld_InsertNpc (VLK_431_Kardif	 	, "NW_CITY_ENTRANCE_01");	//24h Wirt
	Wld_InsertNpc (BDT_493_NAGUR		, "NW_CITY_ENTRANCE_01");	//24h an Tisch in Hafenkneipe
	
	//---Puff-----------------
	Wld_InsertNpc (VLK_433_Bromor	 	, "NW_CITY_ENTRANCE_01");	//Puff-Besitzer hinter Theke, pennt in ???
	Wld_InsertNpc (VLK_434_Borka	 	, "NW_CITY_ENTRANCE_01");	//Türsteher Puff 24h
	Wld_InsertNpc (VLK_435_Nadja	 	, "NW_CITY_ENTRANCE_01");	//pennt in ???
	Wld_InsertNpc (VLK_436_Sonja	 	, "NW_CITY_ENTRANCE_01");	//???
	Wld_InsertNpc (VLK_491_Vanja	 	, "NW_CITY_ENTRANCE_01");	//???
	
	//---Fischhändler------------------
	Wld_InsertNpc (VLK_469_Halvor	 	, "NW_CITY_ENTRANCE_01");	//hinter Stand, pennt in NW_City_Bed_Halvor
	Wld_InsertNpc (VLK_476_Fenia	   	, "NW_CITY_ENTRANCE_01"); 	//Halvors Frau, Händlerin auf Hafenstrasse, pennt in FISCH

	//---Kartenzeichner----------------
	Wld_InsertNpc (VLK_437_Brahim	 	, "NW_CITY_ENTRANCE_01"); 	//Kartenzeichner, pennt in KARTEN
	Wld_InsertNpc (VLK_477_Buergerin	, "NW_CITY_ENTRANCE_01"); 	//Brahims Frau, pennt in KARTEN

	//---Werft-------------------------
	Wld_InsertNpc (VLK_441_Garvell		, "NW_CITY_ENTRANCE_01");	//Bootsbauer, nachts in Kneipe
	Wld_InsertNpc (VLK_442_Arbeiter		, "NW_CITY_ENTRANCE_01");	//Werft Arbeiter, nachts vor Kneipe
	Wld_InsertNpc (VLK_443_Arbeiter		, "NW_CITY_ENTRANCE_01");	//Werft Arbeiter, nachts vor Kneipe

	//---Schiff--------------------
	Wld_InsertNpc (Pal_212_Schiffswache, "NW_CITY_ENTRANCE_01"); 	//GateGuard, 24h
	Wld_InsertNpc (Pal_213_Schiffswache, "NW_CITY_ENTRANCE_01"); 	//GateGuard, 24h 
	Wld_InsertNpc (Pal_220_Schiffswache, "NW_CITY_ENTRANCE_01"); 	//auf dem Schiff
	Wld_InsertNpc (Pal_221_Schiffswache, "NW_CITY_ENTRANCE_01"); 	//auf dem Schiff
	Wld_InsertNpc (Pal_222_Schiffswache, "NW_CITY_ENTRANCE_01"); 	//auf dem Schiff 
	Wld_InsertNpc (Pal_223_Schiffswache, "NW_CITY_ENTRANCE_01"); 	//auf dem Schiff
	Wld_InsertNpc (Pal_224_Schiffswache, "NW_CITY_ENTRANCE_01"); 	//auf dem Schiff 
	Wld_InsertNpc (Pal_225_Schiffswache, "NW_CITY_ENTRANCE_01"); 	//auf dem Schiff
	Wld_InsertNpc (Pal_226_Schiffswache, "NW_CITY_ENTRANCE_01"); 	//auf dem Schiff 
	Wld_InsertNpc (Pal_227_Schiffswache, "NW_CITY_ENTRANCE_01"); 	//auf dem Schiff
	Wld_InsertNpc (Pal_228_Schiffswache, "NW_CITY_ENTRANCE_01"); 	//auf dem Schiff
	
	//Items, die auf dem Schiff zu finden sind!
		
	Wld_InsertItem			(ItMi_Moleratlubric_MIS,"FP_ITEM_SHIP_07");	//zur Sicherheit für Vinos Brennerei!
	Wld_InsertItem			(ItSe_GoldPocket25,"FP_ITEM_SHIP_01"); 
	Wld_InsertItem			(ITRI_REVIVED_PROT_ARROW_01,"FP_ITEM_SHIP_02");
	Wld_InsertItem			(ITPO_REVIVED_BOOST_DEX_01,"FP_ITEM_SHIP_03");
	Wld_InsertItem			(ItSe_GoldPocket25,"FP_ITEM_SHIP_04");
	Wld_InsertItem			(ITPO_REVIVED_SPEED_03,"FP_ITEM_SHIP_05");
	Wld_InsertItem			(ITPO_REVIVED_BOOST_STR_02,"FP_ITEM_SHIP_06");
	Wld_InsertItem			(ITPO_REVIVED_HEALTH_03,"FP_ITEM_SHIP_08");
	Wld_InsertItem			(ItMiSwordraw,"FP_ITEM_SHIP_09");
	Wld_InsertItem			(ItSe_GoldPocket25,"FP_ITEM_SHIP_10");
	Wld_InsertItem			(ItSe_GoldPocket50,"FP_ITEM_SHIP_11");
	Wld_InsertItem			(ItSc_Zap,"FP_ITEM_SHIP_12");
	Wld_InsertItem			(ITSC_REVIVED_TRANSFORM_BLOODHOUND,"FP_ITEM_SHIP_12");
	Wld_InsertItem			(ItSc_Sleep,"FP_ITEM_SHIP_12");
	Wld_InsertItem			(ItMi_nugget,"FP_ITEM_SHIP_13");
	Wld_InsertItem			(ITPO_REVIVED_MANA_02,"FP_ITEM_SHIP_14");
	Wld_InsertItem			(ItSe_GoldPocket25,"FP_ITEM_SHIP_15");

	//---PaladinCamp am Hafen---------
	Wld_InsertNpc (Pal_230_Ritter, "NW_CITY_ENTRANCE_01"); 	
	Wld_InsertNpc (Pal_231_Ritter, "NW_CITY_ENTRANCE_01"); 	
	Wld_InsertNpc (Pal_232_Ritter, "NW_CITY_ENTRANCE_01"); 	
	Wld_InsertNpc (Pal_233_Ritter, "NW_CITY_ENTRANCE_01"); 	
	Wld_InsertNpc (Pal_234_Ritter, "NW_CITY_ENTRANCE_01"); 	
	Wld_InsertNpc (Pal_235_Ritter, "NW_CITY_ENTRANCE_01"); 	
	Wld_InsertNpc (Pal_236_Ritter, "NW_CITY_ENTRANCE_01"); 	
	Wld_InsertNpc (Pal_237_Ritter, "NW_CITY_ENTRANCE_01"); 	
	Wld_InsertNpc (Pal_238_Ritter, "NW_CITY_ENTRANCE_01"); 	
	Wld_InsertNpc (Pal_239_Ritter, "NW_CITY_ENTRANCE_01"); 	
	Wld_InsertNpc (Pal_240_Ritter, "NW_CITY_ENTRANCE_01"); 	
	Wld_InsertNpc (Pal_241_Ritter, "NW_CITY_ENTRANCE_01"); 	
	Wld_InsertNpc (GRD_350_Martin, "NW_CITY_ENTRANCE_01"); 	
	Wld_InsertNpc (VLK_4301_Farim, "NW_CITY_ENTRANCE_01"); 	
	
	//---------------------------------
	//---Kaserne-----------------------
	Wld_InsertNpc (PAL_311_Andre		, "NW_CITY_ENTRANCE_01");	//Paladin, Milizkommandant
	
	Wld_InsertNpc (Mil_324_Peck			, "NW_CITY_ENTRANCE_01");	//Waffenausgabe, PreStart im Puff
	//***Gehilfe
	
	Wld_InsertNpc (Mil_312_Wulfgar		, "NW_CITY_ENTRANCE_01");	//1h - 60
	Wld_InsertNpc (Mil_317_Ruga			, "NW_CITY_ENTRANCE_01");	//2h - 60 und  STR Lehrer
	Wld_InsertNpc (Mil_313_Boltan		, "NW_CITY_ENTRANCE_01");	//Gefängniswärter
	//NEU Mortis: STR-Lehrer
	
	Wld_InsertNpc (Mil_327_Miliz		, "NW_CITY_ENTRANCE_01");	//SMALLTALK Partner von Boltan
	Wld_InsertNpc (Mil_314_Mortis		, "NW_CITY_ENTRANCE_01");	//Schmied
	Wld_InsertNpc (Mil_315_Kasernenwache, "NW_CITY_ENTRANCE_01");	//Schleifer
	
	Wld_InsertNpc (Mil_329_Miliz		, "NW_CITY_ENTRANCE_01");	//Azubi
 	Wld_InsertNpc (Mil_330_Miliz		, "NW_CITY_ENTRANCE_01");	//Azubi
	Wld_InsertNpc (Mil_331_Miliz		, "NW_CITY_ENTRANCE_01");	//Azubi
	Wld_InsertNpc (Mil_318_Miliz		, "NW_CITY_ENTRANCE_01");	// KasernenWache

	//---------Kanalisation ------------------
	Wld_InsertNpc (BDT_445_RAMIREZ		, "NW_CITY_ENTRANCE_01");	// 
	Wld_InsertNpc (BDT_446_JESPER		, "NW_CITY_ENTRANCE_01");	// 
	Wld_InsertNpc (BDT_447_CASSIA		, "NW_CITY_ENTRANCE_01");	// 
	
	Wld_InsertNpc (Giant_Rat			, "NW_CITY_KANAL_ROOM_01_01");	// 
	Wld_InsertNpc (Giant_Rat			, "NW_CITY_KANAL_ROOM_01_02");	// 
	Wld_InsertNpc (Giant_Rat			, "NW_CITY_KANAL_ROOM_01_03");	// 
	Wld_InsertNpc (Giant_Rat			, "NW_CITY_KANAL_06");	// 
	Wld_InsertNpc (Giant_Rat			, "NW_CITY_KANAL_07");	// 
	//----------------------------------------------------------------
	Wld_InsertNpc	(BDT_328_Miliz, "NW_CITY_ENTRANCE_01");// Lagerhaus Wache
	//----------------------------------------------------------------

	Wld_InsertNpc 	(VLK_474_Buerger	, "NW_CITY_ENTRANCE_01"); //
	//Wld_InsertNpc		(VLK_463_Buerger	, "NW_CITY_ENTRANCE_01"); // SMALLTALK  GEMÜSE
	//Wld_InsertNpc		(VLK_464_Buerger	, "NW_CITY_ENTRANCE_01"); // SMALLTALK  GEMÜSE
	//Wld_InsertNpc		(VLK_465_Buerger	, "NW_CITY_ENTRANCE_01"); // DRINKING 	GEMÜSE
	
	Wld_InsertNpc		(VLK_483_Buergerin	, "NW_CITY_ENTRANCE_01"); // SMALLTALK  GEMÜSE
	Wld_InsertNpc		(VLK_490_Buergerin	, "NW_CITY_ENTRANCE_01"); // SMALLTALK  GEMÜSE

	//Wld_InsertNpc		(VLK_4200_Buergerin	, "NW_CITY_ENTRANCE_01"); //Smalltalk

	Wld_InsertNpc		(MIL_2000_Thorus, "NW_CITY_ENTRANCE_01");

	Wld_InsertNpc		(VLK_4006_Bote, "NW_CITY_ENTRANCE_01");

	//------------------------------------
	//---oberes Viertel-------------------
	//------------------------------------
	Wld_InsertNpc		(Mil_304_Torwache	, "NW_CITY_ENTRANCE_01");	//Torwache Bürgerviertel 24h
	Wld_InsertNpc		(Mil_305_Torwache	, "NW_CITY_ENTRANCE_01");	//Torwache Bürgerviertel Important 24h
	//------------------------------------
	Wld_InsertNpc		(PAL_200_Hagen			, "NW_CITY_ENTRANCE_01");// 
	Wld_InsertNpc		(PAL_201_Ingmar			, "NW_CITY_ENTRANCE_01");//Str-Lehrer
	Wld_InsertNpc		(PAL_202_Albrecht		, "NW_CITY_ENTRANCE_01");//Mana-Lehrer
	Wld_InsertNpc		(PAL_203_Lothar			, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(PAL_204_Torwache		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(PAL_205_Torwache		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(PAL_206_Ritter			, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(PAL_207_Girion			, "NW_CITY_ENTRANCE_01");//2H-Lehrer
	//NEU Cedric: 1H Lehrer
	Wld_InsertNpc		(PAL_208_Paladin		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(PAL_209_Paladin		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(PAL_210_Torwache		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(PAL_211_Torwache		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(PAL_214_Ritter			, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(PAL_215_Ritter			, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(PAL_216_Cedric			, "NW_CITY_ENTRANCE_01");//
	
	Wld_InsertNpc		(VLK_400_Larius			, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_401_Cornelius		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_402_Richter		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_403_Gerbrandt		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_404_Lutero			, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_405_Fernando		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_411_Gaertner		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_422_Salandril		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_419_Buerger		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_4000_Buerger		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_4001_Buergerin		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_4002_Buergerin		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_4003_Buergerin		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_4004_Arbeiter		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(VLK_4005_Arbeiter		, "NW_CITY_ENTRANCE_01");//
	
	Wld_InsertNpc		(MIL_302_RICHTERWACHE		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(MIL_303_RICHTERWACHE		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(MIL_306_RICHTERWACHE		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(MIL_307_Tuerwache		, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(MIL_316_Wambo			, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(MIL_321_Rangar			, "NW_CITY_ENTRANCE_01");//
	Wld_InsertNpc		(MIL_326_Miliz			, "NW_CITY_ENTRANCE_01");//
	
	//------------------------------------
	//---Insel-------------------
	//------------------------------------
	Wld_InsertNpc		(BeachWaran					, "FP_ROAM_INSEL_01");//
	Wld_InsertNpc		(BeachWaran					, "FP_ROAM_INSEL_03");//
	Wld_InsertNpc		(BeachWaran					, "FP_ROAM_INSEL_05");//
	Wld_InsertNpc		(BeachWaran					, "FP_ROAM_INSEL_07");//
	Wld_InsertNpc		(BeachFireWaran					, "FP_ROAM_INSEL_09");//
	Wld_InsertNpc		(BeachFireWaran					, "FP_ROAM_INSEL_11");//
	Wld_InsertNpc		(BeachFireWaran					, "FP_ROAM_INSEL_13");//
	
	//------------------------------------
	//---PirateCamp-------------------
	//------------------------------------
	Wld_InsertNpc		(PIR_1397_Pirate_L			, "NW_CITY_PIRATESCAMP_02");//
	Wld_InsertNpc		(PIR_1398_Pirate_M			, "NW_CITY_PIRATESCAMP_02");//
	Wld_InsertNpc		(PIR_1399_Pirate_H			, "NW_CITY_PIRATESCAMP_03");//
	Wld_InsertNpc		(PIR_1400_Pirate_L			, "NW_CITY_PIRATESCAMP_04");//


	//-------------------------------------
	//------ Muscheln --------
	//-------------------------------------
	Wld_InsertItem		(ItMi_Addon_Shell_01, "FP_SHELLSPAWN_CITY_01");
	Wld_InsertItem		(ItMi_Addon_Shell_02, "FP_SHELLSPAWN_CITY_02");
	Wld_InsertItem		(ItMi_Addon_Shell_01, "FP_SHELLSPAWN_CITY_03");
	Wld_InsertItem		(ItMi_Addon_Shell_02, "FP_SHELLSPAWN_CITY_04");
	Wld_InsertItem		(ItMi_Addon_Shell_01, "FP_SHELLSPAWN_CITY_05");
	Wld_InsertItem		(ItMi_Addon_Shell_02, "FP_SHELLSPAWN_CITY_06");
	Wld_InsertItem		(ItMi_Addon_Shell_01, "FP_SHELLSPAWN_CITY_07");
	Wld_InsertItem		(ItMi_Addon_Shell_02, "FP_SHELLSPAWN_CITY_08");
	Wld_InsertItem		(ItMi_Addon_Shell_01, "FP_SHELLSPAWN_CITY_09");
	Wld_InsertItem		(ItMi_Addon_Shell_02, "FP_SHELLSPAWN_CITY_10");
	Wld_InsertItem		(ItMi_Addon_Shell_01, "FP_SHELLSPAWN_CITY_11");
	Wld_InsertItem		(ItMi_Addon_Shell_02, "FP_SHELLSPAWN_CITY_12");
	Wld_InsertItem		(ItMi_Addon_Shell_01, "FP_SHELLSPAWN_CITY_13");
	Wld_InsertItem		(ItMi_Addon_Shell_02, "FP_SHELLSPAWN_CITY_14");
	Wld_InsertItem		(ItMi_Addon_Shell_01, "FP_SHELLSPAWN_CITY_15");
	Wld_InsertItem		(ItMi_Addon_Shell_02, "FP_SHELLSPAWN_CITY_16");
	Wld_InsertItem		(ItMi_Addon_Shell_01, "FP_SHELLSPAWN_CITY_17");
	Wld_InsertItem		(ItMi_Addon_Shell_02, "FP_SHELLSPAWN_CITY_18");
	Wld_InsertItem		(ItMi_Addon_Shell_01, "FP_SHELLSPAWN_CITY_19");
	Wld_InsertItem		(ItMi_Addon_Shell_02, "FP_SHELLSPAWN_CITY_20");	
	Wld_InsertItem		(ItMi_Addon_Shell_01, "FP_SHELLSPAWN_CITY_21");
	Wld_InsertItem		(ItMi_Addon_Shell_02, "FP_SHELLSPAWN_CITY_22");
	Wld_InsertItem		(ItMi_Addon_Shell_01, "FP_SHELLSPAWN_CITY_23");
	Wld_InsertItem		(ItMi_Addon_Shell_02, "FP_SHELLSPAWN_CITY_24");
	Wld_InsertItem		(ItMi_Addon_Shell_01, "FP_SHELLSPAWN_CITY_25");
	
};

	func void INIT_SUB_NewWorld_Part_City_01()
	{
		//---Laternen---
		Wld_SetMobRoutine (00,00, "FIREPLACE", 1);
		Wld_SetMobRoutine (20,00, "FIREPLACE", 1);
		Wld_SetMobRoutine (05,00, "FIREPLACE", 0);
		
		
		//---------------- PORTALRÄUME ------------------------ 
		
		//Hafenviertel
		Wld_AssignRoomToGuild ("hafen01",		GIL_VLK);
		Wld_AssignRoomToGuild ("hafen02",		GIL_VLK);
		Wld_AssignRoomToGuild ("hafen03",		GIL_VLK);
		Wld_AssignRoomToGuild ("hafen04",		GIL_PUBLIC); //Lehmar
		Wld_AssignRoomToGuild ("hafen05",		GIL_VLK);
		Wld_AssignRoomToGuild ("hafen06",		GIL_VLK);
		Wld_AssignRoomToGuild ("hafen07",		GIL_VLK);
		
		Wld_AssignRoomToGuild ("hafen08",		GIL_PUBLIC); //EDDA
		Wld_AssignRoomToGuild ("hafen09",		GIL_PUBLIC); //Ignaz
		Wld_AssignRoomToGuild ("hafen10",		GIL_VLK);
		Wld_AssignRoomToGuild ("hafen11",		GIL_VLK);
		Wld_AssignRoomToGuild ("fellan",		GIL_VLK);
		//Wld_AssignRoomToGuild ("boot",			GIL_VLK); - ist RAUS
		Wld_AssignRoomToGuild ("fisch",			GIL_VLK);
		Wld_AssignRoomToGuild ("lagerhaus",		GIL_NONE);
		Wld_AssignRoomToGuild ("karten",		GIL_PUBLIC);
		Wld_AssignRoomToGuild ("hafenkneipe",	GIL_NONE);
		Wld_AssignRoomToGuild ("puff",			GIL_NONE);
		
		//Handwerker und Händler
		Wld_AssignRoomToGuild ("bogner",		GIL_PUBLIC);		// = Thorben und Gritta!
		Wld_AssignRoomToGuild ("matteo",		GIL_PUBLIC);
		Wld_AssignRoomToGuild ("hotel",			GIL_NONE);
		Wld_AssignRoomToGuild ("stadtkneipe",	GIL_NONE);
		Wld_AssignRoomToGuild ("zuris",			GIL_VLK);
		
		if (Player_IsApprentice == APP_Constantino)
		{
			Wld_AssignRoomToGuild ("alchemist",	GIL_NONE);
		}
		else
		{
			Wld_AssignRoomToGuild ("alchemist",	GIL_PUBLIC);
		};
		
		if (Player_IsApprentice == APP_Bosper)
		{
			Wld_AssignRoomToGuild ("gritta",	GIL_NONE);		// = BOSPER!
		}
		else
		{
			Wld_AssignRoomToGuild ("gritta",	GIL_PUBLIC); 	// = BOSPER!
		};
		
		if (Player_IsApprentice == APP_Harad)
		{
			Wld_AssignRoomToGuild ("schmied",	GIL_NONE);
		}
		else
		{
			Wld_AssignRoomToGuild ("schmied",	GIL_VLK);
		};
		
		//Türme
		Wld_AssignRoomToGuild ("turmsued01",	GIL_MIL);
		Wld_AssignRoomToGuild ("turmsued02",	GIL_MIL);
		Wld_AssignRoomToGuild ("turmost01",		GIL_MIL);
		Wld_AssignRoomToGuild ("turmost02",		GIL_MIL);
		Wld_AssignRoomToGuild ("turmschmied",	GIL_MIL);
		Wld_AssignRoomToGuild ("turmbogner",	GIL_MIL);
		
		//Kaserne 
		Wld_AssignRoomToGuild ("andre",			GIL_PUBLIC);
		Wld_AssignRoomToGuild ("waffenkammer",	GIL_PUBLIC);
		Wld_AssignRoomToGuild ("barracke",		GIL_MIL);
		
		//Oberes Viertel
		Wld_AssignRoomToGuild ("nwcityrich01", 	GIL_MIL);
		Wld_AssignRoomToGuild ("rathaus",		GIL_PUBLIC);
		Wld_AssignRoomToGuild ("reich01",		GIL_VLK);
		Wld_AssignRoomToGuild ("reich02",		GIL_VLK);
		Wld_AssignRoomToGuild ("reich03",		GIL_VLK);
		Wld_AssignRoomToGuild ("reich04",		GIL_VLK);
		Wld_AssignRoomToGuild ("reich05",		GIL_VLK);
		Wld_AssignRoomToGuild ("reich06",		GIL_PUBLIC); //Salandril Alchemist -> Wegen Mission!!!
		Wld_AssignRoomToGuild ("richter",		GIL_PUBLIC); //wegen SLD Mission Kap.3 
		Wld_AssignRoomToGuild ("leomar",		GIL_VLK);
	};

func void INIT_NewWorld_Part_City_01()
{
	B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();

	INIT_SUB_NewWorld_Part_City_01();
};


// ------ Farm1 -------

func void STARTUP_NewWorld_Part_Farm_01()
{
	//---NSCs---
	Wld_InsertNpc		(BAU_954_Maleth, 		"NW_FARM1_OUT_01"); //erster Hirte
	Wld_InsertNpc		(BAU_950_Lobart, 		"NW_FARM1_OUT_01");
	Wld_InsertNpc		(BAU_951_Hilda, 		"NW_FARM1_OUT_01");
	
	Wld_InsertNpc		(BAU_952_Vino, 			"NW_FARM1_OUT_01");
	Wld_InsertNpc		(BAU_953_Bauer, 		"NW_FARM1_OUT_01");
	Wld_InsertNpc		(BAU_955_Bauer, 		"NW_FARM1_OUT_01");

	Wld_InsertNpc		(VLK_468_Canthar, 		"NW_FARM1_OUT_01"); 
	
	//---Schafherde---
	Wld_InsertNpc		(Hammel, 	"NW_FARM1_PATH_CITY_SHEEP_07");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_PATH_CITY_SHEEP_07");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_PATH_CITY_SHEEP_07");
	Wld_InsertNpc		(Hammel, 	"NW_FARM1_PATH_CITY_SHEEP_08");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_PATH_CITY_SHEEP_08");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_PATH_CITY_SHEEP_08");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_PATH_CITY_SHEEP_09");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_PATH_CITY_SHEEP_09");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_PATH_CITY_SHEEP_09");
	
	//---Schafe auf dem Hof---
	Wld_InsertNpc		(Hammel, 	"NW_FARM1_PATH_CITY_SHEEP_10");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_PATH_CITY_SHEEP_10");
	Wld_InsertNpc		(Hammel, 	"NW_FARM1_PATH_CITY_SHEEP_11");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_PATH_CITY_SHEEP_11");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_PATH_CITY_SHEEP_12");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_PATH_CITY_SHEEP_12");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_OUT_03");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_OUT_03");
	
	//---Schafe bei der Windmühle---
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_MILL_01");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_MILL_01");
	Wld_InsertNpc		(Sheep, 	"NW_FARM1_MILL_01");

	//---Monster zur Stadt---
	Wld_InsertNpc		(BloodflyJuvenile, "NW_FARM1_PATH_SPAWN_02");
	Wld_InsertNpc		(BloodflyJuvenile, "NW_FARM1_PATH_SPAWN_02");
	Wld_InsertNpc		(BloodflyJuvenile, "NW_FARM1_PATH_SPAWN_02");

	Wld_InsertNpc		(WolfJuvenile,		"NW_FARM1_PATH_SPAWN_07");
	Wld_InsertNpc		(WolfJuvenile, 	"NW_FARM1_PATH_SPAWN_07");

	Wld_InsertNpc		(YGobbo_Green,"NW_FARM1_PATH_CITY_19_B");

	Wld_InsertNpc		(BloodflyJuvenile, "NW_FARM1_PATH_CITY_10_B");
	Wld_InsertNpc		(BloodflyJuvenile, "NW_FARM1_PATH_CITY_10_B");

	Wld_InsertNpc		(WolfJuvenile,		"NW_FARM1_PATH_CITY_05_B");
	Wld_InsertNpc		(WolfJuvenile,		"NW_FARM1_PATH_CITY_05_B");
	
	//---GIANT BUGS---
	Wld_InsertNpc		(YGiant_Bug, 	"NW_FARM1_CITYWALL_RIGHT_02");	


	Wld_InsertNpc		(YGiant_Bug, 	"NW_FARM1_OUT_13");	
	
	//---Stonehendge ---
	Wld_InsertNpc		(YGiant_Bug, "NW_FARM1_OUT_019");
	Wld_InsertNpc		(YGiant_Bug, "NW_FARM1_OUT_019");

	//---Kapitel2 Waldgraben---
	Wld_InsertNpc		(Bloodfly,	"NW_FARM1_CITYWALL_02_B"); 
	Wld_InsertNpc		(Bloodfly,	"NW_FARM1_CITYWALL_02_B");
	
	Wld_InsertNpc		(Snapper, 	"NW_FARM1_CITYWALL_05");
	Wld_InsertNpc		(Snapper, 	"NW_FARM1_CITYWALL_05");
	Wld_InsertNpc		(Snapper, 	"NW_FARM1_CITYWALL_05");
	
	Wld_InsertNpc		(Wolf, 		"NW_FARM1_CITYWALL_FOREST_03");
	Wld_InsertNpc		(Wolf, 		"NW_FARM1_CITYWALL_FOREST_03");
	Wld_InsertNpc		(Wolf, 		"NW_FARM1_CITYWALL_FOREST_03");
	
	Wld_InsertNpc		(Shadowbeast, "NW_FARM1_CITYWALL_FOREST_04_B");
	
	Wld_InsertNpc		(Bloodfly,	"NW_FARM1_CITYWALL_FOREST_06");
	Wld_InsertNpc		(Bloodfly,	"NW_FARM1_CITYWALL_FOREST_06");
	Wld_InsertNpc		(Bloodfly,	"NW_FARM1_CITYWALL_FOREST_06");
	Wld_InsertNpc		(Bloodfly,	"NW_FARM1_CITYWALL_FOREST_06");
	Wld_InsertNpc		(Bloodfly,	"NW_FARM1_CITYWALL_FOREST_06");

	Wld_InsertNpc		(OrcScout_Harad, "NW_FARM1_CITYWALL_FOREST_08_B");

	Wld_InsertNpc		(Gobbo_Black, 	"NW_FARM1_CITYWALL_FOREST_14");
	Wld_InsertNpc		(Gobbo_Black, 	"NW_FARM1_CITYWALL_FOREST_14");
	Wld_InsertNpc		(Gobbo_Black,	"NW_FARM1_CITYWALL_FOREST_15");
	Wld_InsertNpc		(Gobbo_Black, 	"NW_FARM1_CITYWALL_FOREST_15");
	Wld_InsertNpc		(Gobbo_Elite, 	"NW_FARM1_CITYWALL_FOREST_16");
	
	//---FARM1CAVE---
	Wld_InsertNpc		(BDT_1000_LOAFER, 	"NW_FARM1_BANDITS_CAVE_06");
	Wld_InsertNpc		(BDT_1001_Bandit_L, 	"NW_FARM1_BANDITS_CAVE_07");
	Wld_InsertNpc		(BDT_1002_LOAFER, 	"NW_FARM1_BANDITS_CAVE_08");
	
	Wld_InsertNpc		(BDT_1001_Bandit_L, 	"NW_FARM1_BANDITS_CAVE_03");
};

	func void INIT_SUB_NewWorld_Part_Farm_01()
	{
		Wld_AssignRoomToGuild ("farm01", GIL_PUBLIC);	//hildas Raum
		Wld_AssignRoomToGuild ("farm02", GIL_PUBLIC);  	//Scheune 
		if (Lobart_Kleidung_Verkauft == TRUE)
		{
			Wld_AssignRoomToGuild ("farm03", GIL_NONE);  	//Schlaf Raum
		}
		else
		{		
			Wld_AssignRoomToGuild ("farm03", GIL_PUBLIC);  	//Schlaf Raum
		};
		
	};
	
func void INIT_NewWorld_Part_Farm_01()
{
	B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();
	
	INIT_SUB_NewWorld_Part_Farm_01();
};


// ------ Xardas -------
func void STARTUP_NewWorld_Part_Xardas_01()
{
	//Wld_InsertItem (ItBE_Addon_STR_5, "FP_ITEM_XARDAS_03");

	Wld_InsertItem (ITWR_REVIVED_ALMANAC, "FP_ITEM_XARDAS_STPLATE_01");

	Wld_InsertItem (ITMI_REVIVED_STUFF_IDOL_02, "FP_ITEM_XARDAS_02");
	Wld_InsertItem (ITFO_REVIVED_BREAD_01, "FP_ITEM_XARDAS_04");
	Wld_InsertItem (ITPO_REVIVED_BOOST_STR_01, "FP_ITEM_XARDAS_05");
	Wld_InsertItem (ITFO_REVIVED_PLANTSOUP, "FP_ITEM_XARDAS_06");

	Wld_InsertItem (ITMI_REVIVED_STUFF_IDOL_01, "FP_ITEM_XARDAS_07");
		
	Wld_InsertItem (ITKE_REVIVED_XARDAS,		"FP_ITEM_XARDAS_08");

	////////////////////////////////////////////////////////////////////////////
	//----------------------- Spielstart Gothic2------------------------------//
	////////////////////////////////////////////////////////////////////////////

	//---NSCs---
	Wld_InsertNpc		(NONE_100_Xardas, 	"NW_XARDAS_START");
	Wld_InsertNpc		(PC_Psionic, 		"NW_XARDAS_TOWER_PATH_01");

	Wld_InsertNpc		(BDT_1013_BANDIT, "NW_XARDAS_STAIRS_01");
	Wld_InsertNpc		(BDT_1014_BRAGO, "NW_XARDAS_BANDITS_LEFT");
	Wld_InsertNpc		(BDT_1015_Bandit_L, "NW_XARDAS_BANDITS_RIGHT");
	//---Monster auf dem Weg zu Farm1---
	Wld_InsertNpc		(Sheep, 			"NW_XARDAS_TOWER_04");
	
	Wld_InsertNpc		(WolfJuvenile, 			"NW_XARDAS_PATH_FARM1_11");
	Wld_InsertNpc		(YGobbo_Green,		"NW_XARDAS_GOBBO_01");
	Wld_InsertNpc		(YGobbo_Green,		"NW_XARDAS_GOBBO_02");
	Wld_InsertNpc		(WolfJuvenile, 			"NW_XARDAS_MONSTER_INSERT_01");
	
	//---Xardas Secret---
	Wld_InsertNpc		(Keiler,		"FP_ROAM_XARDAS_SECRET_23");
	Wld_InsertNpc		(Keiler,		"FP_ROAM_XARDAS_SECRET_23");

	Wld_InsertNpc		(Waran,		"FP_ROAM_XARDAS_SECRET_08");
	Wld_InsertNpc		(Waran,		"FP_ROAM_XARDAS_SECRET_08");

	Wld_InsertNpc		(Waran,		"FP_ROAM_XARDAS_SECRET_15");
	Wld_InsertNpc		(Waran,		"FP_ROAM_XARDAS_SECRET_15");

	Wld_InsertNpc		(Waran,		"FP_ROAM_XARDAS_SECRET_04");
	Wld_InsertNpc		(Waran,		"FP_ROAM_XARDAS_SECRET_04");

	Wld_InsertNpc		(Giant_Rat,		"FP_ROAM_XARDAS_SECRET_27");
	Wld_InsertNpc		(Giant_Rat,		"FP_ROAM_XARDAS_SECRET_27");

	Wld_InsertNpc		(Meatbug,		"FP_ROAM_XARDAS_SECRET_01");
	Wld_InsertNpc		(Meatbug,		"FP_ROAM_XARDAS_SECRET_01");

	//---Höhlengang---
	Wld_InsertNpc		(YGobbo_Green,		"NW_XARDAS_TOWER_WATERFALL_CAVE_03");

	Wld_InsertNpc		(YGobbo_Green,		"NW_XARDAS_TOWER_WATERFALL_CAVE_ENTRANCE_02");

	Wld_InsertNpc		(YGobbo_Green,		"NW_XARDAS_TOWER_WATERFALL_CAVE_ENTRANCE_05");
	Wld_InsertNpc		(YGobbo_Green,		"NW_XARDAS_TOWER_WATERFALL_CAVE_ENTRANCE_05");
	Wld_InsertNpc		(YGobbo_Green,		"NW_XARDAS_TOWER_WATERFALL_CAVE_ENTRANCE_GOBBO");

	Wld_InsertNpc		(YGiant_Bug, 		"NW_XARDAS_TOWER_WATERFALL_CAVE_SIDE_02"); 
	Wld_InsertNpc		(YGiant_Bug, 		"NW_XARDAS_TOWER_WATERFALL_CAVE_SIDE_02");

	Wld_InsertNpc		(YGiant_Bug, 		"NW_XARDAS_TOWER_WATERFALL_CAVE_SIDE_02_IN_002"); 
	Wld_InsertNpc		(YGiant_Bug, 		"NW_XARDAS_TOWER_WATERFALL_CAVE_SIDE_02_IN_002");

	//---im Tal---
	Wld_InsertNpc		(WolfJuvenile, 			"NW_XARDAS_VALLEY_03"); 
	Wld_InsertNpc		(WolfJuvenile, 			"NW_XARDAS_VALLEY_04");  
	Wld_InsertNpc		(WolfJuvenile, 			"NW_XARDAS_VALLEY_06"); 
	Wld_InsertNpc		(WolfJuvenile, 			"NW_XARDAS_VALLEY_08"); 

	Wld_InsertNpc		(YGiant_Rat, 		"NW_XARDAS_TOWER_VALLEY_RAT"); 
	Wld_InsertNpc		(WolfJuvenile, 			"NW_XARDAS_TOWER_VALLEY_WOLF");
	
	Wld_InsertNpc		(BloodflyJuvenile, 		"NW_XARDAS_TOWER_VALLEY_08");

	//---kleine Höhle im Tal---
	Wld_InsertNpc		(YGiant_Rat, 		"NW_XARDAS_TOWER_SECRET_CAVE_01"); 
	Wld_InsertNpc		(YGiant_Rat, 		"NW_XARDAS_TOWER_SECRET_CAVE_01");
	Wld_InsertNpc		(YGiant_Rat, 		"NW_XARDAS_TOWER_SECRET_CAVE_01");
	
	Wld_InsertNpc		(YGiant_Rat, 		"NW_XARDAS_TOWER_SECRET_CAVE_03");
	
	//ADDON	
	Wld_InsertNpc		(OUT_4300_CAVALORN, 		"NW_XARDAS_START");
};

	func void INIT_SUB_NewWorld_Part_Xardas_01()
	{
	};

func void INIT_NewWorld_Part_Xardas_01()
{
	B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();	
	
	INIT_SUB_NewWorld_Part_Xardas_01();
};


// KLOSTER 
FUNC VOID STARTUP_NewWorld_Part_Monastery_01 ()
{
	Wld_InsertItem 	(ItWr_Manarezept, 	"FP_ITEM_KLOSTER_01");
	Wld_InsertItem 	(ITWR_REVIVED_RECIPE_MAGEWINE ,"FP_ITEM_KLOSTER_02"); 
	
	Wld_InsertNpc 	(PAL_299_Sergio, 	"NW_MONASTERY_ENTRY_01");
	
	Wld_InsertNpc 	(KDF_500_Pyrokar, 	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(KDF_501_Serpentes, "NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(KDF_502_Ulthar,	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(KDF_503_Karras, 	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(KDF_504_Parlan, 	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(KDF_505_Marduk, 	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(KDF_506_Neoras, 	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(KDF_507_Talamon, 	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(KDF_508_Gorax, 	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(KDF_509_Isgaroth,  "NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(KDF_510_Hyglas, 	"NW_MONASTERY_ENTRY_01");
	
	Wld_InsertNpc 	(NOV_600_Pedro,  	"NW_MONASTERY_ENTRY_01");	//steht vor dem Kloster
	Wld_InsertNpc 	(NOV_601_Igaraz, 	"NW_MONASTERY_ENTRY_01");	//Erwählter im Smalltalk im Hof
	Wld_InsertNpc 	(NOV_603_Agon, 		"NW_MONASTERY_ENTRY_01");	//Kräutergarten
	Wld_InsertNpc 	(NOV_604_Dyrian, 	"NW_MONASTERY_ENTRY_01");	//
	Wld_InsertNpc 	(NOV_605_Opolos, 	"NW_MONASTERY_ENTRY_01");	//Hütet Schafe
	Wld_InsertNpc 	(NOV_606_Novize, 	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(NOV_607_Novize, 	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(NOV_608_Garwig, 	"NW_MONASTERY_ENTRY_01");	//Bewacht den Hammer
	Wld_InsertNpc 	(NOV_609_Novize, 	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(NOV_610_Novize, 	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(NOV_611_Novize, 	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(NOV_612_Babo, 		"NW_MONASTERY_ENTRY_01");	//Fegt den Hof
	Wld_InsertNpc 	(NOV_615_Novize, 	"NW_MONASTERY_ENTRY_01");
	Wld_InsertNpc 	(Sheep, 			"FP_ROAM_MONASTERY_01");
	Wld_InsertNpc 	(Sheep, 			"FP_ROAM_MONASTERY_02");
	Wld_InsertNpc 	(Sheep, 			"FP_ROAM_MONASTERY_03");
			
	Wld_InsertNpc 	(ScavengerJuvenile, 			"NW_PATH_TO_MONASTER_AREA_11");
	Wld_InsertNpc 	(ScavengerJuvenile, 			"NW_PATH_TO_MONASTER_AREA_11");

	Wld_InsertNpc 	(ScavengerJuvenile, 			"NW_PATH_TO_MONASTER_MONSTER22");

	Wld_InsertNpc 	(ScavengerJuvenile, 			"NW_PATH_TO_MONASTER_AREA_01");

	Wld_InsertNpc 	(Giant_Rat, 			"NW_PATH_TO_MONASTER_AREA_02");

	Wld_InsertNpc 	(Giant_Rat, 			"NW_PATH_TO_MONASTER_AREA_10");
	Wld_InsertNpc 	(Giant_Rat, 			"NW_PATH_TO_MONASTER_AREA_10");

	Wld_InsertNpc 	(Giant_Bug, 			"NW_PATH_TO_MONASTER_AREA_08");

	Wld_InsertNpc 	(Giant_Rat, 			"NW_SHRINE_MONSTER");

	Wld_InsertNpc 	(Scavenger, 			"NW_FOREST_CONNECT_MONSTER2");
};

	FUNC VOID INIT_SUB_NewWorld_Part_Monastery_01()
	{
		Wld_AssignRoomToGuild ("kloster01",GIL_PUBLIC); //Kirche
		Wld_AssignRoomToGuild ("kloster02",GIL_PUBLIC); //Bücherei
		//Wld_AssignRoomToGuild ("kloster03",GIL_PUBLIC); //Kapelle 
		Wld_AssignRoomToGuild ("kloster06",GIL_PUBLIC); //Kapelle
		
		Wld_AssignRoomToGuild ("kloster11",GIL_PUBLIC); //Der Keller
		Wld_AssignRoomToGuild ("kloster13",GIL_PUBLIC); //Weinkelterei
		
		Wld_AssignRoomToGuild ("kloster04",GIL_PUBLIC); //Schlafraum Novizen
		Wld_AssignRoomToGuild ("kloster05",GIL_NOV); //Schlafraum Novizen
		Wld_AssignRoomToGuild ("kloster10",GIL_NOV); //Schlafraum Novizen
		Wld_AssignRoomToGuild ("kloster12",GIL_NOV); //Schlafraum Novizen
		
		//Wld_AssignRoomToGuild ("kloster06",GIL_KDF); //Schlafraum Magier
		Wld_AssignRoomToGuild ("kloster07",GIL_KDF); //Schlafraum Magier
		Wld_AssignRoomToGuild ("kloster08",GIL_KDF); //Schlafraum Magier
		Wld_AssignRoomToGuild ("kloster09",GIL_KDF); //Schlafraum Magier


		REV_SetObjectRoutine_Fire ("NW_MONASTERY_FIRE_01");
		REV_SetObjectRoutine_Fire ("NW_MONASTERY_FIRE_02");
		REV_SetObjectRoutine_Fire ("NW_MONASTERY_FIRE_03");
		REV_SetObjectRoutine_Fire ("NW_MONASTERY_FIRE_04");
	};

FUNC VOID INIT_NewWorld_Part_Monastery_01 ()
{
	B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();	
	
	INIT_SUB_NewWorld_Part_Monastery_01();
};


//---Der grosse Bauernhof--------


FUNC VOID STARTUP_NewWorld_Part_GreatPeasant_01 ()
{
	// ------ Vorposten
	Wld_InsertNpc 	(SLD_802_Buster, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_827_Soeldner, 	"BIGFARM");
	
	// ------ Feldräuberhöhle ------
	
	//3 rausgenommen, wegen Fester-> werden später insertet
	
	Wld_InsertNpc (Giant_Bug, "NW_BIGFARM_FELDREUBER"); 
	Wld_InsertNpc (Giant_Bug, "NW_BIGFARM_FELDREUBER2");
	Wld_InsertNpc (Giant_Bug, "NW_BIGFARM_FELDREUBER4");
	
	Wld_InsertNpc (Giant_Bug, "FP_ROAM_MONSTERMILL_11");
	Wld_InsertNpc (Giant_Bug, "FP_ROAM_MONSTERMILL_13");
	Wld_InsertNpc (Giant_Bug, "FP_ROAM_MONSTERMILL_04");
	Wld_InsertNpc (Giant_Bug, "FP_ROAM_MONSTERMILL_03");
	
	
	//BIGMILL Felder
	Wld_InsertNpc (Lurker, "NW_BIGMILL_FIELD_LURKER");
	Wld_InsertNpc (Lurker, "NW_BIGMILL_FIELD_LURKER");
	
	Wld_InsertNpc (Giant_Bug, "NW_BIGMILL_FIELD_MONSTER_01");
	Wld_InsertNpc (Giant_Bug, "NW_BIGMILL_FIELD_MONSTER_01");
	Wld_InsertNpc (Giant_Bug, "NW_BIGMILL_FIELD_MONSTER_01");
	
	Wld_InsertNpc (Giant_Bug, "NW_BIGMILL_FIELD_MONSTER_02");
	Wld_InsertNpc (Giant_Bug, "NW_BIGMILL_FIELD_MONSTER_02");
	Wld_InsertNpc (Giant_Bug, "NW_BIGMILL_FIELD_MONSTER_02");
	
	//2 Bugs rausgenommen, wegen Fester

	Wld_InsertNpc (Giant_Bug, "NW_BIGFARM_FIELD_MONSTER_01");
	Wld_InsertNpc (Giant_Bug, "NW_BIGFARM_FIELD_MONSTER_01");
	Wld_InsertNpc (Giant_Bug, "NW_BIGFARM_FIELD_MONSTER_01");

	// NSCs
	Wld_InsertNpc 	(BAU_900_Onar, 		"BIGFARM");
	Wld_InsertNpc 	(BAU_901_Bauer, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_902_Gunnar, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_903_Bodo, 		"BIGFARM");
	Wld_InsertNpc 	(BAU_904_Bauer, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_905_Bauer, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_906_Bauer, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_907_Wasili, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_908_Hodges, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_909_Bauer, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_910_Maria, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_911_Elena, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_912_Pepe, 		"BIGFARM");
	Wld_InsertNpc 	(BAU_913_Thekla, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_914_MAID, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_915_Baeuerin, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_916_Bauer, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_917_Bauer, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_918_Bauer, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_919_Bauer, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_920_Bauer, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_921_Bauer, 	"BIGFARM");
	Wld_InsertNpc 	(OUT_890_SAGITTA, 	"BIGFARM");
	
	
	Wld_InsertNpc 	(SLD_800_Lee, 		"BIGFARM");
	Wld_InsertNpc 	(SLD_801_Torlof, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_803_Cipher, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_804_Rod, 		"BIGFARM");
	Wld_InsertNpc 	(SLD_805_Cord, 		"BIGFARM");
	Wld_InsertNpc 	(SLD_806_Sylvio, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_807_Bullco, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_808_Jarvis, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_809_Bennet, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_810_Dar, 		"BIGFARM");
	Wld_InsertNpc 	(SLD_811_Wolf, 		"BIGFARM");

	Wld_InsertNpc 	(SLD_814_Sentenza, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_815_Soeldner, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_816_Fester, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_817_Soeldner, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_818_Soeldner, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_819_Soeldner, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_820_Soeldner, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_821_Soeldner, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_822_Raoul, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_823_Khaled, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_824_Soeldner, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_825_Soeldner, 	"BIGFARM");
	Wld_InsertNpc 	(SLD_826_Soeldner, 	"BIGFARM");


	Wld_InsertNpc 	(Sheep, 		"NW_BIGFARM_SHEEP1_01");
	Wld_InsertNpc 	(Sheep, 		"NW_BIGFARM_SHEEP1_01");
	Wld_InsertNpc 	(Hammel, 		"NW_BIGFARM_SHEEP1_01");

	Wld_InsertNpc 	(Sheep, 		"NW_BIGFARM_SHEEP1_02");
	Wld_InsertNpc 	(Sheep, 		"NW_BIGFARM_SHEEP1_02");
	Wld_InsertNpc 	(Sheep, 		"NW_BIGFARM_SHEEP1_02");

	Wld_InsertNpc 	(Hammel, 		"NW_BIGFARM_SHEEP1_03");
	Wld_InsertNpc 	(Sheep, 		"NW_BIGFARM_SHEEP1_03");
	Wld_InsertNpc 	(Sheep, 		"NW_BIGFARM_SHEEP1_03");

	Wld_InsertNpc 	(Sheep, 		"FP_ROAM_NW_BIGFARM_SHEEP2_12");
	Wld_InsertNpc 	(Sheep, 		"FP_ROAM_NW_BIGFARM_SHEEP2_13");
	Wld_InsertNpc 	(Sheep, 		"FP_ROAM_NW_BIGFARM_SHEEP2_14");

	Wld_InsertNpc 	(Sheep, 		"FP_ROAM_NW_BIGFARM_SHEEP2_07");
	Wld_InsertNpc 	(Sheep, 		"FP_ROAM_NW_BIGFARM_SHEEP2_08");
	Wld_InsertNpc 	(Sheep, 		"FP_ROAM_NW_BIGFARM_SHEEP2_09");

	Wld_InsertNpc 	(Hammel, 		"NW_BIGFARM_SHEEP2_02");
	Wld_InsertNpc 	(Sheep, 		"NW_BIGFARM_SHEEP2_02");

	Wld_InsertNpc 	(Hammel, 		"NW_BIGFARM_SHEEP2_03");
	Wld_InsertNpc 	(Hammel, 		"NW_BIGFARM_SHEEP2_03");
	Wld_InsertNpc 	(Sheep, 		"NW_BIGFARM_SHEEP2_03");

	Wld_InsertNpc 	(Sheep, 		"NW_BIGFARM_SHEEP2_04");
	Wld_InsertNpc 	(Sheep, 		"NW_BIGFARM_SHEEP2_04");


	Wld_InsertNpc 	(Sheep, 		"NW_BIGFARM_KITCHEN_OUT_02");
	Wld_InsertNpc 	(Sheep, 		"NW_BIGFARM_KITCHEN_OUT_02");
	Wld_InsertNpc 	(Hammel, 		"NW_BIGFARM_KITCHEN_OUT_02");

	
	//Farm3

	Wld_InsertNpc 	(BAU_960_Bengar, 		"BIGFARM");
	Wld_InsertNpc 	(BAU_963_Malak, 		"BIGFARM");

	Wld_InsertNpc 	(OUT_961_GAAN, 			"BIGFARM");

	Wld_InsertNpc 	(Gaans_Snapper, 		"NW_FARM3_VALLEY_000");  

	Wld_InsertNpc 	(BAU_962_Bauer, 		"BIGFARM");
	Wld_InsertNpc 	(BAU_964_Bauer, 		"BIGFARM");
	Wld_InsertNpc 	(BAU_965_Bauer, 		"BIGFARM");
	Wld_InsertNpc 	(BAU_966_Bauer, 		"BIGFARM");
	Wld_InsertNpc 	(BAU_967_Bauer, 		"BIGFARM");
	Wld_InsertNpc 	(BAU_968_Bauer, 		"BIGFARM");
	Wld_InsertNpc 	(BAU_969_Bauer, 		"BIGFARM");
	
	Wld_InsertNpc 	(Sheep, 		"FP_ROAM_NW_FARM3_OUT_05_01");
	Wld_InsertNpc 	(Sheep, 		"FP_ROAM_NW_FARM3_OUT_05_02");
	Wld_InsertNpc 	(Hammel, 		"FP_ROAM_NW_FARM3_OUT_05_03");
	Wld_InsertNpc 	(Sheep, 		"FP_ROAM_NW_FARM3_OUT_05_04");


	Wld_InsertNpc 	(Giant_Bug, 		"NW_BIGMILL_FARM3_07B");  
	Wld_InsertNpc 	(Giant_Bug, 		"NW_BIGMILL_FARM3_07B");  
	
	//Farm4
	
	Wld_InsertNpc 	(BAU_930_Sekob, 	"BIGFARM");  
	Wld_InsertNpc 	(BAU_931_Till, 		"BIGFARM");
	Wld_InsertNpc 	(BAU_932_Balthasar, "BIGFARM");

	Wld_InsertNpc 	(Balthasar_Sheep1, "NW_FARM4_BALTHASAR");	
	Wld_InsertNpc 	(Balthasar_Sheep2, "NW_FARM4_BALTHASAR");	
	Wld_InsertNpc 	(Balthasar_Sheep3, "NW_FARM4_BALTHASAR");	
	
	Wld_InsertNpc 	(BAU_933_Rega, 		"BIGFARM");
	Wld_InsertNpc 	(BAU_934_Babera, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_935_Bronko, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_936_Rosi, 		"BIGFARM");
	Wld_InsertNpc 	(BAU_937_Bauer, 	"BIGFARM");
	Wld_InsertNpc 	(BAU_938_Bauer, 	"BIGFARM");

	//Holzfäller\Jäger
	Wld_InsertNpc 	(OUT_981_GROM, 	"BIGFARM");

	// Monster
	//***************************************************************************************

	Wld_InsertNpc 	(Scavenger_Demon,	"NW_TAVERNE_TROLLAREA_MONSTER_01_01"); 


 	Wld_InsertNpc 	(Zombie02,	"NW_FARM2_TAVERNCAVE1_09"); 
	Wld_InsertNpc 	(Zombie03,	"NW_FARM2_TAVERNCAVE1_10"); 
	Wld_InsertNpc 	(Zombie04,	"NW_FARM2_TAVERNCAVE1_08"); 

	Wld_InsertNpc 	(Gobbo_Skeleton,	"NW_FARM2_TAVERNCAVE1_02"); 
	Wld_InsertNpc 	(Gobbo_Skeleton,	"NW_FARM2_TAVERNCAVE1_02"); 
	Wld_InsertNpc 	(Gobbo_Skeleton,	"NW_FARM2_TAVERNCAVE1_02"); 

 	Wld_InsertNpc 	(Wolf,	"NW_TAVERNE_TROLLAREA_MONSTER_04_01"); 
	Wld_InsertNpc 	(Wolf,	"NW_TAVERNE_TROLLAREA_MONSTER_04_01"); 

  	Wld_InsertNpc 	(Gobbo_Green,	"NW_TAVERNE_TROLLAREA_MONSTER_05_01"); 
	Wld_InsertNpc 	(Gobbo_Green,	"NW_TAVERNE_TROLLAREA_MONSTER_05_01"); 
  	Wld_InsertNpc 	(Gobbo_Green,	"NW_TAVERNE_TROLLAREA_MONSTER_05_01"); 

  	Wld_InsertNpc 	(Wolf,	"NW_BIGFARM_LAKE_MONSTER_01_01"); 
	Wld_InsertNpc 	(Wolf,	"NW_BIGFARM_LAKE_MONSTER_01_01"); 

  	Wld_InsertNpc 	(Lurker,	"NW_BIGFARM_LAKE_MONSTER_02_01"); 
	Wld_InsertNpc 	(Lurker,	"NW_BIGFARM_LAKE_MONSTER_02_01"); 
  	Wld_InsertNpc 	(Bloodfly,	"NW_BIGFARM_LAKE_MONSTER_02_01"); 

  	Wld_InsertNpc 	(Wolf,	"NW_BIGFARM_LAKE_MONSTER_03_01"); 
	Wld_InsertNpc 	(Wolf,	"NW_BIGFARM_LAKE_MONSTER_03_01"); 

  	Wld_InsertNpc 	(Lurker,	"NW_LAKE_GREG_TREASURE_01"); 


//Jägerlager

	Wld_InsertNpc 	(OUT_983_DRAGOMIR,	"NW_CITY_TO_LIGHTHOUSE_13_MONSTER5"); 
	//Wld_InsertItem	(ItRw_DragomirsArmbrust_MIS , "FP_NW_ITEM_TROLL_06"); 
	Wld_InsertNpc 	(OUT_984_NICLAS,	"NW_TAVERNE_TROLLAREA_MONSTER_02_01"); 
	


	// Kap3

 	Wld_InsertNpc 	(Warg,	"NW_FARM4_WOOD_MONSTER_01"); 
	Wld_InsertNpc 	(Warg,	"NW_FARM4_WOOD_MONSTER_01"); 

 	Wld_InsertNpc 	(Bloodfly,	"NW_FARM4_WOOD_MONSTER_02"); 
	Wld_InsertNpc 	(Bloodfly,	"NW_FARM4_WOOD_MONSTER_02"); 
 	Wld_InsertNpc 	(Bloodfly,	"NW_FARM4_WOOD_MONSTER_02"); 
	Wld_InsertNpc 	(Bloodfly,	"NW_FARM4_WOOD_MONSTER_02"); 

	Wld_InsertNpc 	(Wolf,	"NW_FARM4_WOOD_MONSTER_03"); 
	Wld_InsertNpc 	(Wolf,	"NW_FARM4_WOOD_MONSTER_03"); 

	Wld_InsertNpc 	(Gobbo_Skeleton,	"NW_FARM4_WOOD_MONSTER_04"); 
	Wld_InsertNpc 	(Gobbo_Skeleton,	"NW_FARM4_WOOD_MONSTER_04"); 

	Wld_InsertNpc 	(Wolf,	"NW_FARM4_WOOD_MONSTER_05"); 

	Wld_InsertNpc 	(Bloodfly,	"NW_FARM4_WOOD_MONSTER_06"); 
	Wld_InsertNpc 	(Bloodfly,	"NW_FARM4_WOOD_MONSTER_06"); 

	Wld_InsertNpc 	(Bloodfly,	"NW_FARM4_WOOD_MONSTER_07"); 
	Wld_InsertNpc 	(Bloodfly,	"NW_FARM4_WOOD_MONSTER_07"); 

	Wld_InsertNpc 	(Shadowbeast,	"NW_FARM4_WOOD_MONSTER_08"); 

 	Wld_InsertNpc 	(Gobbo_Skeleton,	"NW_FARM4_WOOD_MONSTER_09"); 

 	Wld_InsertNpc 	(Bloodfly,	"NW_FARM4_WOOD_MONSTER_10"); 
	Wld_InsertNpc 	(Bloodfly,	"NW_FARM4_WOOD_MONSTER_10"); 
	Wld_InsertNpc 	(Bloodfly,	"NW_FARM4_WOOD_MONSTER_10"); 
 
  	// Crypt 
	Wld_InsertNpc 	(Crypt_Skeleton_Room_01, "EVT_CRYPT_ROOM_01_SPAWNMAIN");
	Wld_InsertNpc 	(Crypt_Skeleton_Room_02, "EVT_CRYPT_ROOM_02_SPAWNMAIN");
	Wld_InsertNpc 	(Crypt_Skeleton_Room_03, "EVT_CRYPT_ROOM_03_SPAWNMAIN");
	
 	Wld_InsertItem 	(ItMi_Zeitspalt_Addon, "EVT_CRYPT_ROOM_01_SPAWN_03");
	
	//Castlemines
	
	Wld_InsertNpc 	(BDT_1040_Bandit_L, 	"NW_CASTLEMINE_01");
	Wld_InsertNpc 	(BDT_1041_Bandit_L, 	"NW_CASTLEMINE_TOWER_REP_HUT");
	Wld_InsertNpc 	(BDT_1042_Bandit_L, 	"NW_CASTLEMINE_PATH_HUT_02");
	Wld_InsertNpc 	(BDT_1043_Bandit_L, 	"CASTLEMINE");
	Wld_InsertNpc 	(BDT_1044_Bandit_L, 	"NW_CASTLEMINE_TOWER_01");
	Wld_InsertNpc 	(BDT_1045_Bandit_L, 	"NW_CASTLEMINE_PATH_OUTSIDEHUT_02");
	Wld_InsertNpc 	(BDT_1046_Bandit_L, 	"NW_CASTLEMINE_PATH_01");
	Wld_InsertNpc 	(BDT_1047_Bandit_L, 	"NW_CASTLEMINE_TOWER_CAMPFIRE_01");
	Wld_InsertNpc 	(BDT_1048_Bandit_L, 	"NW_CASTLEMINE_TOWER_CAMPFIRE_02");
	Wld_InsertNpc 	(BDT_1049_Bandit_L, 	"NW_CASTLEMINE_TOWER_CAMPFIRE_03");
	Wld_InsertNpc 	(BDT_1060_Dexter, 		"NW_CASTLEMINE_HUT_10");
	Wld_InsertNpc 	(BDT_1061_Wache, 		"NW_CASTLEMINE_PATH_03");
	Wld_InsertNpc 	(BDT_1062_Bandit_L, 	"NW_CASTLEMINE_TOWER_CAMPFIRE_04");
	//Wld_InsertNpc 	(BDT_1063_Bandit_L, 	"NW_CASTLEMINE_HUT_01"); //Joly://ADDON Macht nur Probleme !!!
	Wld_InsertNpc 	(BDT_1064_Bandit_L, 	"NW_CASTLEMINE_HUT_01");
	Wld_InsertNpc 	(BDT_1065_Bandit_L, 	"NW_CASTLEMINE_HUT_01");
	Wld_InsertNpc 	(BDT_1066_Bandit_L, 	"NW_CASTLEMINE_HUT_01");
	Wld_InsertNpc 	(BDT_1067_Bandit_L, 	"NW_CASTLEMINE_HUT_01");
	Wld_InsertNpc 	(BDT_1068_Bandit_L, 	"NW_CASTLEMINE_HUT_01");
	
	/*
	Wld_InsertNpc 	(Giant_Rat, 			"NW_CASTLEMINE_HUT_01");
 	Wld_InsertNpc 	(Giant_Rat, 			"NW_CASTLEMINE_HUT_01");

 	Wld_InsertNpc 	(Giant_Rat, 			"NW_CASTLEMINE_HUT_01_MONSTER");
 	Wld_InsertNpc 	(Giant_Rat, 			"NW_CASTLEMINE_HUT_01_MONSTER");
 	*/
 	
	Wld_InsertNpc 	(Troll, 				"NW_CASTLEMINE_TROLL_08");
	Wld_InsertNpc 	(Troll, 				"NW_CASTLEMINE_TROLL_07");

	Wld_InsertNpc 	(Skeleton, 				"FP_ROAM_CASTLEMINE2_01");
	Wld_InsertNpc 	(Skeleton, 				"FP_ROAM_CASTLEMINE2_02");
	Wld_InsertNpc 	(Skeleton, 				"FP_ROAM_CASTLEMINE2_03");
	Wld_InsertNpc 	(Skeleton, 				"FP_ROAM_CASTLEMINE2_04");
	Wld_InsertNpc 	(Skeleton, 				"FP_ROAM_CASTLEMINE2_05");
	Wld_InsertNpc 	(Skeleton, 				"FP_ROAM_CASTLEMINE2_06");
	Wld_InsertNpc 	(Skeleton, 				"FP_ROAM_CASTLEMINE2_07");
	Wld_InsertNpc 	(SkeletonMage, 			"FP_ROAM_CASTLEMINE2_08");
	Wld_InsertNpc 	(Zombie01, 				"FP_ROAM_CASTLEMINE2_09");
	Wld_InsertNpc 	(Zombie02, 				"FP_ROAM_CASTLEMINE2_10");
	Wld_InsertNpc 	(Zombie03, 				"FP_ROAM_CASTLEMINE2_11");
	Wld_InsertNpc 	(Zombie04, 				"FP_ROAM_CASTLEMINE2_12");
	Wld_InsertNpc 	(Zombie01, 				"FP_ROAM_CASTLEMINE2_13");
	
	Wld_InsertNpc 	(Minecrawler, 			"NW_CASTLEMINE_13");
	Wld_InsertNpc 	(MinecrawlerWarrior, 	"NW_CASTLEMINE_10");
	Wld_InsertNpc 	(Minecrawler, 			"NW_CASTLEMINE_12");
	Wld_InsertNpc 	(MinecrawlerWarrior, 	"NW_CASTLEMINE_06");

	Wld_InsertNpc 	(Gobbo_Black, 			"FP_ROAM_NW_BIGFARMFORESTCAVE_01");
	Wld_InsertNpc 	(Gobbo_Warrior, 			"FP_ROAM_NW_BIGFARMFORESTCAVE_02");
	Wld_InsertNpc 	(Gobbo_Black, 			"FP_ROAM_NW_BIGFARMFORESTCAVE_03");
	Wld_InsertNpc 	(Gobbo_Black, 			"FP_ROAM_NW_BIGFARMFORESTCAVE_04");

	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_BIGFARM_LAKE_CAVE_02");
	Wld_InsertNpc 	(Gobbo_Black, 			"FP_ROAM_BIGFARM_LAKE_CAVE_07");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_BIGFARM_LAKE_CAVE_08");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_BIGFARM_LAKE_CAVE_09");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_BIGFARM_LAKE_CAVE_10");
	Wld_InsertNpc 	(Gobbo_Black, 			"FP_ROAM_BIGFARM_LAKE_CAVE_11");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_BIGFARM_LAKE_CAVE_12");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_BIGFARM_LAKE_CAVE_13");

	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_NW_BIGFARMFORESTCAVE_05");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_NW_BIGFARMFORESTCAVE_06");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_NW_BIGFARMFORESTCAVE_07");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_NW_BIGFARMFORESTCAVE_08");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_NW_BIGFARMFORESTCAVE_09");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_NW_BIGFARMFORESTCAVE_10");


	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_BIGFARM_LAKE_CAVE_01");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_BIGFARM_LAKE_CAVE_03");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_BIGFARM_LAKE_CAVE_04");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_BIGFARM_LAKE_CAVE_05");
	Wld_InsertNpc 	(Gobbo_Green, 			"FP_ROAM_BIGFARM_LAKE_CAVE_06");


	//andere
	Wld_InsertNpc 	(Bloodfly, 			"NW_BIGFARM_LAKE_MONSTER_BLOODFLY");
	Wld_InsertNpc 	(Bloodfly, 			"NW_BIGFARM_LAKE_MONSTER_BLOODFLY");
	Wld_InsertNpc 	(Bloodfly, 			"NW_BIGFARM_LAKE_MONSTER_BLOODFLY");

	Wld_InsertNpc 	(Giant_Bug, 			"NW_TAVERNE_TROLLAREA_MONSTER_03_01M1");
	Wld_InsertNpc 	(Giant_Bug, 			"NW_TAVERNE_TROLLAREA_MONSTER_03_01M1");

	Wld_InsertNpc 	(Wolf, 			"NW_SAGITTA_MOREMONSTER_01");
	Wld_InsertNpc 	(Wolf, 			"NW_SAGITTA_MOREMONSTER_01");
	Wld_InsertNpc 	(Wolf, 			"NW_SAGITTA_MOREMONSTER_01");

	Wld_InsertNpc 	(Giant_Bug, 			"NW_SAGITTA_MOREMONSTER_03");
	Wld_InsertNpc 	(Giant_Bug, 			"NW_SAGITTA_MOREMONSTER_03");

	Wld_InsertNpc 	(Bloodfly, 			"NW_FARM4_WOOD_NEARPEASANT7");
	Wld_InsertNpc 	(Bloodfly, 			"NW_FARM4_WOOD_NEARPEASANT7");

	Wld_InsertNpc 	(Bloodfly, 			"NW_FARM4_WOOD_NEARPEASANT2_14");
	Wld_InsertNpc 	(Bloodfly, 			"NW_FARM4_WOOD_NEARPEASANT2_14");
	Wld_InsertNpc 	(Bloodfly, 			"NW_FARM4_WOOD_NEARPEASANT2_14");

	Wld_InsertNpc 	(Bloodfly, 			"NW_FARM4_WOOD_NEARPEASANT2_10");
	Wld_InsertNpc 	(Bloodfly, 			"NW_FARM4_WOOD_NEARPEASANT2_10");

	Wld_InsertNpc 	(Wolf, 			"NW_FARM4_WOOD_NEARPEASANT2_8");
	Wld_InsertNpc 	(Wolf, 			"NW_FARM4_WOOD_NEARPEASANT2_8");

	Wld_InsertNpc 	(Scavenger, 			"NW_FARM4_WOOD_NEARPEASANT2_7");
	Wld_InsertNpc 	(Scavenger, 			"NW_FARM4_WOOD_NEARPEASANT2_7");
	Wld_InsertNpc 	(Scavenger, 			"NW_FARM4_WOOD_NEARPEASANT2_7");

	Wld_InsertNpc 	(Giant_Bug, 			"NW_FARM4_WOOD_NEARPEASANT2_12");
	Wld_InsertNpc 	(Giant_Bug, 			"NW_FARM4_WOOD_NEARPEASANT2_12");

	Wld_InsertNpc 	(Gobbo_skeleton, 			"NW_FARM4_WOOD_MONSTER_MORE_02");
	Wld_InsertNpc 	(Gobbo_skeleton, 			"NW_FARM4_WOOD_MONSTER_MORE_02");

	Wld_InsertNpc 	(Giant_Bug, 			"NW_FARM4_WOOD_MONSTER_MORE_01");

	Wld_InsertNpc 	(Giant_Bug, 			"NW_FARM4_WOOD_MONSTER_N_3");
	Wld_InsertNpc 	(Giant_Bug, 			"NW_FARM4_WOOD_MONSTER_N_3");

	Wld_InsertNpc 	(Giant_Bug, 			"NW_FARM4_WOOD_MONSTER_N_2");
	Wld_InsertNpc 	(Giant_Bug, 			"NW_FARM4_WOOD_MONSTER_N_2");

	Wld_InsertNpc 	(Giant_Bug, 			"NW_BIGFARM_FOREST_02");
	Wld_InsertNpc 	(Giant_Bug, 			"NW_BIGFARM_FOREST_02");

	Wld_InsertNpc 	(Gobbo_skeleton, 			"NW_CRYPT_MONSTER08");
	Wld_InsertNpc 	(Gobbo_skeleton, 			"NW_CRYPT_MONSTER08");

	Wld_InsertNpc 	(Gobbo_skeleton, 			"NW_CRYPT_MONSTER02");
	Wld_InsertNpc 	(Gobbo_skeleton, 			"NW_CRYPT_MONSTER02");
	Wld_InsertNpc 	(Gobbo_skeleton, 			"NW_CRYPT_MONSTER02");

	Wld_InsertNpc 	(Lesser_skeleton, 			"NW_CRYPT_MONSTER04");
	Wld_InsertNpc 	(Skeleton, 					"NW_CRYPT_MONSTER04");
	Wld_InsertNpc 	(Lesser_skeleton, 			"NW_CRYPT_MONSTER04");

	Wld_InsertNpc 	(Lesser_skeleton, 			"NW_CRYPT_MONSTER06");
	Wld_InsertNpc 	(Lesser_skeleton, 			"NW_CRYPT_MONSTER06");

	Wld_InsertNpc 	(Wisp, 			"NW_BIGFARM_FOREST_03_NAVIGATION");

	Wld_InsertNpc 	(Keiler, 			"NW_BIGFARM_FOREST_03_NAVIGATION");

 	Wld_InsertNpc 	(Keiler, 			"NW_FARM4_WOOD_NAVIGATION_09");
	Wld_InsertNpc 	(Keiler, 			"NW_FARM4_WOOD_NAVIGATION_09");

	Wld_InsertNpc 	(Wolf, 			"NW_CASTLEMINE_TROLL_05");
 	Wld_InsertNpc 	(Wolf, 			"NW_CASTLEMINE_TROLL_05");

 	Wld_InsertNpc 	(Giant_Bug, 			"NW_BIGFARM_ALLEE_08_N_3");
 	Wld_InsertNpc 	(Giant_Bug, 			"NW_BIGFARM_ALLEE_08_N_3");

 	Wld_InsertNpc 	(Giant_Bug, 			"NW_BIGFARM_ALLEE_08_N_2");
 	Wld_InsertNpc 	(Giant_Bug, 			"NW_BIGFARM_ALLEE_08_N_2");

 	Wld_InsertNpc 	(Giant_Bug, 			"NW_BIGFARM_ALLEE_08_N_5");
 	Wld_InsertNpc 	(Giant_Bug, 			"NW_BIGFARM_ALLEE_08_N_5");
	Wld_InsertNpc 	(Giant_Bug, 			"NW_BIGFARM_ALLEE_08_N_5");

 	Wld_InsertNpc 	(Scavenger, 			"NW_BIGMILL_05");
 	Wld_InsertNpc 	(Scavenger, 			"NW_BIGMILL_05");
 	Wld_InsertNpc 	(Scavenger, 			"NW_BIGMILL_05");

 	Wld_InsertNpc 	(ScavengerJuvenile, 			"NW_BIGMILL_FARM3_03");
 	Wld_InsertNpc 	(ScavengerJuvenile, 			"NW_BIGMILL_FARM3_03");


 	Wld_InsertNpc 	(Scavenger, 			"NW_FARM3_BIGWOOD_02");
 	Wld_InsertNpc 	(Scavenger, 			"NW_FARM3_BIGWOOD_02");
 
 	//PATCH M.F. 
 	Wld_InsertNpc 	(Keiler, 			"NW_FARM3_BIGWOOD_03");
 	Wld_InsertNpc 	(Keiler, 			"NW_FARM3_BIGWOOD_03");
 	Wld_InsertNpc 	(Keiler, 			"NW_FARM3_BIGWOOD_03");
 
 	Wld_InsertNpc 	(Lurker, 			"NW_FARM3_PATH_11_SMALLRIVER_02");
 	Wld_InsertNpc 	(Lurker, 			"NW_FARM3_PATH_11_SMALLRIVER_02");

 	Wld_InsertNpc 	(Lurker, 			"NW_FARM3_PATH_11_SMALLRIVER_04");

	Wld_InsertNpc 	(ScavengerJuvenile, 			"NW_FARM3_PATH_11_SMALLRIVER_08");

	Wld_InsertNpc 	(Scavenger, 			"NW_FARM3_PATH_11_SMALLRIVER_10");
	Wld_InsertNpc 	(Scavenger, 			"NW_FARM3_PATH_11_SMALLRIVER_10");

 
 	Wld_InsertNpc 	(Lurker, 			"NW_FARM3_PATH_11_SMALLRIVER_17");
 	Wld_InsertNpc 	(Lurker, 			"NW_FARM3_PATH_11_SMALLRIVER_17");

 	Wld_InsertNpc 	(Lurker, 			"NW_FARM3_PATH_11_SMALLRIVER_20");

 	Wld_InsertNpc 	(Bloodfly, 			"NW_FARM3_PATH_11_SMALLRIVER_03B");
 	Wld_InsertNpc 	(Bloodfly, 			"NW_FARM3_PATH_11_SMALLRIVER_03B");

 	Wld_InsertNpc 	(Lurker, 			"NW_FARM3_PATH_11_SMALLRIVERMID_03");

 	Wld_InsertNpc 	(Lurker, 			"NW_FARM3_PATH_11_SMALLRIVERMID_02");

 	Wld_InsertNpc 	(Lurker, 			"NW_FARM3_PATH_11_SMALLRIVERMID_03");

 	Wld_InsertNpc 	(Keiler, 			"NW_FARM3_PATH_12_MONSTER_01");
 	Wld_InsertNpc 	(Keiler, 			"NW_FARM3_PATH_12_MONSTER_01");

	Wld_InsertNpc 	(Keiler, 			"NW_FARM3_PATH_12_MONSTER_03");

 	Wld_InsertNpc 	(Alligator, 			"NW_FARM3_MOUNTAINLAKE_03");

 	Wld_InsertNpc 	(Lurker, 			"NW_FARM3_MOUNTAINLAKE_MONSTER_01");
 	Wld_InsertNpc 	(Lurker, 			"NW_FARM3_MOUNTAINLAKE_MONSTER_01");


 	Wld_InsertNpc 	(Keiler, 		"NW_BIGFARM_LAKE_03_MOVEMENT");
 	Wld_InsertNpc 	(Keiler, 		"NW_BIGFARM_LAKE_03_MOVEMENT");

 	Wld_InsertNpc 	(Giant_Bug, 		"NW_BIGFARM_LAKE_03_MOVEMENT3");
 	Wld_InsertNpc 	(Giant_Bug, 		"NW_BIGFARM_LAKE_03_MOVEMENT3");

 	Wld_InsertNpc 	(Gobbo_skeleton, 	"NW_BIGFARM_LAKE_03_MOVEMENT5");
 	Wld_InsertNpc 	(Gobbo_skeleton, 	"NW_BIGFARM_LAKE_03_MOVEMENT5");
 	
 	//TAVERNECAVE1
 	Wld_InsertNpc 	(Molerat, 			"WP_BIGFARM_TAVERNCAVE2_01");
 	Wld_InsertNpc 	(Molerat, 			"WP_BIGFARM_TAVERNCAVE2_02");
 
	//****************************************************************************************

	// Second Pass
 		Wld_InsertNpc 	(Molerat, 			"NW_FARM3_BIGWOOD_04");
 		Wld_InsertNpc 	(Molerat, 			"NW_FARM3_BIGWOOD_04");

 		Wld_InsertNpc 	(Snapper, 			"NW_FARM3_VALLEY_002_WALL");
 		Wld_InsertNpc 	(Snapper, 			"NW_FARM3_VALLEY_002_WALL");
 		Wld_InsertNpc 	(Snapper, 			"NW_FARM3_VALLEY_002_HILL");
 		Wld_InsertNpc 	(Snapper, 			"NW_FARM3_VALLEY_002_HILL");

 		Wld_InsertNpc 	(Scavenger_Demon, 	"NW_FARM3_VALLEY_002");
 		Wld_InsertNpc 	(Scavenger_Demon, 	"NW_FARM3_VALLEY_002");

 		Wld_InsertNpc 	(Bloodfly, 			"NW_FARM3_VALLEY_005_TREE");
 		Wld_InsertNpc 	(Bloodfly, 			"NW_FARM3_VALLEY_005_TREE");

 		Wld_InsertNpc 	(Gobbo_Elite, 		"NW_FARM3_VALLEY_011");
 		Wld_InsertNpc 	(Gobbo_Elite, 		"NW_FARM3_VALLEY_011");

 		Wld_InsertNpc 	(Hellhound, 		"NW_FARM3_VALLEY_015_MOVEMENT");
 		Wld_InsertNpc 	(Hellhound, 		"NW_FARM3_VALLEY_015_MOVEMENT");
};

	FUNC VOID INIT_SUB_NewWorld_Part_GreatPeasant_01()
	{
		// ------- Sld-Vorposten -------
		Wld_AssignRoomToGuild ("grpwaldhuette01",	GIL_SLD);	
	
		// ------ Onars Hof ------
		Wld_AssignRoomToGuild ("grphaupthaus01",	GIL_PUBLIC);
		Wld_AssignRoomToGuild ("grpschmiede01",		GIL_PUBLIC);
		Wld_AssignRoomToGuild ("grpscheune01",		GIL_PUBLIC);
		Wld_AssignRoomToGuild ("grpkapelle01",		GIL_NONE);
		
		// ------ abgelegene Gruft ------
		Wld_AssignRoomToGuild ("cementary01",		GIL_NONE);
				
		// ------ Sekobs Farm ------
		if (Sekob_RoomFree == FALSE)
		{
			Wld_AssignRoomToGuild ("grpbauer01",		GIL_PUBLIC);
		}
		else
		{
			Wld_AssignRoomToGuild ("grpbauer01",		GIL_NONE);
		};
		Wld_AssignRoomToGuild ("grpbauerscheune01",	GIL_PUBLIC);
		
		// ------ Bengars Farm ------
		Wld_AssignRoomToGuild ("grpbauer02",		GIL_PUBLIC);
		Wld_AssignRoomToGuild ("grpbauerscheune02",	GIL_PUBLIC);
		
		// ------ Abenteuerspielplatz -------
		Wld_AssignRoomToGuild ("grpturm02",			GIL_PUBLIC); //vorderer Turm
		Wld_AssignRoomToGuild ("grpturm01",			GIL_PUBLIC); //hinterer Turm
		Wld_AssignRoomToGuild ("grpwaldhuette02",	GIL_PUBLIC); //Banditenhütte
	

	// Second Pass	
		REV_SetObjectRoutine_Fire ("NW_SECONDPASS_FIRE_01");
		REV_SetObjectRoutine_Fire ("NW_SECONDPASS_FIRE_02");
		REV_SetObjectRoutine_Fire ("NW_SECONDPASS_FIRE_03");
		REV_SetObjectRoutine_Fire ("NW_SECONDPASS_FIRE_04");
		REV_SetObjectRoutine_Fire ("NW_SECONDPASS_FIRE_05");
	
	// Landowner
		REV_SetObjectRoutine_Fire ("NW_BIGFARM_FIRE_01");
		REV_SetObjectRoutine_Fire ("NW_BIGFARM_FIRE_02");
		REV_SetObjectRoutine_Fire ("NW_BIGFARM_FIRE_03");
		REV_SetObjectRoutine_Fire ("NW_BIGFARM_FIRE_04");
		REV_SetObjectRoutine_Fire ("NW_BIGFARM_FIRE_05");
		REV_SetObjectRoutine_Fire ("NW_BIGFARM_FIRE_06");
		REV_SetObjectRoutine_Fire ("NW_BIGFARM_FIRE_07");
		REV_SetObjectRoutine_Fire ("NW_BIGFARM_FIRE_08");
		REV_SetObjectRoutine_Fire ("NW_BIGFARM_FIRE_09");
		REV_SetObjectRoutine_Fire ("NW_BIGFARM_FIRE_10");
		REV_SetObjectRoutine_Fire ("NW_BIGFARM_FIRE_11");
	};

FUNC VOID INIT_NewWorld_Part_GreatPeasant_01 ()
{
	B_InitMonsterAttitudes (); 
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();	
	
	INIT_SUB_NewWorld_Part_GreatPeasant_01();
};
//--------------------------- PASS -------------------------------------------------------
FUNC VOID STARTUP_NewWorld_Part_Pass_To_OW_01 ()
{
	// ------NSCs --------
	
	Wld_InsertNpc 	(PAL_297_Ritter, "NW_PASS_01");
	Wld_InsertNpc 	(PAL_298_Ritter, "NW_PASS_01");

	Wld_InsertNpc	(WolfJuvenile,"NW_PASS_06");
	Wld_InsertNpc	(WolfJuvenile,"NW_PASS_06");
	
	Wld_InsertNpc	(WolfJuvenile,"NW_PASS_11");
	Wld_InsertNpc	(WolfJuvenile,"NW_PASS_11");
	
	Wld_InsertNpc	(WolfJuvenile,"NW_PASS_SECRET_15");
	Wld_InsertNpc	(WolfJuvenile,"NW_PASS_SECRET_16");
	Wld_InsertNpc	(WolfJuvenile,"NW_PASS_SECRET_16");
	Wld_InsertNpc	(WolfJuvenile,"NW_PASS_SECRET_17");
	
	Wld_InsertNpc	(Giant_Rat,"NW_PASS_SECRET_05");
	Wld_InsertNpc	(Giant_Rat,"NW_PASS_SECRET_06");
	Wld_InsertNpc	(Giant_Rat,"NW_PASS_SECRET_07");
	Wld_InsertNpc	(Giant_Rat,"NW_PASS_SECRET_08");
	
	Wld_InsertNpc	(Gobbo_Green,"NW_PASS_GRAT_04");
	Wld_InsertNpc	(Gobbo_Green,"NW_PASS_GRAT_05");
	Wld_InsertNpc	(Gobbo_Green,"NW_PASS_GRAT_05");
	Wld_InsertNpc	(Gobbo_Green,"NW_PASS_GRAT_06");
	Wld_InsertNpc	(Gobbo_Black,"NW_PASS_GRAT_06");
	
	Wld_InsertNpc	(OrcShaman_Sit,"NW_PASS_ORKS_07");
	Wld_InsertNpc	(OrcShaman_Sit,"NW_PASS_ORKS_02");
	Wld_InsertNpc	(OrcShaman_Sit,"NW_PASS_ORKS_02_B");
	
	Wld_InsertNpc	(OrcShaman_Sit,"NW_PASS_ORKS_13");
	Wld_InsertNpc	(OrcShaman_Sit,"NW_PASS_ORKS_04_B");
	
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_13");
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_14");
	
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_07");
	
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_06");
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_06");
	
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_01");
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_01");
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_01");
	
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_04");
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_04");
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_04");
	
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_08");
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_08");
	
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_03");
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_03");
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_03");
	
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_09");
	
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_10");
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_10");
	
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_11");
	Wld_InsertNpc	(OrcWarrior_Roam,"NW_PASS_ORKS_12");
};
FUNC VOID INIT_SUB_NewWorld_Part_Pass_To_OW_01 ()
{

};
FUNC VOID INIT_NewWorld_Part_Pass_To_OW_01 ()
{
	B_InitMonsterAttitudes (); 
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();	
	
	INIT_SUB_NewWorld_Part_Pass_To_OW_01();
};
//---Medium Forest--------

FUNC VOID STARTUP_NewWorld_Part_Forest_01 ()
{
	//Wld_InsertItem 		(itmi_erolskelch,"FP_SPAWN_KELCH"); 
	
	Wld_InsertNpc		(BDT_1009_Bandit_L, "NW_FOREST_CAVE1_IN_04"); 
	Wld_InsertNpc		(BDT_1010_Bandit_L, "NW_FOREST_CAVE1_IN_05"); 
	Wld_InsertNpc		(BDT_1011_Bandit_M, "NW_FOREST_CAVE1_IN_06"); 
	Wld_InsertNpc		(BDT_1016_Bandit_M, "NW_CITY_SMFOREST_BANDIT_03"); 
	Wld_InsertNpc		(BDT_1017_Bandit_L, "NW_CITY_SMFOREST_BANDIT_04"); 
	
	//Farm2
	Wld_InsertNpc 	(SLD_840_Alvares, 		"FARM2");
	Wld_InsertNpc 	(SLD_841_Engardo, 		"FARM2");

	Wld_InsertNpc 	(BAU_940_Akil, 			"FARM2");
	Wld_InsertNpc 	(BAU_941_Kati, 			"FARM2");
	Wld_InsertNpc 	(BAU_942_Randolph, 		"FARM2");
	Wld_InsertNpc 	(BAU_943_Bauer, 		"FARM2");
	Wld_InsertNpc 	(BAU_944_Ehnim, 		"FARM2");
	Wld_InsertNpc 	(BAU_945_Egill, 		"FARM2");

	Wld_InsertNpc 	(Sheep, 		"NW_FARM2_OUT_02");
	Wld_InsertNpc 	(Sheep, 		"NW_FARM2_OUT_02");

	// Taverne
	
	Wld_InsertNpc 	(OUT_970_ORLAN, 		"TAVERNE");
	Wld_InsertNpc 	(BAU_971_Bauer, 		"TAVERNE");
	Wld_InsertNpc 	(BAU_972_Bauer, 		"TAVERNE");
	Wld_InsertNpc 	(BAU_973_Rukhar, 		"TAVERNE");
	Wld_InsertNpc 	(BAU_974_Bauer ,		"NW_TAVERNE_IN_07");

	// Monster

	Wld_InsertNpc 	(Giant_Rat, 			"FP_ROAM_MEDIUMFOREST_KAP2_12");
	Wld_InsertNpc 	(Giant_Rat, 			"FP_ROAM_MEDIUMFOREST_KAP2_10");

	Wld_InsertNpc 	(Scavenger, 	"FP_ROAM_MEDIUMFOREST_KAP2_28");
	Wld_InsertNpc 	(Scavenger, 	"FP_ROAM_MEDIUMFOREST_KAP2_29");
	
	Wld_InsertNpc 	(Scavenger, 		"FP_ROAM_MEDIUMFOREST_KAP2_17");
	Wld_InsertNpc 	(Scavenger, 		"FP_ROAM_MEDIUMFOREST_KAP2_13");
	Wld_InsertNpc 	(Wolf, 		"FP_ROAM_MEDIUMFOREST_KAP2_36");
	Wld_InsertNpc 	(Wolf, 		"FP_ROAM_MEDIUMFOREST_KAP2_34");


	Wld_InsertNpc 	(Skeleton, 		"FP_ROAM_MEDIUMFOREST_KAP3_04");
	Wld_InsertNpc 	(Skeleton, 		"FP_ROAM_MEDIUMFOREST_KAP3_05");

	Wld_InsertNpc 	(Zombie01, "FP_ROAM_MEDIUMFOREST_KAP3_01");
	Wld_InsertNpc 	(Zombie02, "FP_ROAM_MEDIUMFOREST_KAP3_02");
	Wld_InsertNpc 	(Zombie03, "FP_ROAM_MEDIUMFOREST_KAP3_03");

	Wld_InsertNpc 	(Warg, "FP_ROAM_MEDIUMFOREST_KAP3_08");
	Wld_InsertNpc 	(Warg, "FP_ROAM_MEDIUMFOREST_KAP3_09");
	Wld_InsertNpc 	(Warg, "FP_ROAM_MEDIUMFOREST_KAP3_11");
	Wld_InsertNpc 	(Giant_Bug, "FP_ROAM_MEDIUMFOREST_KAP3_15");
	Wld_InsertNpc 	(Wolf, "FP_ROAM_MEDIUMFOREST_KAP3_17");
	Wld_InsertNpc 	(Keiler, "FP_ROAM_MEDIUMFOREST_KAP3_21");
	Wld_InsertNpc 	(Warg, "FP_ROAM_MEDIUMFOREST_KAP3_23");
	Wld_InsertNpc 	(Warg, "FP_ROAM_MEDIUMFOREST_KAP3_28");
	Wld_InsertNpc 	(Warg, "FP_ROAM_MEDIUMFOREST_KAP3_29");

	Wld_InsertNpc 	(Shadowbeast, "FP_ROAM_MEDIUMFOREST_KAP3_20");

	Wld_InsertNpc 	(Giant_Rat, "FP_ROAM_MEDIUMFOREST_KAP3_27");
	Wld_InsertNpc 	(Giant_Rat, "FP_ROAM_MEDIUMFOREST_KAP3_26");

	Wld_InsertNpc 	(OrcWarrior_Roam, "FP_ROAM_MEDIUMFOREST_KAP3_32");

	// ------- vom Osttor zum Leuchtturm ------
	Wld_InsertNpc 	(Bloodfly, "NW_CITY_TO_LIGHTHOUSE_03"); //mehr FPs
	Wld_InsertNpc 	(Bloodfly, "NW_CITY_TO_LIGHTHOUSE_03");
	
	// ------- Küste ------
	Wld_InsertNpc 	(BeachFireWaran, "NW_CITY_BEACH_013"); 
	Wld_InsertNpc 	(BeachFireWaran, "NW_CITY_BEACH_013"); 
	
	//Wld_InsertNpc	(BeachWaran,"FP_ROAM_FISHERCOAST_01");	
	//Wld_InsertNpc	(BeachWaran,"FP_ROAM_FISHERCOAST_02");

	Wld_InsertNpc 	(BeachWaran, "FP_ROAM_FISHERMAN_04");
	Wld_InsertNpc 	(BeachWaran, "FP_ROAM_FISHERMAN_05");
	
	// ------- vom Osttor zu Farm2 ------
	Wld_InsertNpc 	(Mil_337_Mika, "FARM2");
	
	Wld_InsertNpc 	(Wolf, "NW_CITY_TO_FOREST_05");
	Wld_InsertNpc 	(Wolf, "NW_CITY_TO_FOREST_07");
	Wld_InsertNpc 	(Giant_Rat, "NW_CITY_TO_FOREST_11");
	Wld_InsertNpc 	(Giant_Rat, "NW_CITY_TO_FOREST_12");
	Wld_InsertNpc 	(Gobbo_Green, "NW_CITY_TO_FOREST_15"); //FPs fehlen
	
	Wld_InsertNpc 	(Wolf, "FP_ROAM_CITY_TO_FOREST_47");

	Wld_InsertNpc 	(Giant_Rat, "FP_ROAM_CITY_TO_FOREST_11");
	Wld_InsertNpc 	(Giant_Rat, "FP_ROAM_CITY_TO_FOREST_10");
	
	Wld_InsertNpc 	(Giant_Rat, "FP_ROAM_CITYFOREST_KAP3_22");
	Wld_InsertNpc 	(Giant_Rat, "FP_ROAM_CITYFOREST_KAP3_20");
	Wld_InsertNpc 	(Giant_Rat, "FP_ROAM_CITYFOREST_KAP3_21");

	Wld_InsertNpc 	(Giant_Bug, "FP_ROAM_CITYFOREST_KAP3_23");
	Wld_InsertNpc 	(Giant_Bug, "FP_ROAM_CITYFOREST_KAP3_27");
	Wld_InsertNpc 	(Giant_Bug, "FP_ROAM_CITYFOREST_KAP3_28");
	Wld_InsertNpc 	(Giant_Bug, "FP_ROAM_CITYFOREST_KAP3_29");
	Wld_InsertNpc 	(Giant_Bug, "FP_ROAM_CITYFOREST_KAP3_30");
	Wld_InsertNpc 	(Giant_Bug, "FP_ROAM_CITYFOREST_KAP3_38");

	Wld_InsertNpc 	(Waran, "FP_ROAM_CITY_TO_FOREST_32");
	Wld_InsertNpc 	(Waran, "FP_ROAM_CITY_TO_FOREST_29");
	Wld_InsertNpc 	(Waran, "FP_ROAM_CITY_TO_FOREST_31");

	Wld_InsertNpc 	(Molerat, "FP_ROAM_CITY_TO_FOREST_42");
	Wld_InsertNpc 	(Molerat, "FP_ROAM_CITY_TO_FOREST_41");

	Wld_InsertNpc 	(Shadowbeast, "FP_ROAM_CITYFOREST_KAP3_04");

	Wld_InsertNpc 	(Gobbo_Black, "FP_ROAM_CITYFOREST_KAP3_07");
	Wld_InsertNpc 	(Gobbo_Black, "FP_ROAM_CITYFOREST_KAP3_06");
	Wld_InsertNpc 	(Gobbo_Black, "FP_ROAM_CITYFOREST_KAP3_08");

	Wld_InsertNpc 	(Warg, "FP_ROAM_CITYFOREST_KAP3_09");
	Wld_InsertNpc 	(Warg, "FP_ROAM_CITYFOREST_KAP3_10");
	Wld_InsertNpc 	(Warg, "FP_ROAM_CITYFOREST_KAP3_11");
	Wld_InsertNpc 	(Warg, "FP_ROAM_CITYFOREST_KAP3_12");
	Wld_InsertNpc 	(Warg, "FP_ROAM_CITYFOREST_KAP3_14");
	Wld_InsertNpc 	(Warg, "FP_ROAM_CITYFOREST_KAP3_15");
	Wld_InsertNpc 	(Warg, "FP_ROAM_CITYFOREST_KAP3_17");
	
	// VINOSKELLEREI
	Wld_InsertNpc 		(Giant_Rat ,"NW_FOREST_VINOSKELLEREI_01"); 
	Wld_InsertNpc 		(Giant_Rat ,"NW_FOREST_VINOSKELLEREI_01"); 
	Wld_InsertItem 		(ItWr_VinosKellergeister_Mis ,"FP_ITEM_NW_VINOKELLEREI"); 
	Wld_InsertItem 		(ITWR_REVIVED_RECIPE_VINOSPECIAL ,"FP_ITEM_NW_VINOKELLEREI"); 

	// ----------- Lighthouse ------------
	
	Wld_InsertNpc 	(BDT_1021_LeuchtturmBandit, "NW_LIGHTHOUSE_OUT_01"); 
	Wld_InsertNpc 	(BDT_1022_LeuchtturmBandit, "NW_LIGHTHOUSE_TO_BEACH_BANDITS");
	Wld_InsertNpc 	(BDT_1023_LeuchtturmBandit, "NW_LIGHTHOUSE_TO_BEACH_BANDITS");
	Wld_InsertNpc 	(BDT_1019_LeuchtturmBandit, "NW_LIGHTHOUSE_TO_BEACH_BANDITS_B");
	Wld_InsertNpc 	(BDT_1018_LeuchtturmBandit, "NW_LIGHTHOUSE_TO_BEACH_BANDITS_B");

	Wld_InsertNpc 	(Scavenger, "NW_LIGHTHOUSE_TO_BEACH_005");
	Wld_InsertNpc 	(Scavenger, "NW_LIGHTHOUSE_TO_BEACH_005");
	Wld_InsertNpc 	(ScavengerJuvenile, "NW_LIGHTHOUSE_TO_BEACH_005");
	Wld_InsertNpc 	(ScavengerJuvenile, "NW_LIGHTHOUSE_TO_BEACH_005");

	Wld_InsertNpc 	(BeachWaran, "NW_LIGHTHOUSE_TO_BEACH_011");
	Wld_InsertNpc 	(BeachWaran, "NW_LIGHTHOUSE_TO_BEACH_012");

	Wld_InsertNpc 	(BeachWaran, "NW_LIGHTHOUSE_TO_BEACH_018");
	Wld_InsertNpc 	(BeachWaran, "NW_LIGHTHOUSE_TO_BEACH_018");

	Wld_InsertNpc 	(Gobbo_Green, "NW_LIGHTHOUSE_CLIFF_001");
	Wld_InsertNpc 	(Gobbo_Black, "NW_LIGHTHOUSE_CLIFF_001");
	
	// ----------- SMForestCave ------------
	Wld_InsertNpc 	(Giant_Rat, "NW_CITY_SMFOREST_05");
	Wld_InsertNpc 	(Meatbug, "NW_CITY_SMFOREST_05");
	Wld_InsertNpc 	(Meatbug, "NW_CITY_SMFOREST_05");
	
	Wld_InsertNpc 	(Meatbug, "NW_CITY_SMFOREST_06");
	Wld_InsertNpc 	(Meatbug, "NW_CITY_SMFOREST_06");
	Wld_InsertNpc 	(Meatbug, "NW_CITY_SMFOREST_06");
	
	Wld_InsertNpc 	(BDT_1000_LOAFER, "NW_CITY_SMFOREST_07");
	Wld_InsertNpc 	(BDT_1002_LOAFER, "NW_CITY_SMFOREST_BANDIT_02");
	
	Wld_InsertNpc 	(Meatbug, "NW_CITY_SMFOREST_08");
	Wld_InsertNpc 	(Meatbug, "NW_CITY_SMFOREST_08");
	
	Wld_InsertNpc 	(Meatbug, "NW_CITY_SMFOREST_09");
	Wld_InsertNpc 	(Meatbug, "NW_CITY_SMFOREST_09");
	Wld_InsertNpc 	(Giant_Rat, "NW_CITY_SMFOREST_09");
	
	Wld_InsertNpc 	(Giant_Rat, "NW_CITY_SMFOREST_03");
	Wld_InsertNpc 	(Giant_Rat, "NW_CITY_SMFOREST_03");
	
	Wld_InsertNpc 	(Meatbug, "NW_CITY_SMFOREST_01_01");
	Wld_InsertNpc 	(Meatbug, "NW_CITY_SMFOREST_01_01");
	Wld_InsertNpc 	(Meatbug, "NW_CITY_SMFOREST_01_01");
	
	// ----------- COASTCAVE ------------
	Wld_InsertNpc 	(Shadowbeast, "NW_FOREST_PATH_35_06");
	
	// ----------- City2Cave ------------
	Wld_InsertNpc 	(Orcwarrior_Rest, "NW_CITY_TO_FOREST_04_08");
	Wld_InsertNpc 	(Wolf, "NW_CITY_TO_FOREST_04_09");
	
	Wld_InsertNpc 	(Meatbug, "NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc 	(Meatbug, "NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc 	(Meatbug, "NW_CITY_TO_FOREST_04_05");
	
	Wld_InsertNpc 	(Meatbug, "NW_CITY_TO_FOREST_04_05_01");
	Wld_InsertNpc 	(Meatbug, "NW_CITY_TO_FOREST_04_05_01");
	
	// ----------- BridgeCave ------------
	Wld_InsertNpc 	(Molerat, "NW_TAVERN_TO_FOREST_05_05");
	Wld_InsertNpc 	(Molerat, "NW_TAVERN_TO_FOREST_05_06");
	
	// ----------- ShadowBeastCave ------------
	Wld_InsertNpc 	(Gobbo_Green, "NW_CITYFOREST_CAVE_A01");
	Wld_InsertNpc 	(Gobbo_Green, "NW_CITYFOREST_CAVE_A01");
	
	Wld_InsertNpc 	(Gobbo_Elite, "NW_CITYFOREST_CAVE_A02");
	
	Wld_InsertNpc 	(Giant_Rat, "NW_CITYFOREST_CAVE_04");
	Wld_InsertNpc 	(Giant_Rat, "NW_CITYFOREST_CAVE_04");
	
	Wld_InsertNpc 	(Molerat, "NW_CITYFOREST_CAVE_06");
	Wld_InsertNpc 	(Molerat, "NW_CITYFOREST_CAVE_06");
	Wld_InsertNpc 	(Molerat, "NW_CITYFOREST_CAVE_06");
		
	Wld_InsertNpc 	(Shadowbeast, "NW_CITYFOREST_CAVE_A06");
	
	// andere
	Wld_InsertNpc 	(Giant_Rat, "NW_FARM1_CITYWALL_RIGHT_04");
	Wld_InsertNpc 	(Giant_Rat, "NW_FARM1_CITYWALL_RIGHT_04");

	Wld_InsertNpc 	(Scavenger, "NW_FOREST_PATH_38_MONSTER");
	Wld_InsertNpc 	(Scavenger, "NW_FOREST_PATH_38_MONSTER");

	Wld_InsertNpc 	(Keiler, "NW_CITY_TO_LIGHTHOUSE_13_MONSTER");

	Wld_InsertNpc 	(Wolf, "NW_FOREST_PATH_35_01");
	Wld_InsertNpc 	(Wolf, "NW_FOREST_PATH_35_01");

	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_31_MONSTER");
	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_31_MONSTER");

	Wld_InsertNpc 	(Molerat, "NW_FOREST_PATH_21_MONSTER");
	Wld_InsertNpc 	(Molerat, "NW_FOREST_PATH_21_MONSTER");

	Wld_InsertNpc 	(Giant_Bug, "NW_FARM2_TO_TAVERN_09_MONSTER");

	Wld_InsertNpc 	(Giant_Bug, "NW_FARM2_TO_TAVERN_09_MONSTER2");
	Wld_InsertNpc 	(Giant_Bug, "NW_FARM2_TO_TAVERN_09_MONSTER2");

	Wld_InsertNpc 	(Giant_Bug, "NW_FARM2_TO_TAVERN_09_MONSTER3");
	Wld_InsertNpc 	(Giant_Bug, "NW_FARM2_TO_TAVERN_09_MONSTER3");

	Wld_InsertNpc 	(Molerat, "NW_FARM2_TO_TAVERN_09_MONSTER4");
	Wld_InsertNpc 	(Molerat, "NW_FARM2_TO_TAVERN_09_MONSTER4");
	Wld_InsertNpc 	(Molerat, "NW_FARM2_TO_TAVERN_09_MONSTER4");

	Wld_InsertNpc 	(Bloodfly, "NW_FARM2_TO_TAVERN_09_MONSTER5");
	Wld_InsertNpc 	(Bloodfly, "NW_FARM2_TO_TAVERN_09_MONSTER5");

	Wld_InsertNpc 	(Wolf, "NW_CITY_TO_FOREST_04");

	Wld_InsertNpc 	(Wolf, "NW_FOREST_CAVE1_01");

	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_75_2_MONSTER");
	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_75_2_MONSTER");

	Wld_InsertNpc 	(Keiler, "NW_FOREST_PATH_79");
	Wld_InsertNpc 	(Keiler, "NW_FOREST_PATH_79");

	Wld_InsertNpc 	(Blattcrawler, "NW_FOREST_PATH_80_1");
	Wld_InsertNpc 	(Blattcrawler, "NW_FOREST_PATH_80_1");

	Wld_InsertNpc 	(Waran, "NW_FOREST_PATH_82");
	Wld_InsertNpc 	(Waran, "NW_FOREST_PATH_82");

	Wld_InsertNpc 	(Waran, "NW_FOREST_PATH_82_M");
	Wld_InsertNpc 	(Waran, "NW_FOREST_PATH_82_M");

	Wld_InsertNpc 	(Wolf, "NW_FOREST_PATH_66_M");
	Wld_InsertNpc 	(Wolf, "NW_FOREST_PATH_66_M");

 	Wld_InsertNpc 	(Gobbo_Skeleton, "NW_FOREST_PATH_62_M");
 	Wld_InsertNpc 	(Gobbo_Skeleton, "NW_FOREST_PATH_62_M");

 	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_57");
 	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_57");

 	Wld_InsertNpc 	(Bloodfly, "NW_FOREST_PATH_35_01_MONSTER");
 	Wld_InsertNpc 	(Bloodfly, "NW_FOREST_PATH_35_01_MONSTER");

 	Wld_InsertNpc 	(Snapper, "NW_FOREST_PATH_80_1_MOVEMENT8_M");
 	Wld_InsertNpc 	(Snapper, "NW_FOREST_PATH_80_1_MOVEMENT8_M");

 	Wld_InsertNpc 	(Blattcrawler, "NW_FOREST_PATH_80_1_MOVEMENTF");
 	Wld_InsertNpc 	(Blattcrawler, "NW_FOREST_PATH_80_1_MOVEMENTF");

 	Wld_InsertNpc 	(Blattcrawler, "NW_FOREST_PATH_66_M2");
 	Wld_InsertNpc 	(Blattcrawler, "NW_FOREST_PATH_66_M2");
 	Wld_InsertNpc 	(Blattcrawler, "NW_FOREST_PATH_66_M2");

 	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_31_NAVIGATION3");
 	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_31_NAVIGATION3");

  	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_31_NAVIGATION10");
  	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_31_NAVIGATION10");

  	Wld_InsertNpc 	(Giant_Rat, "NW_FOREST_PATH_31_NAVIGATION11");

  	Wld_InsertNpc 	(Blattcrawler, "NW_FOREST_PATH_80_1_MOVEMENT6");
  	Wld_InsertNpc 	(Blattcrawler, "NW_FOREST_PATH_80_1_MOVEMENT6");

  	Wld_InsertNpc 	(Snapper, "NW_FOREST_PATH_80_1_MOVEMENT15");
  	Wld_InsertNpc 	(Snapper, "NW_FOREST_PATH_80_1_MOVEMENT15");
  	Wld_InsertNpc 	(Snapper, "NW_FOREST_PATH_80_1_MOVEMENT15");

  	Wld_InsertNpc 	(Snapper, "NW_FOREST_PATH_80_1_MOVEMENT8_M5");
  	Wld_InsertNpc 	(Snapper, "NW_FOREST_PATH_80_1_MOVEMENT8_M5");

  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_31_NAVIGATION16");
  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_31_NAVIGATION16");

  	Wld_InsertNpc 	(Snapper, "NW_FOREST_PATH_80_1_MOVEMENT8_M3");
  	Wld_InsertNpc 	(Snapper, "NW_FOREST_PATH_80_1_MOVEMENT8_M3");
  	Wld_InsertNpc 	(Snapper, "NW_FOREST_PATH_80_1_MOVEMENT8_M3");

  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_04_16_MONSTER");
  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_04_16_MONSTER");
  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_04_16_MONSTER");

  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_04_16_MONSTER2");
  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_04_16_MONSTER2");

  	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_04_13");
  	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_04_13");

  	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_04_3");

  	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_04_4");
  	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_04_4");

  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_72_MONSTER");

  	Wld_InsertNpc 	(Bloodfly, "NW_FOREST_PATH_62_06");
  	Wld_InsertNpc 	(Bloodfly, "NW_FOREST_PATH_62_06");

  	Wld_InsertNpc 	(Molerat, "NW_FOREST_PATH_56_MONSTER");
  	Wld_InsertNpc 	(Molerat, "NW_FOREST_PATH_56_MONSTER");

  	Wld_InsertNpc 	(Bloodfly, "NW_FOREST_PATH_27_03");
  	Wld_InsertNpc 	(Bloodfly, "NW_FOREST_PATH_27_03");

  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_27_02");
  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_27_02");

  	Wld_InsertNpc 	(Scavenger, "NW_CITY_TO_LIGHTHOUSE_13_MONSTER7");
  	Wld_InsertNpc 	(Scavenger, "NW_CITY_TO_LIGHTHOUSE_13_MONSTER7");

  	Wld_InsertNpc 	(Bloodfly, "NW_CITY_TO_LIGHTHOUSE_13_MONSTER8");
  	Wld_InsertNpc 	(Bloodfly, "NW_CITY_TO_LIGHTHOUSE_13_MONSTER8");

  	Wld_InsertNpc 	(Keiler, "NW_FOREST_PATH_35_MONSTER");

  	Wld_InsertNpc 	(Orcwarrior_Roam, "NW_FOREST_PATH_31_NAVIGATION_M");
  	Wld_InsertNpc 	(OrcDog, "NW_FOREST_PATH_31_NAVIGATION_M");

  	Wld_InsertNpc 	(Orcwarrior_Roam, "NW_FOREST_PATH_31_NAVIGATION19");
  	Wld_InsertNpc 	(Orcwarrior_Roam, "NW_FOREST_PATH_31_NAVIGATION19");

  	Wld_InsertNpc 	(Orcelite_Roam, "NW_FOREST_PATH_18_MONSTER");
  	Wld_InsertNpc 	(OrcDog, "NW_FOREST_PATH_18_MONSTER");

  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_72_MONSTER23");
  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_72_MONSTER23");

  	Wld_InsertNpc 	(Molerat, "NW_FOREST_PATH_76");

  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_66_MONSTER");
  	Wld_InsertNpc 	(Warg, "NW_FOREST_PATH_66_MONSTER");

  	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_04_5");
  	Wld_InsertNpc 	(Giant_Bug, "NW_FOREST_PATH_04_5");

  	//Egill/Enim-FIX
  	//Wld_InsertNpc 	(Giant_Bug, "NW_CITY_TO_FARM2_05_MOV5");
  	//Wld_InsertNpc 	(Giant_Bug, "NW_CITY_TO_FARM2_05_MOV5");

  	Wld_InsertNpc 	(Keiler, "NW_FOREST_PATH_04_14_MONSTER");
  	Wld_InsertNpc 	(Keiler, "NW_FOREST_PATH_04_14_MONSTER");

   	Wld_InsertNpc 	(Molerat, "NW_CITY_SMFOREST_03_M");
   	Wld_InsertNpc 	(Molerat, "NW_CITY_SMFOREST_03_M");

   	Wld_InsertNpc 	(Molerat, "NW_FOREST_PATH_25_01_M");
   	Wld_InsertNpc 	(Molerat, "NW_FOREST_PATH_25_01_M");
};

	FUNC VOID INIT_SUB_NewWorld_Part_Forest_01()
	{
	};

FUNC VOID INIT_NewWorld_Part_Forest_01 ()
{
	B_InitMonsterAttitudes (); 
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();	
	
	INIT_SUB_NewWorld_Part_Forest_01();
};
	
//------- Troll Area ---------------------------
FUNC VOID STARTUP_NewWorld_Part_TrollArea_01 ()
{
	//----- Magierhöhle -----
	/*
	Wld_InsertNpc 	(Skeleton, 				"NW_MAGECAVE_SKELETON");
	Wld_InsertNpc 	(Lesser_Skeleton, 		"NW_MAGECAVE_15");
	Wld_InsertNpc 	(Lesser_Skeleton, 		"NW_MAGECAVE_16");
	Wld_InsertNpc 	(Lesser_Skeleton, 		"NW_MAGECAVE_GUARD_02");
	Wld_InsertNpc 	(Lesser_Skeleton, 		"NW_MAGECAVE_GUARD_01");
	Wld_InsertNpc 	(Lesser_Skeleton, 		"NW_MAGECAVE_CROSSING");
	Wld_InsertNpc 	(Lesser_Skeleton, 		"NW_MAGECAVE_CROSSING");
	*/
	Wld_InsertNpc 	(Meatbug, 				"NW_MAGECAVE_20");
	Wld_InsertNpc 	(Meatbug, 				"NW_MAGECAVE_20");
	Wld_InsertNpc 	(Meatbug, 				"NW_MAGECAVE_20");
	Wld_InsertNpc 	(Minecrawler, 			"NW_MAGECAVE_23");
	Wld_InsertNpc 	(Minecrawler, 			"NW_MAGECAVE_23");
	Wld_InsertNpc 	(MinecrawlerWarrior, 	"NW_MAGECAVE_27");
	Wld_InsertNpc 	(MinecrawlerWarrior, 	"NW_MAGECAVE_27");



	//----- Schwarzer Troll -----
	Wld_InsertNpc 	(Troll_Black, 			"NW_TROLLAREA_PATH_84");
	Wld_InsertNpc 	(OUT_982_GRIMBALD, 		"TROLL");

	//----- Der Weg -----
	Wld_InsertNpc 	(Gobbo_Green, 			"NW_TROLLAREA_PATH_56");
	Wld_InsertNpc 	(Gobbo_Green, 			"NW_TROLLAREA_PATH_56");
	Wld_InsertNpc 	(YGobbo_Green, 			"NW_TROLLAREA_PATH_56");
	
	//----- Der große See -----
	Wld_InsertNpc 	(Bloodfly, 	"FP_ROAM_TROLLAREA_SEA_01");
	Wld_InsertNpc 	(Bloodfly, 	"FP_ROAM_TROLLAREA_SEA_02");
	Wld_InsertNpc 	(Bloodfly, 	"FP_ROAM_TROLLAREA_SEA_03");
	Wld_InsertNpc 	(Bloodfly, 	"FP_ROAM_TROLLAREA_SEA_04");
	
	//RitualForest
	
	Wld_InsertNpc 	(Giant_Rat, 			"FP_ROAM_RITUALFOREST_CAVE_05");
	Wld_InsertNpc 	(Giant_Rat, 			"FP_ROAM_RITUALFOREST_CAVE_05");

	Wld_InsertNpc 	(MinecrawlerWarrior, 	"FP_ROAM_RITUALFOREST_CAVE_07");
	Wld_InsertNpc 	(Skeleton, 	"FP_ROAM_RITUALFOREST_CAVE_08");
	Wld_InsertNpc 	(Skeleton, 	"FP_ROAM_RITUALFOREST_CAVE_09");
	Wld_InsertNpc 	(MinecrawlerWarrior, 	"FP_ROAM_RITUALFOREST_CAVE_11");
	
	//----- Die Maya Pyramiden ------
	
	Wld_InsertNpc 	(Blattcrawler, 	"FP_ROAM_NW_TROLLAREA_RUINS_01");
	
	Wld_InsertNpc 	(DragonSnapper, 	"FP_ROAM_NW_TROLLAREA_RUINS_05");
	Wld_InsertNpc 	(DragonSnapper, 	"FP_ROAM_NW_TROLLAREA_RUINS_09");
	
	Wld_InsertNpc 	(Panther, 	"FP_ROAM_NW_TROLLAREA_RUINS_14");
	Wld_InsertNpc 	(Panther, 	"FP_ROAM_NW_TROLLAREA_RUINS_15");
	
	Wld_InsertNpc 	(FireWaran, 	"NW_TROLLAREA_RUINS_21");
	Wld_InsertNpc 	(FireWaran, 	"FP_ROAM_NW_TROLLAREA_RUINS_21");
	Wld_InsertNpc 	(Panther, 	"FP_ROAM_NW_TROLLAREA_RUINS_22");
	Wld_InsertNpc 	(Panther, 	"FP_ROAM_NW_TROLLAREA_RUINS_24");
	
	Wld_InsertNpc 	(Blattcrawler, 	"FP_ROAM_NW_TROLLAREA_RUINS_28");
	Wld_InsertNpc 	(Blattcrawler, 	"FP_ROAM_NW_TROLLAREA_RUINS_29");
	Wld_InsertNpc 	(Blattcrawler, 	"FP_ROAM_NW_TROLLAREA_RUINS_30");
	
	Wld_InsertNpc 	(DemonPuma, 	"FP_ROAM_NW_TROLLAREA_RUINS_10");

	
	//in der Maya-Höhle
	
	//Gobbos in Eingangshöhle
	Wld_InsertNpc 	(Gobbo_Black, 	"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_01");
	Wld_InsertNpc 	(Gobbo_Black, 	"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_02");
	Wld_InsertNpc 	(Gobbo_Black, 	"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_03");
	
	//Gobbos in 2. Höhle
	Wld_InsertNpc 	(Gobbo_Black, 	"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_05");
	Wld_InsertNpc 	(Gobbo_Black, 	"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_06");
	Wld_InsertNpc 	(Gobbo_Black, 	"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_07");
	
	//Gobbos in 3. Höhle
	Wld_InsertNpc 	(Gobbo_Elite, 	"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_09");
	Wld_InsertNpc 	(Gobbo_Warrior, 	"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_10");
	Wld_InsertNpc 	(Gobbo_Black, 	"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_11");
	Wld_InsertNpc 	(Gobbo_Black, 	"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_12");
	Wld_InsertNpc 	(Gobbo_Black, 	"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_14");
	
	//MineCrawler 1. Höhle
	Wld_InsertNpc 	(Minecrawler, 			"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_16");
	
	//2. Höhle
	Wld_InsertNpc 	(Minecrawler, 			"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_21");
	Wld_InsertNpc 	(Minecrawler, 			"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_23");
	
	Wld_InsertNpc 	(MinecrawlerWarrior, 	"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_20");
	Wld_InsertNpc 	(MinecrawlerWarrior, 	"FP_ROAM_NW_TROLLAREA_RUINS_CAVE_26");
	
	//Golems		
	Wld_InsertNpc 	(Shattered_Golem, 		"FP_SHATTERED_GOLEM_01");
	Wld_InsertNpc 	(Shattered_Golem, 		"FP_SHATTERED_GOLEM_02");
	Wld_InsertNpc 	(Shattered_Golem, 		"FP_SHATTERED_GOLEM_03");
	Wld_InsertNpc 	(Shattered_Golem, 		"FP_SHATTERED_GOLEM_04");
	
	
				//ADDON
				//ADDON
				//Wld_InsertItem (ItMi_AmbossEffekt_Addon,"FP_ITEM_TROLLAREA_PORTALRITUAL_01");
				
				
				Wld_InsertNpc 	(Gobbo_Skeleton, 		"NW_TROLLAREA_PORTALTEMPEL_15_A");
				Wld_InsertNpc 	(Gobbo_Skeleton, 		"NW_TROLLAREA_PORTALTEMPEL_15_B");
				Wld_InsertNpc 	(Gobbo_Skeleton, 		"NW_TROLLAREA_PORTALTEMPEL_15_B");
				Wld_InsertNpc 	(Gobbo_Skeleton, 		"NW_TROLLAREA_PORTALTEMPEL_17_A");
				
				Wld_InsertNpc 	(Giant_Rat, 		"NW_TROLLAREA_PORTALTEMPEL_12");
				Wld_InsertNpc 	(Giant_Rat, 		"NW_TROLLAREA_PORTALTEMPEL_12");
				Wld_InsertNpc 	(Giant_Rat, 		"NW_TROLLAREA_PORTALTEMPEL_09");
				Wld_InsertNpc 	(Giant_Rat, 		"NW_TROLLAREA_PORTALTEMPEL_08");
				Wld_InsertNpc 	(Giant_Rat, 		"NW_TROLLAREA_PORTALTEMPEL_08");
				Wld_InsertNpc 	(Giant_Rat, 		"NW_TROLLAREA_PORTALTEMPEL_06");
				Wld_InsertNpc 	(Giant_Rat, 		"NW_TROLLAREA_PORTALTEMPEL_06");
				Wld_InsertNpc 	(Giant_Rat, 		"NW_TROLLAREA_PORTALTEMPEL_06");
				
				//Wld_InsertNpc 	(Alligator_PortalDead, 		"NW_TROLLAREA_PORTALTEMPEL_DEADALLIGATOR");
				//B_KillNpc 		(Alligator_PortalDead);
				//Wld_InsertNpc 	(Stoneguardian_Dead1, 		"NW_TROLLAREA_PORTALTEMPEL_08");
				//B_KillNpc 		(Stoneguardian_Dead1); 
				//Wld_InsertNpc 	(Stoneguardian_Dead2, 		"AMBOSS");
				//B_KillNpc 		(Stoneguardian_Dead2); 
				//Wld_InsertNpc 	(Stoneguardian_Dead3, 		"PORTAL");
				//B_KillNpc 		(Stoneguardian_Dead3); 
			 
 				//ADDON
 				//ADDON

	
	//andere
	
	Wld_InsertNpc 	(Hellhound, 		"NW_TROLLAREA_PATH_66_MONSTER");
	Wld_InsertNpc 	(Hellhound, 		"NW_TROLLAREA_PATH_66_MONSTER");

	Wld_InsertNpc 	(Scavenger, 		"NW_TROLLAREA_PLANE_07");
	Wld_InsertNpc 	(Scavenger, 		"NW_TROLLAREA_PLANE_07");


	Wld_InsertNpc 	(Molerat, 		"NW_TROLLAREA_NOVCHASE_01");

	Wld_InsertNpc 	(Bloodfly, 		"NW_TROLLAREA_PATH_38_MONSTER");
	Wld_InsertNpc 	(Bloodfly, 		"NW_TROLLAREA_PATH_38_MONSTER");

	Wld_InsertNpc 	(Scavenger, 		"NW_TROLLAREA_PLANE_04");

	Wld_InsertNpc 	(Scavenger, 		"NW_TROLLAREA_RUINS_17");
	Wld_InsertNpc 	(Scavenger, 		"NW_TROLLAREA_RUINS_17");

	Wld_InsertNpc 	(Gobbo_Black, 		"NW_TROLLAREA_RUINS_14");
	Wld_InsertNpc 	(Gobbo_Black, 		"NW_TROLLAREA_RUINS_14");

	Wld_InsertNpc 	(Waran, 		"NW_TROLLAREA_RUINS_32");
	Wld_InsertNpc 	(Waran, 		"NW_TROLLAREA_RUINS_32");

	Wld_InsertNpc 	(Blattcrawler, 		"NW_TROLLAREA_PATH_71_MONSTER");
	Wld_InsertNpc 	(Blattcrawler, 		"NW_TROLLAREA_PATH_71_MONSTER");

	Wld_InsertNpc 	(Blattcrawler, 		"NW_TROLLAREA_PATH_71_MONSTER2");
	Wld_InsertNpc 	(Blattcrawler, 		"NW_TROLLAREA_PATH_71_MONSTER2");

	Wld_InsertNpc 	(Lurker, 		"NW_TROLLAREA_PATH_72");
	Wld_InsertNpc 	(Lurker, 		"NW_TROLLAREA_PATH_72");

	Wld_InsertNpc 	(Scavenger, 		"NW_TROLLAREA_PATH_15_MONSTER");
	Wld_InsertNpc 	(Scavenger, 		"NW_TROLLAREA_PATH_15_MONSTER");

	Wld_InsertNpc 	(Grimbald_Snapper1, 		"NW_TROLLAREA_BRIGDE_01");
	Wld_InsertNpc 	(Grimbald_Snapper2, 		"NW_TROLLAREA_BRIGDE_01");
	Wld_InsertNpc 	(Grimbald_Snapper3, 		"NW_TROLLAREA_BRIGDE_01");

	Wld_InsertNpc 	(Molerat, 		"NW_TROLLAREA_RITUALFOREST_04_MONSTER");
	Wld_InsertNpc 	(Molerat, 		"NW_TROLLAREA_RITUALFOREST_04_MONSTER");

	Wld_InsertNpc 	(Scavenger, 		"NW_TROLLAREA_RITUALPATH_04");
	Wld_InsertNpc 	(Scavenger, 		"NW_TROLLAREA_RITUALPATH_04");
	Wld_InsertNpc 	(Scavenger, 		"NW_TROLLAREA_RITUALPATH_04");

	Wld_InsertNpc 	(Gobbo_Skeleton, 		"NW_TROLLAREA_RITUAL_13");
	Wld_InsertNpc 	(Gobbo_Skeleton, 		"NW_TROLLAREA_RITUAL_13");

	Wld_InsertNpc 	(Bloodfly, 		"NW_TROLLAREA_RITUALPATH_032");
	Wld_InsertNpc 	(Bloodfly, 		"NW_TROLLAREA_RITUALPATH_032");
	Wld_InsertNpc 	(Bloodfly, 		"NW_TROLLAREA_RITUALPATH_032");

	Wld_InsertNpc 	(Wisp, 		"NW_TROLLAREA_PLANE_01");

	Wld_InsertNpc 	(Scavenger, 		"NW_TROLLAREA_PATH_22_MONSTER");

	Wld_InsertNpc 	(Molerat, 		"NW_TROLLAREA_RITUALFOREST_06_MONSTER");
	Wld_InsertNpc 	(Molerat, 		"NW_TROLLAREA_RITUALFOREST_06_MONSTER");

	Wld_InsertNpc 	(Wisp, 		"NW_TROLLAREA_PATH_08");

	Wld_InsertNpc 	(Giant_Rat, 	"NW_TROLLAREA_BRIGDE_05");
	Wld_InsertNpc 	(Giant_Rat, 	"NW_TROLLAREA_BRIGDE_05");
	
	//TROLLROCKCAVE
	Wld_InsertNpc 	(Skeleton, 	"NW_TROLLAREA_TROLLROCKCAVE_03");
	Wld_InsertNpc 	(Skeleton, 	"NW_TROLLAREA_TROLLROCKCAVE_03");
	
	Wld_InsertNpc 	(Skeleton, 	"NW_TROLLAREA_TROLLROCKCAVE_05");
	
	Wld_InsertNpc 	(Skeleton_Lord, 	"NW_TROLLAREA_TROLLROCKCAVE_07");
	Wld_InsertNpc 	(Skeleton_Lord, 	"NW_TROLLAREA_TROLLROCKCAVE_10");
	
	//TROLLLAKECAVE
	Wld_InsertNpc 	(Meatbug, 				"NW_TROLLAREA_TROLLLAKECAVE_03A");
	Wld_InsertNpc 	(Meatbug, 				"NW_TROLLAREA_TROLLLAKECAVE_03A");
	Wld_InsertNpc 	(Meatbug, 				"NW_TROLLAREA_TROLLLAKECAVE_03A");
	Wld_InsertNpc 	(Meatbug, 				"NW_TROLLAREA_TROLLLAKECAVE_03A");
	
	Wld_InsertNpc 	(Giant_Rat, 	"NW_TROLLAREA_TROLLLAKECAVE_02");
	
	Wld_InsertNpc 	(Gobbo_Warrior, 	"NW_TROLLAREA_TROLLLAKECAVE_08");
	Wld_InsertNpc 	(Gobbo_Black, 	"NW_TROLLAREA_TROLLLAKECAVE_08");
	Wld_InsertNpc 	(Gobbo_Green, 	"NW_TROLLAREA_TROLLLAKECAVE_08");
	
	Wld_InsertNpc 	(Gobbo_Green, 	"NW_TROLLAREA_TROLLLAKECAVE_09");
	
	//RIVERSIDECAVE
	Wld_InsertNpc 	(Shadowbeast, 	"NW_TROLLAREA_RIVERSIDECAVE_02");
	
	Wld_InsertNpc 	(Shadowbeast, 	"NW_TROLLAREA_RIVERSIDECAVE_07");
		
};

	FUNC VOID INIT_SUB_NewWorld_Part_TrollArea_01()
	{
	};

FUNC VOID INIT_NewWorld_Part_TrollArea_01 ()
{
	B_InitMonsterAttitudes (); 
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();
	
	INIT_SUB_NewWorld_Part_TrollArea_01();	
};

// ------ World -------
FUNC VOID STARTUP_NewWorld()
{	
	// ------ StartUps der Unter-Parts ------ 
	STARTUP_NewWorld_Part_City_01();
	STARTUP_NewWorld_Part_Farm_01();
	STARTUP_NewWorld_Part_Xardas_01();
	STARTUP_NewWorld_Part_Monastery_01();
	STARTUP_NewWorld_Part_GreatPeasant_01();
	STARTUP_NewWorld_Part_TrollArea_01();
	STARTUP_NewWorld_Part_Forest_01();
	STARTUP_NewWorld_Part_Pass_To_OW_01();
	// ------ INTRO - muss ganz am Ende der Startup stehen ------
	Kapitel = 1; //Joly: Kann hier stehen bleiben!
	PlayVideo("INTRO.BIK");
	//PlayVideo ("Addon_Title.BIK");
	
	//-----Addon Talent Goldhacken---------
	Hero_HackChance = 10;
};
FUNC VOID INIT_NewWorld()
{
	B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();
	
	B_ENTER_NEWWORLD ();
	
	// ------- Diebesgilde abtöten ------ 
	if (Diebesgilde_Verraten)
	&& (Andre_Diebesgilde_aufgeraeumt != TRUE)
	{
		if (!Npc_IsDead(Cassia))
		|| (!Npc_IsDead(Jesper))
		|| (!Npc_IsDead(Ramirez))
		{
			B_KillNpc(BDT_447_CASSIA);
			B_KillNpc(BDT_446_JESPER);
			B_KillNpc(BDT_445_RAMIREZ);
			Andre_Diebesgilde_aufgeraeumt = TRUE;
		};
	};
	
	// ------ INITS der Unter-Parts ------ 
	INIT_SUB_NewWorld_Part_City_01();
	INIT_SUB_NewWorld_Part_Farm_01();
	INIT_SUB_NewWorld_Part_Xardas_01();
	INIT_SUB_NewWorld_Part_Monastery_01();
	INIT_SUB_NewWorld_Part_GreatPeasant_01();
	INIT_SUB_NewWorld_Part_TrollArea_01();
	INIT_SUB_NewWorld_Part_Forest_01();
	INIT_SUB_NewWorld_Part_Pass_To_OW_01();
	
	if (MIS_ReadyForChapter3  == TRUE )	//Joly: muß hier in der INIT ganz zum schluss stehen, nachdem alle NSCs fürs Kapitel insertet wurden!!!
	&& (B_Chapter3_OneTime == FALSE)
	{
		B_Kapitelwechsel (3,NEWWORLD_ZEN);
		B_Chapter3_OneTime = TRUE;
	};

	if (MIS_AllDragonsDead  == TRUE )	//Joly: muß hier in der INIT ganz zum schluss stehen, nachdem alle NSCs fürs Kapitel insertet wurden!!!
	&& (B_Chapter5_OneTime == FALSE)
	{
		B_Kapitelwechsel (5, NEWWORLD_ZEN);
		B_Chapter5_OneTime = TRUE;
	};
};







	////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////
		// *************
		// ABANDONED MINE
		// *************
	////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////


func void STARTUP_AbandonedMine()
{
	PlayerPassedAbandonedMine = TRUE;

		Wld_InsertNpc(Minecrawler,"AM_022");
		Wld_InsertNpc(Minecrawler,"AM_023");
		Wld_InsertNpc(Minecrawler,"AM_024");

		Wld_InsertNpc(Minecrawler,"AM_048");
		Wld_InsertNpc(Minecrawler,"AM_050");
		Wld_InsertNpc(Minecrawler,"AM_051");

	Wld_InsertNpc(Meatbug,"FP_ROAM_MEATBUG_AM_00_01");
	Wld_InsertNpc(Meatbug,"FP_ROAM_MEATBUG_AM_01_01");
	Wld_InsertNpc(Meatbug,"FP_ROAM_MEATBUG_AM_02_01");
	Wld_InsertNpc(Meatbug,"FP_ROAM_MEATBUG_AM_03_01");
	Wld_InsertNpc(Meatbug,"FP_ROAM_MEATBUG_AM_03_04");
	Wld_InsertNpc(Meatbug,"FP_ROAM_MEATBUG_AM_04_01");
	Wld_InsertNpc(Meatbug,"FP_ROAM_MEATBUG_AM_05_01");
	Wld_InsertNpc(Meatbug,"FP_ROAM_MEATBUG_AM_05_04");
	Wld_InsertNpc(Meatbug,"FP_ROAM_MEATBUG_AM_06_01");
	Wld_InsertNpc(Meatbug,"FP_ROAM_MEATBUG_AM_06_03");

	Wld_InsertItem(ItMi_Nugget,"FP_AM_ITEM_04");
	Wld_InsertItem(ItAt_CrawlerPlate,"FP_AM_ITEM_05");
	Wld_InsertItem(ItAt_CrawlerMandibles,"FP_AM_ITEM_06");
};

func void INIT_SUB_AbandonedMine()
{
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_01",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_02",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_03",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_04",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_05",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_06",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_07",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_08",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_09",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_10",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_11",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_12",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_13",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_14",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_15",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_16",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_17",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_18",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_19",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_20",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_21",1);
	Wld_SetObjectRoutine(0,0,"AM_FIREPLACE_HIGH_22",1);
};

func void INIT_AbandonedMine()
{
	INIT_SUB_AbandonedMine();
	B_Enter_AbandonedMine();
};



	////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////
		// *************
		// FREE MINE
		// *************
	////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////
FUNC VOID STARTUP_FREEMINE ()	
{
	//-------- globale Story-Variable --------
	EnteredFreeMine = TRUE;

	//--------------------Minecrawler-------------------------
	Wld_InsertNpc				(MinecrawlerWarrior		, "FP_ROAM_CRAWLER_01");//
	Wld_InsertNpc				(MinecrawlerWarrior		, "FP_ROAM_CRAWLER_04");//
	Wld_InsertNpc				(MinecrawlerWarrior		, "FP_ROAM_CRAWLER_05");//
	Wld_InsertNpc				(MinecrawlerWarrior		, "FP_ROAM_CRAWLER_06");//
	Wld_InsertNpc				(MinecrawlerWarrior		, "FP_ROAM_CRAWLER_09");//
	Wld_InsertNpc				(MinecrawlerWarrior		, "FP_ROAM_CRAWLER_14");//
	Wld_InsertNpc				(MinecrawlerWarrior		, "FP_ROAM_CRAWLER_17");//
	Wld_InsertNpc				(MinecrawlerWarrior		, "FP_ROAM_CRAWLER_29");//
	Wld_InsertNpc				(MinecrawlerWarrior		, "FP_ROAM_CRAWLER_28");//
	Wld_InsertNpc				(MinecrawlerWarrior		, "FP_ROAM_CRAWLER_32");//
	Wld_InsertNpc				(MinecrawlerWarrior		, "FP_ROAM_CRAWLER_34");//
};

FUNC VOID INIT_FREEMINE ()	
{
	//-------------------Fackeln-----------------------------
	Wld_SetMobRoutine			(00,00, "FIREPLACE", 1);

	//-------- Attitüden initialisieren --------
    B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
};



	////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////
		// *************
		// ORC GRAVEYARD
		// *************
	////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////
FUNC VOID STARTUP_ORCGRAVEYARD ()
{
	//-------- globale Story-Variable --------
	EnteredOrcGraveyard = TRUE;

	//-------- 1. Höhle --------
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_006");
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_015");
	Wld_InsertNpc		(Skeleton_Templar,		"GRYD_016");

	//-------- 2. Höhle --------
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_019B");
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_019D");
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_020B");
	Wld_InsertNpc		(Skeleton_Templar,		"GRYD_020");
	
	//-------- 3. Höhle --------
	Wld_InsertNpc		(Skeleton_Templar,		"GRYD_025");
	Wld_InsertNpc		(Skeleton_Templar,		"GRYD_025");
	Wld_InsertNpc		(Skeleton_Templar,		"GRYD_025");
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_048");
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_048");
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_043");

	//-------- 1. Nebenstollen --------
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_031");
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_032");
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_037");
	Wld_InsertNpc		(OrcElite_Roam,			"GRYD_039");
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_040");
	Wld_InsertNpc		(OrcElite_Roam,			"GRYD_042");

	//-------- 2. Nebenstollen --------
	Wld_InsertNpc		(OrcElite_Roam,			"GRYD_047");
	Wld_InsertNpc		(OrcElite_Roam,			"GRYD_047");

	//-------- Große Halle --------
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_061");
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_062");
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_058");
	Wld_InsertNpc		(OrcWarrior_Roam,		"GRYD_068");
	Wld_InsertNpc		(OrcElite_Roam,			"GRYD_055");
};

FUNC VOID INIT_ORCGRAVEYARD ()
{
	Wld_SetMobRoutine 	(00,00, "FIREPLACE", 1);

	//-------- Attitüden initialisieren --------
    B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
};