instance BDT_1044_Bandit_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1044;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Thief", Face_P_Hum_Normal2, Body_P_Hum_Normal1, Body_Pale, Teeth_Yellow, ITAR_REVIVED_BDT_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ TA ------
	daily_routine = Rtn_Start_1044;
};	 
	// ------ TA ------
	FUNC VOID RTn_Start_1044()
	{
		TA_Smalltalk (00,00,12,00,"NW_CASTLEMINE_TOWER_STAND_02");
		TA_Smalltalk (12,00,00,00,"NW_CASTLEMINE_TOWER_STAND_02");
	};
