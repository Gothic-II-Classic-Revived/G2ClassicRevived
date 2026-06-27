instance PAL_269_Ritter (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_RITTER; 
	guild 		= GIL_PAL;
	id 			= 269;
	voice 		= 4;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02 );

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Hum_Beard21, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_269;
};

FUNC VOID Rtn_Start_269 ()
{	
	TA_Stand_Guarding		(08,00,21,00,"OCC_BARONS_GREATHALL_BERATER");
    TA_Stand_Guarding		(21,00,08,00,"OCC_BARONS_RIGHT_STAIRCASE");
};

