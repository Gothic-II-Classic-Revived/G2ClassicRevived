
instance VLK_427_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Buergerin;	
	guild 		= GIL_VLK;
	id 			= 427;
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
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_BabeHair", Face_W_Babe_Normal5, Body_W_Babe_Naked, Body_White, Teeth_Rotten, ITAR_BauBabe_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_427;
};

FUNC VOID Rtn_Start_427 ()
{	
	TA_Cook_Stove			(04,30,12,00, "NW_CITY_BED_RUPERT");
	TA_Stand_Sweeping 		(12,00,13,02, "NW_CITY_SHOP02_CENTER");
	TA_Smalltalk			(13,02,14,05, "NW_CITY_MERCHANT_SHOP01_FRONT_03_E");
	TA_Cook_Stove			(14,05,16,00, "NW_CITY_BED_RUPERT");
	TA_Stand_Sweeping		(16,00,17,02, "NW_CITY_SHOP02_CENTER");
	TA_Smalltalk			(17,02,18,05, "NW_CITY_MERCHANT_SHOP01_FRONT_03_E");
	TA_Cook_Stove			(18,05,20,00, "NW_CITY_BED_RUPERT");
	TA_Sit_Chair			(20,00,23,30, "NW_CITY_BED_MAID_MATTEO");
    TA_Sleep				(23,30,04,30, "NW_CITY_BED_MAID_MATTEO");
};
