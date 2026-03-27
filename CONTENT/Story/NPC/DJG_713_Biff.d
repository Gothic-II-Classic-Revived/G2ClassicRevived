
// ***********
// Oldworld
// ***********

instance DJG_713_Biff (Npc_Default)
{
	// ------ NSC ------
	name 		= "Biff"; 
	guild 		= GIL_DJG;
	id 			= 713;
	voice 		= 7;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	aivar[AIV_PARTYMEMBER] = TRUE;	
	aivar[AIV_ToughGuy] 		= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IgnoresArmor] 		= TRUE;

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 50);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_AXE_BIFF); //Joly: Axt!!!!! Biff keine andere Waffe geben!!!!!!!!! DOCH DEFAULT MSSIG- die instanz gibts nicht mehr 

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ITPO_REVIVED_HEALTH_02, 4);									
	CreateInvItems (self, ITMI_REVIVED_OLDCOIN, 1);	//Joly: damit man seine Leiche findet, wenn er im Kampf stirbt!									
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Normal16, BodyTex_N, ITAR_DJG_L);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_713;
};

FUNC VOID Rtn_PreStart_713 ()
{
	TA_Smalltalk						(08,00,23,00,"OW_PATH_DJG_005");
    TA_Smalltalk						(23,00,08,00,"OW_PATH_DJG_005");		
};

FUNC VOID Rtn_StartPass_713()
{
	TA_Sit_Campfire						(08,00,23,00,"OW_PATH_ORETRAIL_2_DJGCAMP_005");
    TA_Sit_Campfire						(23,00,08,00,"OW_PATH_ORETRAIL_2_DJGCAMP_005");
};

FUNC VOID Rtn_Start_713 ()
{
	TA_Sit_Bench		(08,00,23,00,"OW_DJG_VORPOSTEN_01");
    TA_Sit_Bench		(23,00,08,00,"OW_DJG_VORPOSTEN_01");		
};

FUNC VOID Rtn_Follow_713 ()
{
	TA_Follow_Player					(08,00,23,00,"OW_PATH_DJG_000");
    TA_Follow_Player					(23,00,08,00,"OW_PATH_DJG_000");		
};

FUNC VOID Rtn_Stay_Swamp_713 ()
{
	TA_Stand_Guarding 					(08,00,23,00,"OW_BIFFWAIT_SWAMPDRAGON");
    TA_Stand_Guarding					(23,00,08,00,"OW_BIFFWAIT_SWAMPDRAGON");		
};

FUNC VOID Rtn_Stay_Rock_713 ()
{
	TA_Stand_Guarding					(08,00,23,00,"OW_BIFFWAIT_STONEDRAGON");
    TA_Stand_Guarding					(23,00,08,00,"OW_BIFFWAIT_STONEDRAGON");		
};

FUNC VOID Rtn_Stay_Fire_713 ()
{
	TA_Stand_Guarding					(08,00,23,00,"OW_BIFFWAIT_FIREDRAGON");
    TA_Stand_Guarding					(23,00,08,00,"OW_BIFFWAIT_FIREDRAGON");		
};

FUNC VOID Rtn_Stay_Ice_713 ()
{
	TA_Stand_Guarding					(08,00,23,00,"OW_BIFFWAIT_ICEDRAGON");
    TA_Stand_Guarding					(23,00,08,00,"OW_BIFFWAIT_ICEDRAGON");		
};
FUNC VOID Rtn_Stay_AwayFromOC_713 ()
{
	TA_Stand_Guarding					(08,00,23,00,"OW_PATH_298");
    TA_Stand_Guarding					(23,00,08,00,"OW_PATH_298");		
};

FUNC VOID Rtn_RunsToPass_713 ()
{
	TA_RunToWP					(08,00,23,00,"Start");
    TA_RunToWP					(23,00,08,00,"Start");		
};
