
instance VLK_481_Buerger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buerger; 
	guild 		= GIL_VLK;
	id 			= 474;
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
 	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);
		
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Beard7, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_481;
};

FUNC VOID Rtn_Start_481()
{	
	TA_Cook_Cauldron	(05,05,12,05,"NW_CITY_PATH_HABOUR_13_C");
	TA_Smalltalk		(12,05,15,55,"NW_CITY_HABOUR_SMALLTALK_02");
    TA_Cook_Cauldron	(15,55,20,05,"NW_CITY_PATH_HABOUR_13_C");
    TA_Smalltalk		(20,05,23,55,"NW_CITY_HABOUR_SMALLTALK_02");
    TA_Sleep			(23,55,05,05,"NW_CITY_HABOUR_HUT_06_BED_02");
};
