
instance DJG_708_Kurgan (Npc_Default)
{
	// ------ NSC ------
	name 		= "Kurgan";
	guild 		= GIL_DJG;
	id 			= 708;
	voice 		= 1;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 35);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_01);	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_ImportantGrey, BodyTex_N, ITAR_DJG_L);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_708;
};

FUNC VOID Rtn_PreStart_708()
{
	TA_Stand_Guarding						(08,00,23,00,"OW_PATH_DJG_001");
    TA_Stand_Guarding						(23,00,08,00,"OW_PATH_DJG_001");	
};

FUNC VOID Rtn_StartPass_708()
{
	TA_Stand_Guarding						(08,00,23,00,"OW_PATH_ORETRAIL_2_DJGCAMP_01");
    TA_Stand_Guarding						(23,00,08,00,"OW_PATH_ORETRAIL_2_DJGCAMP_01");
};

FUNC VOID Rtn_Start_708()
{
	TA_Roast_Scavenger						(08,00,23,00,"OW_DJG_VORPOSTEN_03");
    TA_Roast_Scavenger						(23,00,08,00,"OW_DJG_VORPOSTEN_03");	
};
