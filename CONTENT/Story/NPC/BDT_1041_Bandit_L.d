instance BDT_1041_Bandit_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1041;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fatbald", Face_L_Hum_Normal4, Body_L_Hum_Normal5, Body_Latino, Teeth_Normal, ITAR_REVIVED_BDT_L);	
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	daily_routine = Rtn_Start_1041;
}; 
	// ------ TA ------
	FUNC VOID RTn_Start_1041()
	{
		TA_Repair_Hut (00,00,12,00,"NW_CASTLEMINE_TOWER_REP_HUT");
		TA_Repair_Hut (12,00,00,00,"NW_CASTLEMINE_TOWER_REP_HUT");
	};
