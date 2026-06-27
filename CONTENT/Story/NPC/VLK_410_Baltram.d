
instance VLK_410_Baltram (Npc_Default)
{
	// ------ NSC ------
	name 		= "Baltram";
	guild 		= GIL_VLK;
	id 			= 410;
	voice 		= 1;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	aivar[AIV_NPCIsRanger] = TRUE;

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ITMW_REVIVED_1H_SWORD_SHORT_04);
	
	// ------ Inventory ------
	// Händler
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Baltram, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_VLK_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_410;
};

FUNC VOID Rtn_Start_410 ()
{	
	TA_Stand_ArmsCrossed	(05,05,20,05,"NW_CITY_BALTRAM");
	TA_Smalltalk			(20,05,00,05,"NW_CITY_BEER_08");
    TA_Sleep 				(00,05,05,05,"NW_CITY_HOTEL_BED_02");
};

FUNC VOID Rtn_Prison_410()
{	
	TA_Stand_ArmsCrossed 	(08,00,23,00,"NW_CITY_HABOUR_KASERN_RENGARU");
    TA_Stand_ArmsCrossed	(23,00,08,00,"NW_CITY_HABOUR_KASERN_RENGARU"); 
};
