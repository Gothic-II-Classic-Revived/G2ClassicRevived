
instance VLK_407_Hakon (Npc_Default)
{
	// ------ NSC ------
	name 		= "Hakon";
	guild 		= GIL_VLK;
	id 			= 407;
	voice 		= 12;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_SHORT_02);
	
	// ------ Inventory ------
	// Händler
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Hakon, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_VLK_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_407;
};

FUNC VOID Rtn_Start_407 ()
{	
	TA_Stand_ArmsCrossed	(05,10,19,50,"NW_CITY_HAKON");
    TA_Smoke_Waterpipe 		(19,50,00,10,"NW_CITY_SMOKE_04");
    TA_Sleep				(00,10,05,10,"NW_CITY_HOTEL_BED_04");
};
