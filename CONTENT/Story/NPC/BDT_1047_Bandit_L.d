instance BDT_1047_Bandit_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1047;
	voice 		= 10;
	flags       = 0;								
	npctype		= NPCTYPE_AMBIENT;
	
	//--------Aivars-----------
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fatbald", Face_W_Hum_Normal21, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_BDT_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA ------
	daily_routine = Rtn_Start_1047;
};	 
	// ------ TA ------
	FUNC VOID RTn_Start_1047()
	{
		TA_Sit_Campfire (00,00,12,00,"NW_CASTLEMINE_TOWER_CAMPFIRE_01");
		TA_Sit_Campfire (12,00,00,00,"NW_CASTLEMINE_TOWER_CAMPFIRE_01");
	};
