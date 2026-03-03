
instance PAL_265_Wache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Wache; 
	guild 		= GIL_PAL;
	id 			= 265;
	voice 		= 5;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCAMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_LIGHT_02 );
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_P_NormalBart_Nefarius, BodyTex_P, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_265;
};

FUNC VOID Rtn_Start_265 ()
{	
	TA_Stand_Guarding		(08,00,22,00,"OCC_LEFT_TOWER_GANGWAY_GUARD");
    TA_Stand_Guarding		(22,00,08,00,"OCC_LEFT_TOWER_GANGWAY_GUARD");
};

FUNC VOID Rtn_KAP5_265 ()
{	
	TA_Stand_Guarding			(08,00,18,00,"OCC_TOWER_PLATFORM_GUARD_FRONT");
    TA_Stand_Guarding			(18,00,23,00,"OCC_TOWER_PLATFORM_GUARD_LEFT");
    TA_Stand_Guarding			(23,00,08,00,"OCC_TOWER_PLATFORM_GUARD_RIGHT");
};