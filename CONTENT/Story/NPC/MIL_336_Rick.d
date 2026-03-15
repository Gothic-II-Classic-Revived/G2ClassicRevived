
instance Mil_336_Rick (Npc_Default)
{
	// ------ NSC ------
	name 		= "Rick";	
	guild 		= GIL_MIL;  
	id 			= 336;
	voice 		= 10;
	flags       = 0;																
	npctype		= NPCTYPE_MILOUT_MAIN;
	
	// ------ AIVARs ------
	aivar[AIV_DropDeadAndKill] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fatbald", Face_N_Ricelord, BodyTex_N, ITAR_REVIVED_GRD_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_336;
};

FUNC VOID Rtn_Start_336()
{	
	TA_Smalltalk 	(08,00,22,00,"NW_FARM3_PATH_02");
    TA_Smalltalk	(22,00,08,00,"NW_FARM3_PATH_02");
};

FUNC VOID Rtn_MilComing_336()
{	
	TA_Stand_ArmsCrossed 	(08,00,22,00,"NW_FARM3_HOUSE");
    TA_Stand_ArmsCrossed	(22,00,08,00,"NW_FARM3_HOUSE");
};

FUNC VOID Rtn_Flucht2_336()
{	
	TA_Smalltalk 	(08,00,22,00,"NW_RUMBOLD_FLUCHT2");
    TA_Smalltalk	(22,00,08,00,"NW_RUMBOLD_FLUCHT2");
};
FUNC VOID Rtn_Flucht3_336()
{	
	TA_Smalltalk 	(08,00,22,00,"NW_RUMBOLD_FLUCHT3");
    TA_Smalltalk	(22,00,08,00,"NW_RUMBOLD_FLUCHT3");
};
