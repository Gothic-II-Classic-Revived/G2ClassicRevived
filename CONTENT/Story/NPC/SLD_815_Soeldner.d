

instance SLD_815_Soeldner (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_SOELDNER; 
	guild 		= GIL_SLD;
	id 			= 815;
	voice 		= 6;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_AXE_02);
	EquipItem			(self, ITRW_REVIVED_BOW_SMALL_03);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal10, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_ORG_H);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_815;
};

FUNC VOID Rtn_Start_815 ()
{
	TA_Sit_Campfire			(08,00,22,00,"NW_BIGFARM_VORPOSTEN1_01");
    TA_Sit_Campfire			(22,00,08,00,"NW_BIGFARM_VORPOSTEN1_01");		
};

FUNC VOID Rtn_BengarsFarm_815 ()
{
	TA_Smalltalk		(08,00,22,00,"NW_FARM3_PATH_02");
    TA_Smalltalk		(22,00,08,00,"NW_FARM3_PATH_02");		
};

