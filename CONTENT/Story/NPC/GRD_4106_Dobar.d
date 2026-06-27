
instance GRD_4106_Dobar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Dobar";
	guild 		= GIL_MIL;
	id 			= 4106;
	voice 		= 8;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_AXE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ItMi_Nugget,1);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Dobar, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_Smith);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4106;
};

FUNC VOID Rtn_Start_4106 ()
{	
	TA_Smith_Fire			(08,00,08,30,"OCC_STABLE_SMITHY"	);
    TA_Smith_Anvil			(08,30,09,00,"OCC_STABLE_SMITHY"	);
  	TA_Smith_Cool			(09,00,09,30,"OCC_STABLE_SMITHY"	);
    TA_Smith_Fire			(09,30,10,00,"OCC_STABLE_SMITHY"	);
 	TA_Smith_Anvil			(10,00,10,30,"OCC_STABLE_SMITHY"	);
    TA_Smith_Cool			(10,30,11,00,"OCC_STABLE_SMITHY"	);
	TA_Smith_Fire			(11,00,11,30,"OCC_STABLE_SMITHY"	);
    TA_Smith_Anvil			(11,30,12,00,"OCC_STABLE_SMITHY"	);
    TA_Smith_Cool			(12,00,12,30,"OCC_STABLE_SMITHY"	);
    TA_Smith_Fire			(12,30,13,00,"OCC_STABLE_SMITHY"	);
    TA_Smith_Anvil			(13,00,13,30,"OCC_STABLE_SMITHY"	);
    TA_Smith_Cool			(13,30,14,00,"OCC_STABLE_SMITHY"	);
    TA_Smith_Fire			(14,00,14,30,"OCC_STABLE_SMITHY"	);
    TA_Smith_Anvil			(14,30,15,00,"OCC_STABLE_SMITHY"	);
    TA_Smith_Cool			(15,00,15,30,"OCC_STABLE_SMITHY"	);
    TA_Smith_Fire			(15,30,16,00,"OCC_STABLE_SMITHY"	);
    TA_Smith_Anvil			(16,00,16,30,"OCC_STABLE_SMITHY"	);
    TA_Smith_Cool			(16,30,17,00,"OCC_STABLE_SMITHY"	);
    TA_Smith_Fire			(17,00,17,30,"OCC_STABLE_SMITHY"	);
    TA_Smith_Anvil			(17,30,18,00,"OCC_STABLE_SMITHY"	);
    TA_Smith_Cool			(18,00,18,30,"OCC_STABLE_SMITHY"	);
    TA_Smith_Fire			(18,30,19,00,"OCC_STABLE_SMITHY"	);
    TA_Smith_Anvil			(19,00,19,30,"OCC_STABLE_SMITHY"	);
    TA_Smith_Cool			(19,30,20,00,"OCC_STABLE_SMITHY"	);
    
    TA_Sleep				(20,00,08,00,"OCC_MERCS_UPPER_LEFT_ROOM_BED7");
};

FUNC VOID Rtn_OBSESSED_4106 ()
{	
	TA_Sleep		(08,00,23,00,"OW_PATH_306");
    TA_Sleep		(23,00,08,00,"OW_PATH_306");
};

FUNC VOID Rtn_Tot_4106 () 
{	
	TA_Sleep			(08,00,23,00,"TOT");
    TA_Sleep			(23,00,08,00,"TOT");		
};
