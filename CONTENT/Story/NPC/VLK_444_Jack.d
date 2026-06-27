instance VLK_444_Jack (Npc_Default)
{
	// ------ NSC ------
	name 		= "Jack"; 
	guild 		= GIL_VLK;
	id 			= 444;
	voice 		= 14;
	flags       = 0;	//Sterblich, optionaler Captain im Kapitel 5!																
	npctype		= NPCTYPE_MAIN;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_07);
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Jack, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_444;
};

FUNC VOID Rtn_Start_444()
{	
	TA_Sit_Bench	(04,45,19,45,"NW_CITY_HABOUR_06_C");
    TA_Sit_Throne	(19,45,04,45,"NW_CITY_PUFF_THRONE");
};

FUNC VOID Rtn_Lighthouse_444()
{	
	TA_Sit_Throne	(08,00,20,00,"NW_LIGHTHOUSE_IN_03");
    TA_Sleep		(20,00,08,00,"NW_LIGHTHOUSE_IN_03"); 
};

FUNC VOID Rtn_WaitForShipCaptain_444 ()
{
	TA_Sit_Bench 			(08,00,20,00,"NW_WAITFOR_SHIP_CAPTAIN"); 
    TA_Sit_Bench 				(0,00,08,00,"NW_WAITFOR_SHIP_CAPTAIN");		
};

FUNC VOID Rtn_AllOnBoard_444 ()
{
	TA_Stand_WP			(08,00,23,00,"SHIP_CREW_CAPTAIN");
	TA_Sleep			(23,00,08,00,"SHIP_IN_06");
};
