
instance VLK_495_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Magd; //Coragons Frau / Magd / Bedienung
	guild 		= GIL_VLK;
	id 			= 495;
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
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_BabeHair", Face_W_Babe_Normal15, Body_W_Babe_Naked, Body_White, Teeth_Rotten, ITAR_BauBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_495;
};

FUNC VOID Rtn_Start_495 ()
{	
	TA_Smalltalk			(06,00,08,00,"NW_CITY_MERCHANT_PATH_28_B");
    TA_Stand_Eating			(08,00,09,00,"NW_CITY_MERCHANT_PATH_26");
    TA_Smalltalk			(09,00,11,00,"NW_CITY_MERCHANT_PATH_28_B");
    TA_Stand_Eating			(11,00,12,00,"NW_CITY_MERCHANT_PATH_26");
    TA_Smalltalk			(12,00,14,00,"NW_CITY_MERCHANT_PATH_28_B");
    TA_Stand_Eating			(14,00,15,00,"NW_CITY_MERCHANT_PATH_26");
    TA_Smalltalk			(15,00,17,00,"NW_CITY_MERCHANT_PATH_28_B");
    TA_Stand_Eating			(17,00,18,00,"NW_CITY_MERCHANT_PATH_26");
	TA_Cook_Stove 			(18,00,22,00,"TAVERN02");
	TA_Stand_Sweeping		(22,00,23,00,"TAVERN02");
	TA_Stand_Sweeping 		(23,00,01,00,"TAVERN02_B");
	TA_Stand_Sweeping 		(01,00,02,00,"NW_CITY_TAVERN_IN_04");
	TA_Stand_Sweeping 		(02,00,03,00,"NW_CITY_MERCHANT_TAVERN01_IN");
	TA_Stand_Sweeping 		(03,00,04,00,"NW_CITY_MERCHANT_TAVERN01_IN_01");
	TA_Stand_Sweeping 		(04,00,05,00,"NW_CITY_MERCHANT_TAVERN01_BACKROOM");
	TA_Stand_Drinking 		(05,00,06,00,"NW_CITY_TAVERN_IN_04");
};
