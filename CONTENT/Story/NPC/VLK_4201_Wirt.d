
instance VLK_4201_Wirt (Npc_Default)
{
	// ------ NSC ------
	name 		= "Wirt";
	guild 		= GIL_VLK;
	id 			= 4201;
	voice 		= 14;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------														
	//EquipItem			(self, ITMW_REVIVED_1H_CLUB_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------															
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_OldBald_Jeremiah, BodyTex_N, ITAR_BARKEEPER);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4201;
};

FUNC VOID Rtn_Start_4201 ()
{
	TA_Stand_Guarding		(04,35,21,00,"NW_CITY_BEER_06");
	TA_Pee					(21,00,21,05,"NW_CITY_BEER_PEE");
    TA_Stand_Drinking		(21,05,04,30,"NW_CITY_BEER_06");
    TA_Pee					(04,30,04,35,"NW_CITY_BEER_PEE");
};

