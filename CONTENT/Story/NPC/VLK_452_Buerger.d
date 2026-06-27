
instance VLK_452_Buerger (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BUERGER; 
	guild 		= GIL_VLK;
	id 			= 452;
	voice 		= 6;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Bald1, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_Vlk_H);	
	Mdl_SetModelFatness	(self,1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_452;
};

FUNC VOID Rtn_Start_452()
{	
	TA_Smalltalk		(06,05,10,02,"NW_CITY_MERCHANT_SHOP01_FRONT_03_C");
    TA_Smoke_Waterpipe	(10,02,13,02,"NW_CITY_SMOKE_03");
	//TA_Smalltalk		(13,02,14,05, "NW_CITY_MERCHANT_SHOP01_FRONT_03_C");
	TA_Smoke_Joint		(13,02,14,05, "NW_CITY_HABOUR_POOR_AREA_PATH_12");
	TA_Stand_Drinking 	(14,05,17,02,"NW_CITY_TAVERN_IN_04");
	TA_Smalltalk		(17,02,20,15, "NW_CITY_MERCHANT_SHOP01_FRONT_03_C");
	TA_Sleep			(20,15,06,05,"NW_CITY_LEOMAR_BED_07"); 
};
