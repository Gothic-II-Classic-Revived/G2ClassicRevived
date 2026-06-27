instance BDT_1060_Dexter (Npc_Default)
{
	// ------ NSC ------
	name 		= "Dexter"; 
	guild 		= GIL_BDT;
	id 			= 1060;
	voice 		= 9;
	flags       = 0;								
	npctype		= NPCTYPE_MAIN;
	
	//--------Aivars-----------
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 35);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_WHISTLER);
	EquipItem			(self, ITRW_REVIVED_BOW_SMALL_04);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ItKE_Dexter,1);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Dexter, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_STT_M);	
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	daily_routine = Rtn_Start_1060;
};	 
	// ------ TA ------
	FUNC VOID RTn_Start_1060()
	{
		TA_Sit_Throne (00,00,12,00,"NW_CASTLEMINE_HUT_10");
		TA_Sit_Throne (12,00,00,00,"NW_CASTLEMINE_HUT_10");
	};
