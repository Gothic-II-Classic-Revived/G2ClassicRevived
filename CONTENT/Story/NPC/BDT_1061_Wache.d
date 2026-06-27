instance BDT_1061_Wache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Wache; 
	guild 		= GIL_BDT;
	id 			= 1061;
	voice 		= 1;
	flags       = 0;								
	npctype		= NPCTYPE_MAIN;
	
	//--------Aivars-----------
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 25);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_SHORT_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal25, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_BDT_M);	
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	daily_routine = Rtn_Start_1061;
};	 
	// ------ TA ------
	FUNC VOID RTn_Start_1061()
	{
		TA_Stand_Guarding 	(00,00,12,00,"NW_CASTLEMINE_PATH_02");
		TA_Stand_Guarding 	(12,00,00,00,"NW_CASTLEMINE_PATH_02");
	};
