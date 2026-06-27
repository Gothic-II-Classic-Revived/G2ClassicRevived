

instance BAU_910_Maria (Npc_Default)
{
	// ------ NSC ------
	name 		= "Maria";
	guild 		= GIL_BAU;
	id 			= 910;
	voice 		= 17;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 4);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SICKLE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe8", Face_W_Maria, Body_W_Babe_Naked, Body_White, Teeth_Gold, ITAR_BauBabe_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_910;
};

FUNC VOID Rtn_Start_910 ()
{	
   	TA_Sit_Throne		(08,00,22,00,"NW_BIGFARM_HOUSE_UP1_SESSEL");
    TA_Sleep			(22,00,08,00,"NW_BIGFARM_HOUSE_UP1_04");
};


