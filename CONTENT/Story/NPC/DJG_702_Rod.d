
instance DJG_702_Rod (Npc_Default)
{
	// ------ NSC ------
	name 		= "Rod";
	guild 		= GIL_DJG;
	id 			= 702;
	voice 		= 6;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_FRIEND;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_ROD);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ITPO_REVIVED_HEALTH_02, 6);									
	CreateInvItems (self, ITMI_REVIVED_OLDCOIN, 1);	//Joly: damit man seine Leiche findet, wenn er im Kampf stirbt!									
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_ToughBart01, BodyTex_N, ITAR_DJG_L);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_702;
};

FUNC VOID Rtn_Start_702 ()
{
	TA_Sit_Campfire						(08,00,23,00,"OW_CAVALORN_01");
    TA_Sit_Campfire						(23,00,08,00,"OW_CAVALORN_01");	
};

FUNC VOID Rtn_SwampWait1_702 ()
{
	TA_Guide_Player				(08,00,23,00,"PSI_START");
    TA_Guide_Player				(23,00,08,00,"PSI_START");		
};

FUNC VOID Rtn_SwampWait2_702 ()
{
	TA_RunToWP				(08,00,23,00,"PSI_START");	//Joly: TA_RunToWP!! Sonst folgt er SC zum Drachen, ohne dass SC mit ihm gesprochen hat
    TA_RunToWP				(23,00,08,00,"PSI_START");		
};

FUNC VOID Rtn_SwampDragon_702 ()
{
	TA_RunToWP 				(08,00,23,00,"OW_SWAMPDRAGON_01");
    TA_RunToWP				(23,00,08,00,"OW_SWAMPDRAGON_01");		
};
