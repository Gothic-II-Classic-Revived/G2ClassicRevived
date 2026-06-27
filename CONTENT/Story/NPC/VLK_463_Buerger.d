
instance VLK_463_Buerger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BUERGER; 
	guild 		= GIL_VLK;
	id 			= 463;
	voice 		= 13;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_07); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Hum_Beard2, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 	
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_463;
};

FUNC VOID Rtn_Start_463()
{	
	TA_Smalltalk	(08,00,23,00,"NW_CITY_PATH_HABOUR_BACK_ALLEY_02");
    TA_Smalltalk 	(23,00,08,00,"NW_CITY_PATH_HABOUR_BACK_ALLEY_02");
};
