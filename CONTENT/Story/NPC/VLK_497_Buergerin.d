instance VLK_497_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buergerin;
	guild 		= GIL_VLK;
	id 			= 497;
	voice 		= 16;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);
	// ------ visuals ------																						
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_BabeHair", Face_W_Babe_Makeup1, Body_W_Babe_Naked, Body_White, Teeth_Normal, ITAR_VlkBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_497;
};

FUNC VOID Rtn_Start_497 ()
{	
	TA_Stand_Eating			(05,00,06,00,"NW_CITY_MERCHANT_PATH_28_E");
	TA_Smalltalk			(06,00,07,00,"MARKT");
	TA_Stand_Eating			(07,00,08,00,"NW_CITY_MERCHANT_PATH_28_E");
    TA_Smalltalk			(08,00,10,00,"MARKT");
    TA_Stand_ArmsCrossed	(10,00,11,00,"MARKT");
    TA_Smalltalk			(11,00,13,00,"MARKT");
	TA_Stand_Eating			(13,00,14,00,"NW_CITY_MERCHANT_PATH_28_E");
    TA_Smalltalk			(14,00,16,00,"MARKT");
    TA_Stand_ArmsCrossed	(16,00,17,00,"MARKT");
    
    TA_Cook_Stove			(17,00,18,00,"NW_CITY_UPTOWN_HUT_01_COOK");
    TA_Sweep_FP				(18,00,19,00,"NW_CITY_UPTOWN_HUT_01_COOK");
    TA_Smalltalk			(19,00,22,00,"NW_CITY_UPTOWN_PATH_08");
    TA_Sleep				(22,00,05,00,"NW_CITY_GERBRANDT_BED_02");
};

FUNC VOID Rtn_NewLife_497 ()		
{	
	TA_Smalltalk	(22,00,08,00,"NW_CITY_HABOUR_POOR_AREA_PATH_03");
	TA_Smalltalk	(08,00,11,00,"NW_CITY_HABOUR_POOR_AREA_PATH_03");
    TA_Smalltalk 	(11,00,15,00,"NW_CITY_HABOUR_POOR_AREA_PATH_03");
    TA_Smalltalk	(15,00,18,00,"NW_CITY_HABOUR_POOR_AREA_PATH_03");
	TA_Smalltalk 	(18,00,22,00,"NW_CITY_HABOUR_POOR_AREA_PATH_03");
};
