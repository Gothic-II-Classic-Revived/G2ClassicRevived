instance BAU_914_MAID (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_MAGD;
	guild 		= GIL_BAU;
	id 			= 914;
	voice 		= 16;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 4);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SICKLE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe", Face_W_Babe_Makeup1, Body_W_Babe_Naked, Body_White, Teeth_Gold, ITAR_BauBabe_L);			//ITAR_BauBabe_L
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_914;
};

FUNC VOID Rtn_Start_914 ()
{	
	TA_Cook_Stove			(07,00,20,00,"NW_BIGFARM_HOUSE_UP1_COOK");
    TA_Stand_Eating			(20,00,07,00,"NW_BIGFARM_STABLE_05");
};