instance BDT_1042_Bandit_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1042;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fatbald", Face_L_Hum_Normal5, Body_L_Hum_Normal1, Body_Latino, Teeth_Gold, ITAR_REVIVED_BDT_L);	
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	daily_routine = Rtn_Start_1042;
};	 
	// ------ TA ------
	FUNC VOID RTn_Start_1042()
	{
		TA_Saw (00,00,12,00,"NW_CASTLEMINE_PATH_HUT_02");
		TA_Saw (12,00,00,00,"NW_CASTLEMINE_PATH_HUT_02");
	};
	
