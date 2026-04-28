instance NONE_705_ANGAR (Npc_Default)
{
	// ------ NSC ------
	name 		= "Angar";
	guild 		= GIL_NONE;
	id 			= 705;
	voice 		= 4;
	flags       = 0;					//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_ANGAR);
	CreateInvItems (self, ITPO_REVIVED_HEALTH_03, 6);									
	CreateInvItems (self, ITMI_REVIVED_OLDCOIN, 1);	//Joly: damit man seine Leiche findet, wenn er im Kampf stirbt!									
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_B_CorAngar, BodyTex_B, ITAR_CorAngar);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_705;
};

FUNC VOID Rtn_PreStart_705 ()
{
	TA_Stand_ArmsCrossed					(08,00,16,00,"OCC_CHAPEL_ENTRANCE");
	TA_Practice_Sword						(16,00,18,00,"OCC_CORNER_1");
	TA_Pray_Innos							(18,00,20,00,"OCC_CORNER_PRAY");
	TA_Stand_ArmsCrossed					(20,00,22,00,"OCC_CHAPEL_ENTRANCE");
    TA_Sleep								(22,00,08,00,"OCC_CHAPEL_LEFT_ROOM");		
};

FUNC VOID Rtn_Start_705 ()
{
	TA_Sit_Campfire					(08,00,23,00,"PATH_TO_PLATEAU03_002");
    TA_Sit_Campfire					(23,00,08,00,"PATH_TO_PLATEAU03_002");		
};

FUNC VOID Rtn_Zwischenstop_705 ()
{
	TA_Sit_Campfire					(08,00,23,00,"FORTRESS_COURTYARD_012");
    TA_Sit_Campfire					(23,00,08,00,"FORTRESS_COURTYARD_012");		
};

FUNC VOID Rtn_Angriff_705 ()
{
	TA_Guide_Player					(08,00,23,00,"FORTRESS_MINE_021");
    TA_Guide_Player					(23,00,08,00,"FORTRESS_MINE_021");		
};

FUNC VOID Rtn_RunToEntrance_705 ()
{
	TA_RunToWP 					(08,00,23,00,"FORTRESS_MINE_003");
    TA_RunToWP					(23,00,08,00,"FORTRESS_MINE_003");		
};

FUNC VOID Rtn_LeavingOW_705 ()
{
	TA_Sit_Campfire					(08,00,23,00,"OW_CAVALORN_01");
    TA_Sit_Campfire					(23,00,08,00,"OW_CAVALORN_01");		
};

FUNC VOID Rtn_Tot_705 ()
{
	TA_RunToWP 					(08,00,23,00,"TOT");
    TA_RunToWP					(23,00,08,00,"TOT");		
};

