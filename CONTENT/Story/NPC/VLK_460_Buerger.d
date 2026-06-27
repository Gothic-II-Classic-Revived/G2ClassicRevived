
instance VLK_460_Buerger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BUERGER; 
	guild 		= GIL_VLK;
	id 			= 460;
	voice 		= 8;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_DAGGER_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Hum_Beard1, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_Vlk_M);	
	Mdl_SetModelFatness	(self,1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_460;
};

FUNC VOID Rtn_Start_460()
{	
	TA_Smalltalk		(05,35,11,30,"NW_CITY_HABOUR_05");
	TA_Stand_Drinking 	(11,30,13,35,"NW_CITY_HABOUR_03");
	TA_Smalltalk		(13,35,17,30,"NW_CITY_HABOUR_03");
    TA_Stand_Drinking	(17,30,23,30,"NW_CITY_HABOUR_TAVERN01_01");
    TA_Sleep			(23,30,05,35,"NW_CITY_HABOUR_POOR_AREA_HUT_01_BED_02");
};
