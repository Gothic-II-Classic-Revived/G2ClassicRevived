INSTANCE PC_Fighter_DJG (Npc_Default)
{
	// ------ NSC ------
	name 		= "Gorn";
	guild 		= GIL_DJG;
	id 			= 704;
	voice 		= 12;
	flags       = 0;																	
	npctype		= NPCTYPE_FRIEND;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 100);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_2H_AXE_GORN);
	
	CreateInvItems (self, ITPO_REVIVED_HEALTH_02, 6);									
	CreateInvItems (self, ITMI_REVIVED_OLDCOIN, 1);	//Joly: damit man seine Leiche findet, wenn er im Kampf stirbt!									

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
			
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter",Face_B_Gorn, BodyTex_B, ITAR_DJG_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_704;
};

FUNC VOID Rtn_PreStart_704 ()
{	
	TA_Stand_ArmsCrossed				(08,00,23,00,"OW_PATH_DJG_002");
    TA_Stand_ArmsCrossed				(23,00,08,00,"OW_PATH_DJG_002");
};

FUNC VOID Rtn_StartPass_704()
{
	TA_Stand_ArmsCrossed						(08,00,23,00,"OW_PATH_ORETRAIL_2_DJGCAMP_02");
    TA_Stand_ArmsCrossed						(23,00,08,00,"OW_PATH_ORETRAIL_2_DJGCAMP_02");
};

FUNC VOID Rtn_Start_704 ()
{	
	TA_Sit_Campfire					(08,00,23,00,"PATH_TO_PLATEAU03_002");
    TA_Stand_Guarding				(23,00,08,00,"PATH_TO_PLATEAU03_001");
};

FUNC VOID Rtn_RunToRockRuinBridge_704 ()
{	
	TA_RunToWP		(08,00,23,00,"LOCATION_19_03_PATH_RUIN10");
    TA_RunToWP		(23,00,08,00,"LOCATION_19_03_PATH_RUIN10");
};

FUNC VOID Rtn_Tot_704 ()
{	
	TA_Stand_ArmsCrossed				(08,00,23,00,"TOT");
    TA_Stand_ArmsCrossed				(23,00,08,00,"TOT");
};
