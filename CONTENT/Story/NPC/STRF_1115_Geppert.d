
instance STRF_1115_Geppert (Npc_Default)
{
	// ------ NSC ------
	name 		= "Geppert"; 
	guild 		= GIL_STRF;
	id 			= 1115;
	voice 		= 10;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_2H_PICKAXE );
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal18, Body_W_Hum_Normal2, Body_White, Teeth_Yellow, ITAR_REVIVED_SFB_H);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1115;
};

FUNC VOID Rtn_Start_1115 ()
{	
	TA_Roast_Scavenger  						(08,00,23,00,"OW_STRF_VORPOSTEN_01");
    TA_Roast_Scavenger							(23,00,08,00,"OW_STRF_VORPOSTEN_01");			
};

FUNC VOID Rtn_Tot_1115 ()
{	
	TA_Sleep			(08,00,23,00,"TOT");
    TA_Sleep			(23,00,08,00,"TOT");		
};
