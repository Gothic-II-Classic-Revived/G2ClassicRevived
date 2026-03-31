PROTOTYPE Default_AmbientDementor (C_NPC)			
{
	// ------ NSC ------
	name 		= NAME_Dementor;	
	guild 		= GIL_DMT;
	voice 		= 19;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 100);	
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 6);	
														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	
	// ------ Equippte Waffen ------																

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_MadPsi, BodyTex_N, ITAR_Dementor);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	aivar[AIV_MM_FollowTime] = NPC_TIME_FOLLOW;
	aivar[AIV_FightDistCancel] = FIGHT_DIST_CANCEL;
	aivar[AIV_MagicUser] = MAGIC_ALWAYS;

	bodyStateInterruptableOverride = TRUE; 
};

// *******************************************************
// DMT_DementorAmbient
// *******************************************************

instance DMT_DementorAmbient (Default_AmbientDementor)	//Joly: greift auf Sicht an (alle NSCs), VORSICHT, nur bedacht in bewohnte Gebiete setzten.
{
	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};


// *******************************************************
// DMT_DementorAmbientSpeaker
// *******************************************************

instance DMT_DementorAmbientSpeaker (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};

// *******************************************************
// DMT_DementorAmbientWalker
// *******************************************************

instance DMT_DementorAmbientWalker1 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	// ------ NSC ------
	id 			= 1221;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1221;
};

FUNC VOID Rtn_Start_1221 ()
{	
	TA_Stand_Dementor	(06,00,07,00,"NW_XARDAS_TOWER_VIEW_03");
	TA_Stand_Dementor	(07,00,08,00,"NW_FARM1_CITYWALL_05");
	TA_Stand_Dementor	(08,00,09,00,"NW_XARDAS_TOWER_VIEW_03");
	TA_Stand_Dementor	(09,00,10,00,"NW_FARM1_CITYWALL_05");
	
	TA_Stand_Dementor	(10,00,11,00,"NW_XARDAS_TOWER_VIEW_03");
	TA_Stand_Dementor	(11,00,12,00,"NW_FARM1_CITYWALL_05");
	TA_Stand_Dementor	(12,00,13,00,"NW_XARDAS_TOWER_VIEW_03");
	TA_Stand_Dementor	(13,00,14,00,"NW_FARM1_CITYWALL_05");
	
	TA_Stand_Dementor	(14,00,15,00,"NW_XARDAS_TOWER_VIEW_03");
	TA_Stand_Dementor	(15,00,16,00,"NW_FARM1_CITYWALL_05");
	TA_Stand_Dementor	(16,00,17,00,"NW_XARDAS_TOWER_VIEW_03");
	TA_Stand_Dementor	(17,00,18,00,"NW_FARM1_CITYWALL_05");
	
	TA_Stand_Dementor	(18,00,19,00,"NW_XARDAS_TOWER_VIEW_03");
	TA_Stand_Dementor	(19,00,20,00,"NW_FARM1_CITYWALL_05");
	TA_Stand_Dementor	(20,00,21,00,"NW_XARDAS_TOWER_VIEW_03");
	TA_Stand_Dementor	(21,00,22,00,"NW_FARM1_CITYWALL_05");
	
	TA_Stand_Dementor	(22,00,23,00,"NW_XARDAS_TOWER_VIEW_03");
	TA_Stand_Dementor	(23,00,00,00,"NW_FARM1_CITYWALL_05");
	TA_Stand_Dementor	(00,00,01,00,"NW_XARDAS_TOWER_VIEW_03");
	TA_Stand_Dementor	(01,00,02,00,"NW_FARM1_CITYWALL_05");
	
	TA_Stand_Dementor	(02,00,03,00,"NW_XARDAS_TOWER_VIEW_03");
	TA_Stand_Dementor	(03,00,04,00,"NW_FARM1_CITYWALL_05");
	TA_Stand_Dementor	(04,00,05,00,"NW_XARDAS_TOWER_VIEW_03");
	TA_Stand_Dementor	(05,00,06,00,"NW_FARM1_CITYWALL_05");
};

