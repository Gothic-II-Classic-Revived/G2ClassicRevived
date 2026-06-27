
instance Mil_323_Miliz (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Miliz;	
	guild 		= GIL_MIL;
	id 			= 323;
	voice 		= 7;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal14, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_GRD_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_323;
};

FUNC VOID Rtn_Start_323()
{	
	TA_Stand_Guarding	(01,00,03,00,"NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(03,00,05,00,"NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(05,00,07,00,"NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(07,00,09,00,"NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(09,00,11,00,"NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(11,00,13,00,"NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(13,00,15,00,"NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(15,00,17,00,"NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(17,00,19,00,"NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(19,00,21,00,"NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(21,00,23,00,"NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(23,00,01,00,"NW_CITY_MERCHANT_TEMPLE_PLACE_01");
};
