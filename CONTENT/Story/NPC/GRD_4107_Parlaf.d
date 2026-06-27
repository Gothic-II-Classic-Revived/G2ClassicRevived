
instance GRD_4107_Parlaf (Npc_Default)
{
	// ------ NSC ------
	name 		= "Parlaf";
	guild 		= GIL_MIL;
	id 			= 4107;
	voice 		= 3;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Parlaf, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4107;
};

FUNC VOID Rtn_Start_4107 ()
{	
	TA_Smith_Sharp			(08,00,20,00,"OCC_STABLE_LEFT_FRONT");
    TA_Sleep				(20,00,08,00,"OCC_MERCS_UPPER_LEFT_ROOM_BED1");
};

FUNC VOID Rtn_OBSESSED_4107 ()
{	
	TA_Sleep		(08,00,23,00,"OW_PATH_3_07");
    TA_Sleep		(23,00,08,00,"OW_PATH_3_07");
};

FUNC VOID Rtn_Tot_4107 ()
{	
	TA_Sleep			(08,00,20,00,"TOT");
    TA_Sleep			(20,00,08,00,"TOT");
};