instance DMT_DementorAmbientWalker2 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	// ------ NSC ------
	id 			= 1222;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1222;
};

FUNC VOID Rtn_Start_1222 ()
{	
	TA_Stand_Dementor	(06,00,07,00,"NW_XARDAS_TOWER_SECRET_CAVE_04");
	TA_Stand_Dementor	(07,00,08,00,"NW_XARDAS_VALLEY_03");
	TA_Stand_Dementor	(08,00,09,00,"NW_XARDAS_TOWER_SECRET_CAVE_04");
	TA_Stand_Dementor	(09,00,10,00,"NW_XARDAS_VALLEY_03");
	
	TA_Stand_Dementor	(10,00,11,00,"NW_XARDAS_TOWER_SECRET_CAVE_04");
	TA_Stand_Dementor	(11,00,12,00,"NW_XARDAS_VALLEY_03");
	TA_Stand_Dementor	(12,00,13,00,"NW_XARDAS_TOWER_SECRET_CAVE_04");
	TA_Stand_Dementor	(13,00,14,00,"NW_XARDAS_VALLEY_03");
	
	TA_Stand_Dementor	(14,00,15,00,"NW_XARDAS_TOWER_SECRET_CAVE_04");
	TA_Stand_Dementor	(15,00,16,00,"NW_XARDAS_VALLEY_03");
	TA_Stand_Dementor	(16,00,17,00,"NW_XARDAS_TOWER_SECRET_CAVE_04");
	TA_Stand_Dementor	(17,00,18,00,"NW_XARDAS_VALLEY_03");
	
	TA_Stand_Dementor	(18,00,19,00,"NW_XARDAS_TOWER_SECRET_CAVE_04");
	TA_Stand_Dementor	(19,00,20,00,"NW_XARDAS_VALLEY_03");
	TA_Stand_Dementor	(20,00,21,00,"NW_XARDAS_TOWER_SECRET_CAVE_04");
	TA_Stand_Dementor	(21,00,22,00,"NW_XARDAS_VALLEY_03");
	
	TA_Stand_Dementor	(22,00,23,00,"NW_XARDAS_TOWER_SECRET_CAVE_04");
	TA_Stand_Dementor	(23,00,00,00,"NW_XARDAS_VALLEY_03");
	TA_Stand_Dementor	(00,00,01,00,"NW_XARDAS_TOWER_SECRET_CAVE_04");
	TA_Stand_Dementor	(01,00,02,00,"NW_XARDAS_VALLEY_03");
	
	TA_Stand_Dementor	(02,00,03,00,"NW_XARDAS_TOWER_SECRET_CAVE_04");
	TA_Stand_Dementor	(03,00,04,00,"NW_XARDAS_VALLEY_03");
	TA_Stand_Dementor	(04,00,05,00,"NW_XARDAS_TOWER_SECRET_CAVE_04");
	TA_Stand_Dementor	(05,00,06,00,"NW_XARDAS_VALLEY_03");
};

instance DMT_DementorAmbientWalker3 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	// ------ NSC ------
	id 			= 1223;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1223;
};

