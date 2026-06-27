
instance GRD_4100_Brutus (Npc_Default)
{
	// ------ NSC ------
	name 		= "Brutus";
	guild 		= GIL_MIL;
	id 			= 4100;
	voice 		= 6;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCMAIN;
	
	//------- Aivars 
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	 
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_P_Brutus, Body_P_Hum_Naked, Body_Pale, Teeth_Gold, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4100;
};
//Joly: NIE AUF EINE BANK ODER THRON SETZEN

FUNC VOID Rtn_Start_4100 ()
{	
	TA_Smith_Sharp			(08,00,23,00,"OCC_MERCS_DUNGEON_003");
    TA_Sleep				(23,00,08,00,"OCC_MERCS_UPPER_LEFT_ROOM_BED2");
};
//Joly: NIE AUF EINE BANK ODER THRON SETZEN
FUNC VOID Rtn_Meatbugs_4100 ()
{	
	TA_Stand_ArmsCrossed 		(08,00,23,00,"OCC_MERCS_DOWNSTAIRS_1"); 
    TA_Stand_ArmsCrossed		(23,00,08,00,"OCC_MERCS_DOWNSTAIRS_1");
};

