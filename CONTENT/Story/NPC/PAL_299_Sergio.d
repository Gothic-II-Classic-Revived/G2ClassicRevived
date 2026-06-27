instance PAL_299_Sergio (Npc_Default)
{
	// ------ NSC ------
	name 		= "Sergio";
	guild 		= GIL_PAL;
	id 			= 299;
	voice 		= 4;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_PALADIN_02);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ITKE_INNOS_MIS,1);//damit er das Tor öffnen kann
	CreateInvItems (self, ITPO_REVIVED_HEALTH_02,4);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Sergio, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_PAL_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_299;
};

FUNC VOID Rtn_Start_299 ()
{
	TA_Pray_Innos  		(08,00,20,00,"NW_MONASTERY_CHAPELL_02");
	TA_Guard_Passage	(20,00,08,00,"NW_MONASTERY_OUTSIDE_WHEEL");	
};
FUNC VOID Rtn_WaitForPlayer_299 ()
{
	TA_Stand_Guarding  	(08,00,23,00,"NW_MONASTERY_PLACE_09");
    TA_Stand_Guarding 	(23,00,08,00,"NW_MONASTERY_PLACE_09");	
};
FUNC VOID Rtn_Train_299 ()
{
	TA_Pray_Innos  	  (07,00,20,00,"NW_MONASTERY_CHAPELL_02");
	TA_Guard_Passage  (20,00,05,00,"NW_MONASTERY_OUTSIDE_WHEEL");	
	TA_Practice_Sword (05,00,07,00,"NW_MONASTERY_TRAIN_01");	
};
FUNC VOID Rtn_Wait_299 ()
{
	TA_Stand_Guarding  	(08,00,23,00,"NW_MONASTERY_CHAPELL_03");
    TA_Stand_Guarding 	(23,00,08,00,"NW_MONASTERY_CHAPELL_03");	
};
FUNC VOID Rtn_Guide_299()
{
	TA_Guide_Player  	(08,00,23,00,"NW_TO_PASS_01");
    TA_Guide_Player 	(23,00,08,00,"NW_TO_PASS_01");	
};
