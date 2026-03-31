
instance DJG_700_Sylvio (Npc_Default)
{
	// ------ NSC ------
	name 		= "Sylvio";
	guild 		= GIL_DJG;
	id 			= 700;
	voice 		= 9;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	aivar [AIV_DropDeadAndKill] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 70);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_01);	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_N_Scar, BodyTex_N, ITAR_DJG_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_700;
};

FUNC VOID Rtn_Start_700 ()
{
	TA_Sit_Chair						(08,00,23,00,"NC_TAVERN_SIT");
    TA_Sit_Chair						(23,00,08,00,"NC_TAVERN_SIT");		
};


FUNC VOID Rtn_IceWait1_700 ()
{
	TA_Smoke_Joint						(00,00,	23,00,"OW_PATH_075_GUARD2");    
	TA_Smoke_Joint						(23,00,	24,00,"OW_PATH_075_GUARD2");     
};

FUNC VOID Rtn_IceWait2_700 ()
{
	TA_Stand_Guarding					(00,00,	23,00,"OW_DJG_ICEREGION_WAIT2_01");    
	TA_Stand_Guarding					(23,00,	24,00,"OW_DJG_ICEREGION_WAIT2_01");     
};

FUNC VOID Rtn_IceDragon_700 ()
{
	TA_Stand_Guarding					(00,00,	23,00,"OW_ICEDRAGON_01");    
	TA_Stand_Guarding					(23,00,	24,00,"OW_ICEDRAGON_01");     
};

