
instance PAL_254_Wache  (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Ritter;
	guild 		= GIL_PAL;
	id 			= 254;
	voice 		= 4;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCAMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_P_Hum_Bald2, Body_P_Hum_Naked, Body_Pale, Teeth_Rotten, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_254;
};

FUNC VOID Rtn_Start_254 ()
{	
	TA_Smalltalk				(08,00,23,00,"OCC_CHAPEL_SMALLTALK");
    TA_Pray_Innos_FP			(23,00,08,00,"OCC_CORNER_PRAY");
};
FUNC VOID Rtn_Marcos_254 ()
{	
	TA_Stand_Drinking				(08,00,23,00,"OCC_MERCS_ENTRANCE_GUARD");
    TA_Pray_Innos_FP				(23,00,08,00,"OCC_CORNER_PRAY");
};

