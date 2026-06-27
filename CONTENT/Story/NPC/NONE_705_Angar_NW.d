

instance NONE_705_ANGAR_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Angar";
	guild 		= GIL_NONE;
	id 			= 7050;
	voice 		= 4;
	flags       = 0;					//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_ANGAR);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_B_Angar, Body_B_Hum_Tattoo, Body_Black, Teeth_Normal, ITAR_CorAngar);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7050;
};

FUNC VOID Rtn_Start_7050 ()
{
	TA_Stand_ArmsCrossed					(08,00,23,00,"FARM3");
    TA_Stand_ArmsCrossed					(23,00,08,00,"FARM3");		
};

FUNC VOID Rtn_WaitForShip_7050 ()
{
	TA_Stand_ArmsCrossed					(08,00,23,00,"NW_WAITFOR_SHIP_03");
    TA_Stand_ArmsCrossed					(23,00,08,00,"NW_WAITFOR_SHIP_03");		
};

FUNC VOID Rtn_Ship_7050 ()
{
	TA_Stand_ArmsCrossed					(08,00,23,00,"SHIP_CREW_03");
    TA_Stand_ArmsCrossed					(23,00,08,00,"SHIP_CREW_03");		
};
