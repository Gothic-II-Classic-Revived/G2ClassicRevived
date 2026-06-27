instance OUT_970_ORLAN (Npc_Default)
{
	// ------ NSC ------
	name 		= "Orlan";
	guild 		= GIL_OUT;
	id 			= 970;
	voice 		= 5;
	flags       = NPC_FLAG_IMMORTAL;	//Joly:bis das Ranger treffen war.																//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	aivar[AIV_NPCIsRanger] = TRUE;

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_HATCHET_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fatbald", Face_B_Orlan, Body_B_Hum_Naked, Body_Black, Teeth_Rotten, ITAR_Bau_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_970;
};

FUNC VOID Rtn_Start_970 ()
{	
	TA_Stand_WP		(08,00,22,00,"NW_TAVERNE_IN_04");  
    //TA_Stand_WP		(22,00,08,00,"NW_TAVERNE_IN_04");
	TA_Stand_Sweeping	(22,00,08,00,"NW_TAVERNE_IN_01");
};


FUNC VOID Rtn_Wettkampf_970 ()
{	
	TA_Stand_WP  	(08,00,22,00,"NW_TAVERNE");	
    TA_Stand_WP 	(22,00,08,00,"NW_TAVERNE");
};