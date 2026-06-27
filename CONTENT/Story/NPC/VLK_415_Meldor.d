
instance VLK_415_Meldor (Npc_Default)
{
	// ------ NSC ------
	name 		= "Meldor";
	guild 		= GIL_VLK;
	id 			= 415;
	voice 		= 7;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ aivar ------
	aivar [AIV_ToughGuy] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic = FAI_HUMAN_NORMAL;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_02);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_P_Meldor, Body_P_Hum_Naked, Body_Pale, Teeth_Gold, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self, 0.8);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_415;
};


FUNC VOID Rtn_PreStart_415 ()
{	
	TA_Smoke_Joint 			(05,05,23,55,"NW_CITY_HABOUR_POOR_AREA_PATH_20");
    TA_Sleep				(23,55,05,05,"NW_CITY_HABOUR_HUT_04_BED_02");
};

FUNC VOID Rtn_Start_415 ()
{	
	TA_Smoke_Joint 			(05,05,12,35,"NW_CITY_HABOUR_POOR_AREA_PATH_20");
	TA_Smalltalk			(12,35,16,05,"NW_CITY_HABOUR_HUT_08");
    TA_Smoke_Joint 			(16,05,18,05,"NW_CITY_HABOUR_POOR_AREA_PATH_20");
    TA_Stand_Eating			(18,05,19,55,"NW_CITY_PATH_HABOUR_03");
    TA_Smoke_Joint			(19,55,23,55,"NW_CITY_HABOUR_POOR_AREA_PATH_20");
    TA_Sleep				(23,55,05,05,"NW_CITY_HABOUR_HUT_04_BED_02");
};
