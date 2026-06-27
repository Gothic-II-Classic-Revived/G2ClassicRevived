
instance VLK_4001_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buergerin;	
	guild 		= GIL_VLK;
	id 			= 4001;
	voice 		= 16;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_BabeHair", Face_W_Babe_Makeup3, Body_W_Babe_Naked, Body_White, Teeth_Normal, ITAR_VlkBabe_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4001;
};

FUNC VOID Rtn_Start_4001 ()
{	
	TA_Sleep			(21,45,06,30,"NW_CITY_REICH03_BED_02");
	
	TA_Stand_Sweeping	(06,30,08,00,"NW_CITY_UPTOWN_HUT_02_ENTRY");
    TA_Cook_Stove		(08,00,10,00,"NW_CITY_REICH03_COOK");
    TA_Smalltalk		(10,00,14,00,"NW_CITY_UPTOWN_PATH_15_B");
    TA_Sweep_FP			(14,00,15,30,"NW_CITY_UPTOWN_HUT_02_IN");
    TA_Cook_Stove		(15,30,17,00,"NW_CITY_REICH03_COOK");
    TA_Smalltalk		(17,00,21,45,"NW_CITY_UPTOWN_PATH_15_B");
};