FUNC VOID Rtn_Start_1223 ()
{	
	TA_Stand_Dementor	(06,00,07,00,"NW_FARM3_PATH_12_MONSTER_03");
	TA_Stand_Dementor	(07,00,08,00,"NW_CITY_TO_FARM2_10");
	TA_Stand_Dementor	(08,00,09,00,"NW_FARM3_PATH_12_MONSTER_03");
	TA_Stand_Dementor	(09,00,10,00,"NW_CITY_TO_FARM2_10");
	
	TA_Stand_Dementor	(10,00,11,00,"NW_FARM3_PATH_12_MONSTER_03");
	TA_Stand_Dementor	(11,00,12,00,"NW_CITY_TO_FARM2_10");
	TA_Stand_Dementor	(12,00,13,00,"NW_FARM3_PATH_12_MONSTER_03");
	TA_Stand_Dementor	(13,00,14,00,"NW_CITY_TO_FARM2_10");
	
	TA_Stand_Dementor	(14,00,15,00,"NW_FARM3_PATH_12_MONSTER_03");
	TA_Stand_Dementor	(15,00,16,00,"NW_CITY_TO_FARM2_10");
	TA_Stand_Dementor	(16,00,17,00,"NW_FARM3_PATH_12_MONSTER_03");
	TA_Stand_Dementor	(17,00,18,00,"NW_CITY_TO_FARM2_10");
	
	TA_Stand_Dementor	(18,00,19,00,"NW_FARM3_PATH_12_MONSTER_03");
	TA_Stand_Dementor	(19,00,20,00,"NW_CITY_TO_FARM2_10");
	TA_Stand_Dementor	(20,00,21,00,"NW_FARM3_PATH_12_MONSTER_03");
	TA_Stand_Dementor	(21,00,22,00,"NW_CITY_TO_FARM2_10");
	
	TA_Stand_Dementor	(22,00,23,00,"NW_FARM3_PATH_12_MONSTER_03");
	TA_Stand_Dementor	(23,00,00,00,"NW_CITY_TO_FARM2_10");
	TA_Stand_Dementor	(00,00,01,00,"NW_FARM3_PATH_12_MONSTER_03");
	TA_Stand_Dementor	(01,00,02,00,"NW_CITY_TO_FARM2_10");
	
	TA_Stand_Dementor	(02,00,03,00,"NW_FARM3_PATH_12_MONSTER_03");
	TA_Stand_Dementor	(03,00,04,00,"NW_CITY_TO_FARM2_10");
	TA_Stand_Dementor	(04,00,05,00,"NW_FARM3_PATH_12_MONSTER_03");
	TA_Stand_Dementor	(05,00,06,00,"NW_CITY_TO_FARM2_10");
};

instance DMT_DementorAmbientWalker4 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	// ------ NSC ------
	id 			= 1224;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1224;
};

FUNC VOID Rtn_Start_1224 ()
{	
	TA_Stand_Dementor	(06,00,07,00,"NW_BIGMILL_PATH_05");
	TA_Stand_Dementor	(07,00,08,00,"NW_TAVERNE_BIGFARM_05");
	TA_Stand_Dementor	(08,00,09,00,"NW_BIGMILL_PATH_05");
	TA_Stand_Dementor	(09,00,10,00,"NW_TAVERNE_BIGFARM_05");
	
	TA_Stand_Dementor	(10,00,11,00,"NW_BIGMILL_PATH_05");
	TA_Stand_Dementor	(11,00,12,00,"NW_TAVERNE_BIGFARM_05");
	TA_Stand_Dementor	(12,00,13,00,"NW_BIGMILL_PATH_05");
	TA_Stand_Dementor	(13,00,14,00,"NW_TAVERNE_BIGFARM_05");
	
	TA_Stand_Dementor	(14,00,15,00,"NW_BIGMILL_PATH_05");
	TA_Stand_Dementor	(15,00,16,00,"NW_TAVERNE_BIGFARM_05");
	TA_Stand_Dementor	(16,00,17,00,"NW_BIGMILL_PATH_05");
	TA_Stand_Dementor	(17,00,18,00,"NW_TAVERNE_BIGFARM_05");
	
	TA_Stand_Dementor	(18,00,19,00,"NW_BIGMILL_PATH_05");
	TA_Stand_Dementor	(19,00,20,00,"NW_TAVERNE_BIGFARM_05");
	TA_Stand_Dementor	(20,00,21,00,"NW_BIGMILL_PATH_05");
	TA_Stand_Dementor	(21,00,22,00,"NW_TAVERNE_BIGFARM_05");
	
	TA_Stand_Dementor	(22,00,23,00,"NW_BIGMILL_PATH_05");
	TA_Stand_Dementor	(23,00,00,00,"NW_TAVERNE_BIGFARM_05");
	TA_Stand_Dementor	(00,00,01,00,"NW_BIGMILL_PATH_05");
	TA_Stand_Dementor	(01,00,02,00,"NW_TAVERNE_BIGFARM_05");
	
	TA_Stand_Dementor	(02,00,03,00,"NW_BIGMILL_PATH_05");
	TA_Stand_Dementor	(03,00,04,00,"NW_TAVERNE_BIGFARM_05");
	TA_Stand_Dementor	(04,00,05,00,"NW_BIGMILL_PATH_05");
	TA_Stand_Dementor	(05,00,06,00,"NW_TAVERNE_BIGFARM_05");
};

