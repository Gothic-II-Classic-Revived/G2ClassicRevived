INSTANCE NOV_604_Dyrian (Npc_Default)
{
	// ------ NSC ------
	name 		= "Dyrian";
	guild 		= GIL_NOV;
	id 			= 604;
	voice 		= 13;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 1);
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ITMW_REVIVED_2H_STAFF_NOVICE_01); 																
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self,ItSc_Sleep,1);
	
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_P_Tough_Torrez, BodyTex_P, ITAR_NOV_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_604;
};

FUNC VOID Rtn_Start_604()
{	
	TA_Sit_Bench			(08,00,10,00,"NW_MONASTERY_CHURCH_BENCH_004");
	TA_Pray_Innos_FP		(10,00,12,00,"NW_MONASTERY_CHURCH_03");
    TA_Stand_WP				(12,00,23,30,"NW_MONASTERY_GRASS_04");
    TA_Sleep				(23,30,08,00,"NW_MONASTERY_NOVICE01_04");
};

FUNC VOID Rtn_Favour_604()
{	
	TA_Rake_FP		(08,00,23,30,"NW_MONASTERY_HERB_05");
    TA_Sleep		(23,30,08,00,"NW_MONASTERY_NOVICE01_04");
};

FUNC VOID Rtn_NoFavour_604()
{	
	TA_Stand_Drinking	(08,00,23,30,"NW_TAVERNE_IN_06");
    TA_Stand_Drinking	(23,30,08,00,"NW_TAVERNE_IN_06");
};
