
instance STRF_1106_Fed (Npc_Default)
{
	// ------ NSC ------
	name 		= "Fed";
	guild 		= GIL_STRF;
	id 			= 1106;
	voice 		= 8;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
			
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem (self, ITMW_REVIVED_2H_PICKAXE);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_P_Fed, Body_P_Hum_Normal2, Body_Pale, Teeth_Gold, ITAR_REVIVED_SFB_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1106;
};

FUNC VOID Rtn_Start_1106 ()
{	
	TA_Pick_Ore			(08,00,22,00,"OW_OM_PICKSLOT_11");
    TA_Wash_FP			(22,00,23,00,"LOCATION_23_CAVE_1_OUT_LAKE");
    TA_Sit_Campfire		(23,00,08,00,"LOCATION_23_CAVE_1_OUT_CAMPFIRE");
};