instance DMT_DementorAmbientWalker5 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	// ------ NSC ------
	id 			= 1225;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1225;
};

FUNC VOID Rtn_Start_1225 ()
{	
	TA_Stand_Dementor	(06,00,07,00,"NW_FARM3_BIGWOOD_04");
	TA_Stand_Dementor	(07,00,08,00,"NW_BIGMILL_FARM3_03");
	TA_Stand_Dementor	(08,00,09,00,"NW_FARM3_BIGWOOD_04");
	TA_Stand_Dementor	(09,00,10,00,"NW_BIGMILL_FARM3_03");
	
	TA_Stand_Dementor	(10,00,11,00,"NW_FARM3_BIGWOOD_04");
	TA_Stand_Dementor	(11,00,12,00,"NW_BIGMILL_FARM3_03");
	TA_Stand_Dementor	(12,00,13,00,"NW_FARM3_BIGWOOD_04");
	TA_Stand_Dementor	(13,00,14,00,"NW_BIGMILL_FARM3_03");
	
	TA_Stand_Dementor	(14,00,15,00,"NW_FARM3_BIGWOOD_04");
	TA_Stand_Dementor	(15,00,16,00,"NW_BIGMILL_FARM3_03");
	TA_Stand_Dementor	(16,00,17,00,"NW_FARM3_BIGWOOD_04");
	TA_Stand_Dementor	(17,00,18,00,"NW_BIGMILL_FARM3_03");
	
	TA_Stand_Dementor	(18,00,19,00,"NW_FARM3_BIGWOOD_04");
	TA_Stand_Dementor	(19,00,20,00,"NW_BIGMILL_FARM3_03");
	TA_Stand_Dementor	(20,00,21,00,"NW_FARM3_BIGWOOD_04");
	TA_Stand_Dementor	(21,00,22,00,"NW_BIGMILL_FARM3_03");
	
	TA_Stand_Dementor	(22,00,23,00,"NW_FARM3_BIGWOOD_04");
	TA_Stand_Dementor	(23,00,00,00,"NW_BIGMILL_FARM3_03");
	TA_Stand_Dementor	(00,00,01,00,"NW_FARM3_BIGWOOD_04");
	TA_Stand_Dementor	(01,00,02,00,"NW_BIGMILL_FARM3_03");
	
	TA_Stand_Dementor	(02,00,03,00,"NW_FARM3_BIGWOOD_04");
	TA_Stand_Dementor	(03,00,04,00,"NW_BIGMILL_FARM3_03");
	TA_Stand_Dementor	(04,00,05,00,"NW_FARM3_BIGWOOD_04");
	TA_Stand_Dementor	(05,00,06,00,"NW_BIGMILL_FARM3_03");
};

instance DMT_DementorAmbientWalker6 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	// ------ NSC ------
	id 			= 1226;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1226;
};

