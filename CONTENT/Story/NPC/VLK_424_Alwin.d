
instance Vlk_424_Alwin (Npc_Default) //Metzger
{
	// ------ NSC ------
	name 		= "Alwin";	
	guild 		= GIL_VLK;
	id 			= 424;
	voice 		= 12;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ITMW_REVIVED_1H_AXE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_P_Alwin, Body_P_Hum_Naked, Body_Pale, Teeth_Gold, ITAR_Barkeeper);
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_424;
};

FUNC VOID Rtn_Start_424()
{	
	TA_Sit_Bench 	(08,00,22,00,"NW_CITY_PATH_HABOUR_18");
    TA_Sleep 		(22,00,08,00,"NW_CITY_HABOUR_HUT_07_BED_01");
};
