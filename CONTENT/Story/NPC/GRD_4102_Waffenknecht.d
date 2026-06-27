
instance GRD_4102_Waffenknecht (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_WAFFENKNECHT; 
	guild 		= GIL_MIL;
	id 			= 4102;
	voice 		= 1;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCAMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Hum_Beard10, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness    (self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4102;
};

FUNC VOID Rtn_Start_4102 ()
{	
	TA_Stand_Guarding			(08,00,12,00,"OCC_TOWERRUIN_TOP");
    TA_Stand_Guarding			(12,00,16,00,"OCC_PALISADE_WALLCRACK");
	TA_Stand_Guarding			(16,00,20,00,"OCC_TOWERRUIN_LADDER");
    TA_Sleep					(20,00,08,00,"OCC_MERCS_UPPER_RIGHT_ROOM_BED3");
};
