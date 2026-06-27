
instance STRF_1109_Straefling (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_STRAEFLING; 
	guild 		= GIL_STRF;
	id 			= 1109;
	voice 		= 13;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_OCAMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem (self, ITMW_REVIVED_2H_PICKAXE );
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal20, Body_W_Hum_Normal2, Body_White, Teeth_Rotten, ITAR_REVIVED_SFB_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1109;
};

FUNC VOID Rtn_Start_1109 ()
{	
/* 	TA_Repair_Hut 			(08,00,23,00,"OC_OPEN_ROOM_REPAIR_02");
    TA_Repair_Hut 			(23,00,08,00,"OC_OPEN_ROOM_REPAIR_02"); */
	TA_Sit_Campfire				(08,00,23,00,"OCC_CELLAR_FRONT_RIGHT_CELL_001");
    TA_Sit_Campfire				(23,00,08,00,"OCC_CELLAR_FRONT_RIGHT_CELL_001");
};