FUNC VOID Rtn_Start_1226 ()
{	
	TA_Stand_Dementor	(06,00,07,00,"NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(07,00,08,00,"NW_BIGMILL_PATH_06");
	TA_Stand_Dementor	(08,00,09,00,"NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(09,00,10,00,"NW_BIGMILL_PATH_06");
	
	TA_Stand_Dementor	(10,00,11,00,"NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(11,00,12,00,"NW_BIGMILL_PATH_06");
	TA_Stand_Dementor	(12,00,13,00,"NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(13,00,14,00,"NW_BIGMILL_PATH_06");
	
	TA_Stand_Dementor	(14,00,15,00,"NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(15,00,16,00,"NW_BIGMILL_PATH_06");
	TA_Stand_Dementor	(16,00,17,00,"NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(17,00,18,00,"NW_BIGMILL_PATH_06");
	
	TA_Stand_Dementor	(18,00,19,00,"NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(19,00,20,00,"NW_BIGMILL_PATH_06");
	TA_Stand_Dementor	(20,00,21,00,"NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(21,00,22,00,"NW_BIGMILL_PATH_06");
	
	TA_Stand_Dementor	(22,00,23,00,"NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(23,00,00,00,"NW_BIGMILL_PATH_06");
	TA_Stand_Dementor	(00,00,01,00,"NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(01,00,02,00,"NW_BIGMILL_PATH_06");
	
	TA_Stand_Dementor	(02,00,03,00,"NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(03,00,04,00,"NW_BIGMILL_PATH_06");
	TA_Stand_Dementor	(04,00,05,00,"NW_PATH_TO_MONASTERY_07");
	TA_Stand_Dementor	(05,00,06,00,"NW_BIGMILL_PATH_06");
};

instance DMT_DementorAmbientWalker7 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	// ------ NSC ------
	id 			= 1227;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1227;
};

FUNC VOID Rtn_Start_1227 ()
{	
	TA_Stand_Dementor	(06,00,07,00,"NW_TROLLAREA_PATH_62");
	TA_Stand_Dementor	(07,00,08,00,"NW_TROLLAREA_RIVERSIDE_10");
	TA_Stand_Dementor	(08,00,09,00,"NW_TROLLAREA_PATH_62");
	TA_Stand_Dementor	(09,00,10,00,"NW_TROLLAREA_RIVERSIDE_10");
	
	TA_Stand_Dementor	(10,00,11,00,"NW_TROLLAREA_PATH_62");
	TA_Stand_Dementor	(11,00,12,00,"NW_TROLLAREA_RIVERSIDE_10");
	TA_Stand_Dementor	(12,00,13,00,"NW_TROLLAREA_PATH_62");
	TA_Stand_Dementor	(13,00,14,00,"NW_TROLLAREA_RIVERSIDE_10");
	
	TA_Stand_Dementor	(14,00,15,00,"NW_TROLLAREA_PATH_62");
	TA_Stand_Dementor	(15,00,16,00,"NW_TROLLAREA_RIVERSIDE_10");
	TA_Stand_Dementor	(16,00,17,00,"NW_TROLLAREA_PATH_62");
	TA_Stand_Dementor	(17,00,18,00,"NW_TROLLAREA_RIVERSIDE_10");
	
	TA_Stand_Dementor	(18,00,19,00,"NW_TROLLAREA_PATH_62");
	TA_Stand_Dementor	(19,00,20,00,"NW_TROLLAREA_RIVERSIDE_10");
	TA_Stand_Dementor	(20,00,21,00,"NW_TROLLAREA_PATH_62");
	TA_Stand_Dementor	(21,00,22,00,"NW_TROLLAREA_RIVERSIDE_10");
	
	TA_Stand_Dementor	(22,00,23,00,"NW_TROLLAREA_PATH_62");
	TA_Stand_Dementor	(23,00,00,00,"NW_TROLLAREA_RIVERSIDE_10");
	TA_Stand_Dementor	(00,00,01,00,"NW_TROLLAREA_PATH_62");
	TA_Stand_Dementor	(01,00,02,00,"NW_TROLLAREA_RIVERSIDE_10");
	
	TA_Stand_Dementor	(02,00,03,00,"NW_TROLLAREA_PATH_62");
	TA_Stand_Dementor	(03,00,04,00,"NW_TROLLAREA_RIVERSIDE_10");
	TA_Stand_Dementor	(04,00,05,00,"NW_TROLLAREA_PATH_62");
	TA_Stand_Dementor	(05,00,06,00,"NW_TROLLAREA_RIVERSIDE_10");
};

instance DMT_DementorAmbientWalker8 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	// ------ NSC ------
	id 			= 1228;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1228;
};

FUNC VOID Rtn_Start_1228 ()
{	
	TA_Stand_Dementor	(06,00,07,00,"NW_TROLLAREA_PATH_49");
	TA_Stand_Dementor	(07,00,08,00,"NW_TROLLAREA_PLANE_08");
	TA_Stand_Dementor	(08,00,09,00,"NW_TROLLAREA_PATH_49");
	TA_Stand_Dementor	(09,00,10,00,"NW_TROLLAREA_PLANE_08");
	
	TA_Stand_Dementor	(10,00,11,00,"NW_TROLLAREA_PATH_49");
	TA_Stand_Dementor	(11,00,12,00,"NW_TROLLAREA_PLANE_08");
	TA_Stand_Dementor	(12,00,13,00,"NW_TROLLAREA_PATH_49");
	TA_Stand_Dementor	(13,00,14,00,"NW_TROLLAREA_PLANE_08");
	
	TA_Stand_Dementor	(14,00,15,00,"NW_TROLLAREA_PATH_49");
	TA_Stand_Dementor	(15,00,16,00,"NW_TROLLAREA_PLANE_08");
	TA_Stand_Dementor	(16,00,17,00,"NW_TROLLAREA_PATH_49");
	TA_Stand_Dementor	(17,00,18,00,"NW_TROLLAREA_PLANE_08");
	
	TA_Stand_Dementor	(18,00,19,00,"NW_TROLLAREA_PATH_49");
	TA_Stand_Dementor	(19,00,20,00,"NW_TROLLAREA_PLANE_08");
	TA_Stand_Dementor	(20,00,21,00,"NW_TROLLAREA_PATH_49");
	TA_Stand_Dementor	(21,00,22,00,"NW_TROLLAREA_PLANE_08");
	
	TA_Stand_Dementor	(22,00,23,00,"NW_TROLLAREA_PATH_49");
	TA_Stand_Dementor	(23,00,00,00,"NW_TROLLAREA_PLANE_08");
	TA_Stand_Dementor	(00,00,01,00,"NW_TROLLAREA_PATH_49");
	TA_Stand_Dementor	(01,00,02,00,"NW_TROLLAREA_PLANE_08");
	
	TA_Stand_Dementor	(02,00,03,00,"NW_TROLLAREA_PATH_49");
	TA_Stand_Dementor	(03,00,04,00,"NW_TROLLAREA_PLANE_08");
	TA_Stand_Dementor	(04,00,05,00,"NW_TROLLAREA_PATH_49");
	TA_Stand_Dementor	(05,00,06,00,"NW_TROLLAREA_PLANE_08");
};

instance DMT_DementorAmbientWalker9 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	// ------ NSC ------
	id 			= 1229;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1229;
};

FUNC VOID Rtn_Start_1229 ()
{	
	TA_Stand_Dementor	(06,00,07,00,"NW_TROLLAREA_PATH_31");
	TA_Stand_Dementor	(07,00,08,00,"BIGCROSS");
	TA_Stand_Dementor	(08,00,09,00,"NW_TROLLAREA_PATH_31");
	TA_Stand_Dementor	(09,00,10,00,"BIGCROSS");
	
	TA_Stand_Dementor	(10,00,11,00,"NW_TROLLAREA_PATH_31");
	TA_Stand_Dementor	(11,00,12,00,"BIGCROSS");
	TA_Stand_Dementor	(12,00,13,00,"NW_TROLLAREA_PATH_31");
	TA_Stand_Dementor	(13,00,14,00,"BIGCROSS");
	
	TA_Stand_Dementor	(14,00,15,00,"NW_TROLLAREA_PATH_31");
	TA_Stand_Dementor	(15,00,16,00,"BIGCROSS");
	TA_Stand_Dementor	(16,00,17,00,"NW_TROLLAREA_PATH_31");
	TA_Stand_Dementor	(17,00,18,00,"BIGCROSS");
	
	TA_Stand_Dementor	(18,00,19,00,"NW_TROLLAREA_PATH_31");
	TA_Stand_Dementor	(19,00,20,00,"BIGCROSS");
	TA_Stand_Dementor	(20,00,21,00,"NW_TROLLAREA_PATH_31");
	TA_Stand_Dementor	(21,00,22,00,"BIGCROSS");
	
	TA_Stand_Dementor	(22,00,23,00,"NW_TROLLAREA_PATH_31");
	TA_Stand_Dementor	(23,00,00,00,"BIGCROSS");
	TA_Stand_Dementor	(00,00,01,00,"NW_TROLLAREA_PATH_31");
	TA_Stand_Dementor	(01,00,02,00,"BIGCROSS");
	
	TA_Stand_Dementor	(02,00,03,00,"NW_TROLLAREA_PATH_31");
	TA_Stand_Dementor	(03,00,04,00,"BIGCROSS");
	TA_Stand_Dementor	(04,00,05,00,"NW_TROLLAREA_PATH_31");
	TA_Stand_Dementor	(05,00,06,00,"BIGCROSS");
};

instance DMT_DementorAmbientWalker10 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	// ------ NSC ------
	id 			= 1230;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1230;
};

FUNC VOID Rtn_Start_1230 ()
{	
	TA_Stand_Dementor	(06,00,07,00,"NW_TROLLAREA_PATH_42");
	TA_Stand_Dementor	(07,00,08,00,"NW_TROLLAREA_RITUALFOREST_17");
	TA_Stand_Dementor	(08,00,09,00,"NW_TROLLAREA_PATH_42");
	TA_Stand_Dementor	(09,00,10,00,"NW_TROLLAREA_RITUALFOREST_17");
	
	TA_Stand_Dementor	(10,00,11,00,"NW_TROLLAREA_PATH_42");
	TA_Stand_Dementor	(11,00,12,00,"NW_TROLLAREA_RITUALFOREST_17");
	TA_Stand_Dementor	(12,00,13,00,"NW_TROLLAREA_PATH_42");
	TA_Stand_Dementor	(13,00,14,00,"NW_TROLLAREA_RITUALFOREST_17");
	
	TA_Stand_Dementor	(14,00,15,00,"NW_TROLLAREA_PATH_42");
	TA_Stand_Dementor	(15,00,16,00,"NW_TROLLAREA_RITUALFOREST_17");
	TA_Stand_Dementor	(16,00,17,00,"NW_TROLLAREA_PATH_42");
	TA_Stand_Dementor	(17,00,18,00,"NW_TROLLAREA_RITUALFOREST_17");
	
	TA_Stand_Dementor	(18,00,19,00,"NW_TROLLAREA_PATH_42");
	TA_Stand_Dementor	(19,00,20,00,"NW_TROLLAREA_RITUALFOREST_17");
	TA_Stand_Dementor	(20,00,21,00,"NW_TROLLAREA_PATH_42");
	TA_Stand_Dementor	(21,00,22,00,"NW_TROLLAREA_RITUALFOREST_17");
	
	TA_Stand_Dementor	(22,00,23,00,"NW_TROLLAREA_PATH_42");
	TA_Stand_Dementor	(23,00,00,00,"NW_TROLLAREA_RITUALFOREST_17");
	TA_Stand_Dementor	(00,00,01,00,"NW_TROLLAREA_PATH_42");
	TA_Stand_Dementor	(01,00,02,00,"NW_TROLLAREA_RITUALFOREST_17");
	
	TA_Stand_Dementor	(02,00,03,00,"NW_TROLLAREA_PATH_42");
	TA_Stand_Dementor	(03,00,04,00,"NW_TROLLAREA_RITUALFOREST_17");
	TA_Stand_Dementor	(04,00,05,00,"NW_TROLLAREA_PATH_42");
	TA_Stand_Dementor	(05,00,06,00,"NW_TROLLAREA_RITUALFOREST_17");
};

instance DMT_DementorAmbientWalker11 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	// ------ NSC ------
	id 			= 1231;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1231;
};

FUNC VOID Rtn_Start_1231 ()
{	
	TA_Stand_Dementor	(06,00,07,00,"NW_CITY_TO_FARM2_05");
	TA_Stand_Dementor	(07,00,08,00,"NW_FOREST_PATH_79");
	TA_Stand_Dementor	(08,00,09,00,"NW_CITY_TO_FARM2_05");
	TA_Stand_Dementor	(09,00,10,00,"NW_FOREST_PATH_79");
	
	TA_Stand_Dementor	(10,00,11,00,"NW_CITY_TO_FARM2_05");
	TA_Stand_Dementor	(11,00,12,00,"NW_FOREST_PATH_79");
	TA_Stand_Dementor	(12,00,13,00,"NW_CITY_TO_FARM2_05");
	TA_Stand_Dementor	(13,00,14,00,"NW_FOREST_PATH_79");
	
	TA_Stand_Dementor	(14,00,15,00,"NW_CITY_TO_FARM2_05");
	TA_Stand_Dementor	(15,00,16,00,"NW_FOREST_PATH_79");
	TA_Stand_Dementor	(16,00,17,00,"NW_CITY_TO_FARM2_05");
	TA_Stand_Dementor	(17,00,18,00,"NW_FOREST_PATH_79");
	
	TA_Stand_Dementor	(18,00,19,00,"NW_CITY_TO_FARM2_05");
	TA_Stand_Dementor	(19,00,20,00,"NW_FOREST_PATH_79");
	TA_Stand_Dementor	(20,00,21,00,"NW_CITY_TO_FARM2_05");
	TA_Stand_Dementor	(21,00,22,00,"NW_FOREST_PATH_79");
	
	TA_Stand_Dementor	(22,00,23,00,"NW_CITY_TO_FARM2_05");
	TA_Stand_Dementor	(23,00,00,00,"NW_FOREST_PATH_79");
	TA_Stand_Dementor	(00,00,01,00,"NW_CITY_TO_FARM2_05");
	TA_Stand_Dementor	(01,00,02,00,"NW_FOREST_PATH_79");
	
	TA_Stand_Dementor	(02,00,03,00,"NW_CITY_TO_FARM2_05");
	TA_Stand_Dementor	(03,00,04,00,"NW_FOREST_PATH_79");
	TA_Stand_Dementor	(04,00,05,00,"NW_CITY_TO_FARM2_05");
	TA_Stand_Dementor	(05,00,06,00,"NW_FOREST_PATH_79");
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Story  DementorAmbients
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// *******************************************************
// DMT_DementorSpeakerVino
// *******************************************************

instance DMT_DementorSpeakerVino1 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	id 			= 1232;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};

instance DMT_DementorSpeakerVino2 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	id 			= 1233;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};

instance DMT_DementorSpeakerVino3 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	id 			= 1234;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};

instance DMT_DementorSpeakerVino4 (Default_AmbientDementor) //Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	id 			= 1235;
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};


// *******************************************************
// DMT_DementorAmbientSekob
// *******************************************************

instance DMT_DementorAmbientSekob1 (Default_AmbientDementor)	//Joly: greift auf Sicht an (alle NSCs), VORSICHT, nur bedacht in bewohnte Gebiete setzten.
{
	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};

instance DMT_DementorAmbientSekob2 (Default_AmbientDementor)	//Joly: greift auf Sicht an (alle NSCs), VORSICHT, nur bedacht in bewohnte Gebiete setzten.
{
	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};

instance DMT_DementorAmbientSekob3 (Default_AmbientDementor)	//Joly: greift auf Sicht an (alle NSCs), VORSICHT, nur bedacht in bewohnte Gebiete setzten.
{
	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};

instance DMT_DementorAmbientSekob4 (Default_AmbientDementor)	//Joly: greift auf Sicht an (alle NSCs), VORSICHT, nur bedacht in bewohnte Gebiete setzten.
{
	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};

// *******************************************************
// CastlemineDMT
// *******************************************************

instance CastlemineDMT (Default_AmbientDementor)	//Joly: spricht den SC mit seiner Important an und greift ihn dann an!!!!!
{
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};

instance CastlemineDMT01 (Default_AmbientDementor)
{
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};
instance CastlemineDMT02 (Default_AmbientDementor)
{
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};
instance CastlemineDMT03 (Default_AmbientDementor)
{
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};
instance CastlemineDMT04 (Default_AmbientDementor)
{
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};

//**************************************************************
//	KeyMaster	Dragonisland
//**************************************************************

INSTANCE DragonIsle_Keymaster	(Default_AmbientDementor)
{
	name		=	"Schlüsselmeister";
	id 			= 	1236;

	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;

	CreateInvItem	(self,ItKe_EVT_UNDEAD_02);	//der Schlüssel ist wichtig für die Türen zu den Zuggittern

	// ------ TA anmelden ------
	start_aistate = ZS_Stand_Dementor;
};