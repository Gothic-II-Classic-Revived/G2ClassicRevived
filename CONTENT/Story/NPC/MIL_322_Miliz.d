
instance Mil_322_Miliz (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Miliz;	
	guild 		= GIL_MIL;
	id 			= 322;
	voice 		= 6;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_L_Hum_Bald1, Body_L_Hum_Naked, Body_Latino, Teeth_Normal, ITAR_REVIVED_GRD_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_322;
};

FUNC VOID Rtn_Start_322()
{	
	TA_Stand_Guarding	(01,00,03,00,"NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(03,00,05,00,"NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(05,00,07,00,"NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(07,00,09,00,"NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(09,00,11,00,"NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(11,00,13,00,"NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(13,00,15,00,"NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(15,00,17,00,"NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(17,00,19,00,"NW_CITY_MAINSTREET_07");
	TA_Stand_Guarding	(19,00,21,00,"NW_CITY_MERCHANT_TEMPLE_PLACE_01");
	TA_Stand_Guarding	(21,00,23,00,"NW_CITY_MERCHANT_PATH_22");
	TA_Stand_Guarding	(23,00,01,00,"NW_CITY_MAINSTREET_07");
};
