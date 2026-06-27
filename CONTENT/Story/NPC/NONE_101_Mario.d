instance None_101_Mario (Npc_Default)
{
	// ------ NSC ------
	name 		= "Mario";
	guild 		= GIL_NONE;
	id 			= 101;
	voice 		= 7;
	flags       = NPC_FLAG_IMMORTAL;	//Joly: NPC_FLAG_IMMORTAL	sonst Plottkiller Kapitel 5																//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_B_Mario, Body_B_Hum_Naked, Body_Black, Teeth_Gold, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 1.2);
	Mdl_ApplyOverlayMds	(self, "Humans_MILITIA.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_101;
};

FUNC VOID Rtn_Start_101 ()
{	
	TA_Stand_Drinking		(08,00,21,00,"NW_CITY_HABOUR_TAVERN01_STAND_01");
   	TA_Stand_Drinking		(21,00,08,00,"NW_CITY_HABOUR_TAVERN01_STAND_01");
};

FUNC VOID Rtn_WaitForShip_101 ()
{	
	TA_Stand_Drinking		(08,00,19,00,"NW_WAITFOR_SHIP_01");
	TA_Stand_Drinking		(19,00,08,00,"NW_WAITFOR_SHIP_01");	
};

FUNC VOID Rtn_ShipOff_101 ()
{	
	TA_Stand_Drinking		(08,00,21,00,"NW_CITY_HABOUR_TAVERN01_STAND_01");
   	TA_Stand_Drinking		(21,00,08,00,"NW_CITY_HABOUR_TAVERN01_STAND_01");
};

FUNC VOID Rtn_Ship_101 ()
{	
	TA_Sit_Bench			(08,00,23,00,"SHIP_DECK_25");
	TA_Sit_Bench			(23,00,08,00,"SHIP_DECK_25");
};
