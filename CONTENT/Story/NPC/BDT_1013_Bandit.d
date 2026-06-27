instance BDT_1013_BANDIT (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1013;
	voice 		= 1;
	flags       = 0;			
	npctype		= NPCTYPE_MAIN;
	
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;
	
	// ------ Equippte Waffen ------		
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ItWr_Poster_MIS,1);

	// ------ visuals ------				
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Hum_Normal2, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_BDT_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA ------
	daily_routine 	= RTN_Start_1013;
};

FUNC VOID RTN_Start_1013()
{
	TA_Stand_ArmsCrossed (00,00,12,00,"NW_XARDAS_STAIRS_01");  
	TA_Stand_ArmsCrossed (12,00,00,00,"NW_XARDAS_STAIRS_01");
};

FUNC VOID RTN_Ambush_1013()
{
	TA_Guide_Player (00,00,12,00,"NW_XARDAS_BANDITS_RIGHT");  
	TA_Guide_Player (12,00,00,00,"NW_XARDAS_BANDITS_RIGHT"); //_05
};

FUNC VOID RTN_AWAY_1013()
{
	TA_Sit_Campfire (00,00,12,00,"NW_XARDAS_TOWER_WATERFALL_CAVE_SIDE_02_IN_005");  
	TA_Sit_Campfire (12,00,00,00,"NW_XARDAS_TOWER_WATERFALL_CAVE_SIDE_02_IN_005");
};

func VOID RTN_AWAY2_1013()
{
	TA_FleeToWP (00,00,12,00,"NW_XARDAS_MONSTER_INSERT_01");
	TA_FleeToWP (12,00,00,00,"NW_XARDAS_MONSTER_INSERT_01");
};