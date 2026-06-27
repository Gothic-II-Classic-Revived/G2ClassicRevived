INSTANCE NONE_100_Xardas (Npc_Default)
{
	// ------ NSC ------
	name 		= "Xardas";
	guild 		= GIL_NONE;
	id 			= 100;
	voice 		= 14;
	flags       = NPC_FLAG_IMMORTAL;																	
	npctype		= NPCTYPE_FRIEND;
	
	// ------ AIVARS ------
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft] 		= TRUE;
	aivar[AIV_IGNORE_Sheepkiller] 	= TRUE;
	aivar[AIV_IgnoresArmor] 		= TRUE;
	aivar[AIV_MagicUser] = MAGIC_ALWAYS;

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 300);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	
	// ------ Inventory ------
	//B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Xardas, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_DMT_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_100;
};

FUNC VOID Rtn_PreStart_100 ()
{	
	TA_Stand_ArmsCrossed	(08,00,23,00,"NW_XARDAS_START");
    TA_Stand_ArmsCrossed	(23,00,08,00,"NW_XARDAS_START");
};
FUNC VOID Rtn_Start_100 ()
{	
    TA_Read_Bookstand 	(00,00,08,00,"NW_XARDAS_TOWER_IN1_22");
	TA_Potion_Alchemy	(08,00,12,00,"NW_XARDAS_TOWER_IN1_29");
    TA_Read_Bookstand 	(12,00,18,00,"NW_XARDAS_TOWER_IN1_22");
	TA_Runemaking		(18,00,20,00,"NW_XARDAS_TOWER_IN1_28");
    TA_Read_Bookstand 	(20,00,00,00,"NW_XARDAS_TOWER_IN1_22");
};
FUNC VOID Rtn_RitualInnosEyeRepair_100 ()
{	
	TA_Stand_ArmsCrossed	(08,00,23,00,"NW_TROLLAREA_RITUAL_01");
    TA_Stand_ArmsCrossed	(23,00,08,00,"NW_TROLLAREA_RITUAL_01");
};

FUNC VOID Rtn_RitualInnosEye_100 ()
{	
	TA_Circle	(08,00,23,00,"NW_TROLLAREA_RITUAL_01");
    TA_Circle	(23,00,08,00,"NW_TROLLAREA_RITUAL_01");
};


FUNC VOID Rtn_Tot_100 ()
{	
	TA_Circle	(08,00,23,00,"TOT");
    TA_Circle	(23,00,08,00,"TOT");
};
