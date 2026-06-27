
instance PAL_256_Ritter (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_RITTER; 
	guild 		= GIL_PAL;
	id 			= 256;
	voice 		= 4;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCAMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_P_Hum_Bald4, Body_P_Hum_Naked, Body_Pale, Teeth_Gold, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_256;
};

FUNC VOID Rtn_Start_256 ()
{	
	TA_Practice_Sword		(08,00,19,00,"OCC_FIGHTTRAINING_001");
    TA_Sit_Campfire			(19,00,08,00,"OCC_WELL_RIGHT_MOVEMENT5");
};
