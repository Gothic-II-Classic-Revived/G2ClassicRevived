
instance Mil_320_Miliz (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Miliz;	
	guild 		= GIL_MIL;
	id 			= 320;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal13, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_GRD_L);	
	Mdl_SetModelFatness	(self,-1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_320;
};

FUNC VOID Rtn_Start_320()
{	
	TA_Stand_Guarding	(05,00,20,15,"NW_CITY_MERCHANT_PATH_27");
    TA_Stand_Guarding	(20,15,22,15,"NW_CITY_MERCHANT_PATH_36");
    TA_Stand_Guarding	(22,15,00,15,"NW_CITY_MERCHANT_PATH_27");
    TA_Stand_Guarding	(00,15,02,15,"NW_CITY_MERCHANT_PATH_36");
    TA_Stand_Guarding	(02,15,04,15,"NW_CITY_MERCHANT_PATH_27");
    TA_Stand_Guarding	(04,15,05,00,"NW_CITY_MERCHANT_PATH_36");
};
