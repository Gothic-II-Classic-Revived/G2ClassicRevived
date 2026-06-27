
instance GRD_4142_Waffenknecht (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_WAFFENKNECHT; 
	guild 		= GIL_MIL;
	id 			= 4142;
	voice 		= 1;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCAMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);															//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Beard16, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness    (self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4142;
};

FUNC VOID Rtn_Start_4142 ()
{	
    TA_Sleep					(08,00,20,00,"OCC_MERCS_UPPER_RIGHT_ROOM_BED1");
	TA_Stand_Guarding			(20,00,02,00,"OCC_LADDER_WALL_TOP_END");
	TA_Stand_Guarding			(02,00,08,00,"OCC_RUIN_LEFT_GANGWAY_BACK");
};
