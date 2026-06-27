instance BDT_1067_Bandit_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1067;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Hum_Normal29, Body_W_Hum_Normal3, Body_White, Teeth_Yellow, ITAR_REVIVED_BDT_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA ------
	daily_routine = Rtn_Start_1067;
};	 

	FUNC VOID RTn_Start_1067()
	{
		TA_Sleep (00,00,12,00,"NW_CASTLEMINE_TOWER_08");
		TA_Sleep (12,00,00,00,"NW_CASTLEMINE_TOWER_08");
	};
