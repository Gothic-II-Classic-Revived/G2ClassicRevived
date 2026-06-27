
instance VLK_471_Edda (Npc_Default)
{
	// ------ NSC ------
	name 		= "Edda";	
	guild 		= GIL_VLK;
	id 			= 471;
	voice 		= 17;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_KNIFE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe.", Face_B_Edda, Body_B_Babe_Naked, Body_Black, Teeth_Rotten, ITAR_VlkBabe_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_471;
};

FUNC VOID Rtn_Start_471 ()
{	
	TA_Cook_Cauldron (08,00,22,00,"NW_CITY_HABOUR_POOR_AREA_CAULDRON");
    TA_Cook_Cauldron (22,00,08,00,"NW_CITY_HABOUR_POOR_AREA_CAULDRON");
};
