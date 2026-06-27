instance BDT_1043_Bandit_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1043;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fatbald", Face_P_Hum_Normal1, Body_P_Hum_Naked, Body_Pale, Teeth_Broken, ITAR_REVIVED_BDT_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	daily_routine = Rtn_Start_1043;
}; 
	// ------ TA ------
	FUNC VOID RTn_Start_1043()
	{
		TA_Saw (00,00,12,00,"NW_CASTLEMINE_TOWER__MOBSI");
		TA_Saw (12,00,00,00,"NW_CASTLEMINE_TOWER__MOBSI");
	};
