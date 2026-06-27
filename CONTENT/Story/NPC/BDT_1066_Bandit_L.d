instance BDT_1066_Bandit_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1066;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal28, Body_W_Hum_Normal2, Body_White, Teeth_Rotten, ITAR_REVIVED_BDT_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA ------
	daily_routine = Rtn_Start_1066;
};	 

	FUNC VOID RTn_Start_1066()
	{
		TA_Smalltalk (00,00,12,00,"NW_CASTLEMINE_TOWER_B");
		TA_Smalltalk (12,00,00,00,"NW_CASTLEMINE_TOWER_B");
	};
