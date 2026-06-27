
instance VLK_437_Brahim (Npc_Default)
{
	// ------ NSC ------
	name 		= "Brahim"; 
	guild 		= GIL_VLK;
	id 			= 437;
	voice 		= 7;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_WALKINGSTICK_01);	

	// ------ Inventory ------
	// Händler

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Brahim, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_437;
};

FUNC VOID Rtn_Start_437()
{	
	TA_Sit_Bench		(08,00,22,00,"NW_CITY_HABOUR_HUT_01_FRONT");
    TA_Sleep			(22,00,08,00,"NW_CITY_BED_BRAHIM");
};
