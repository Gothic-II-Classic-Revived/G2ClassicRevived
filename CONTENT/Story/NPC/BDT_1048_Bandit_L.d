instance BDT_1048_Bandit_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1048;
	voice 		= 1;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_B_Hum_Normal5, Body_B_Hum_Naked, Body_Black, Teeth_Normal, ITAR_REVIVED_BDT_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	daily_routine = Rtn_Start_1048;
}; 
	// ------ TA ------
	FUNC VOID RTn_Start_1048()
	{
		TA_Sit_Campfire (00,00,12,00,"NW_CASTLEMINE_TOWER_CAMPFIRE_02");
		TA_Sit_Campfire (12,00,00,00,"NW_CASTLEMINE_TOWER_CAMPFIRE_02");
	};
