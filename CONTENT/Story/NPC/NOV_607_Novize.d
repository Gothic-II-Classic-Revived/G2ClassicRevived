INSTANCE NOV_607_Novize (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Novize;
	guild 		= GIL_NOV;
	id 			= 607;
	voice 		= 08;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 1);
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ITMW_REVIVED_2H_STAFF_NOVICE_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_W_Hum_Normal22, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_NOV_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_607;
};

FUNC VOID Rtn_Start_607 ()
{	
	TA_Stomp_Herb		(08,00,12,00,"NW_MONASTERY_WINEMAKER_05");
	TA_Pray_Innos_FP	(12,00,13,00,"NW_MONASTERY_CHURCH_03");
    TA_Stomp_Herb		(13,00,22,15,"NW_MONASTERY_WINEMAKER_05");
    TA_Sleep			(22,15,08,00,"NW_MONASTERY_NOVICE03_05");
};
FUNC VOID Rtn_Exchange_607 ()
{	
	TA_Smalltalk		(09,00,22,04,"NW_MONASTERY_GRASS_01");
    TA_Sleep			(22,04,09,00,"NW_MONASTERY_NOVICE03_05");
};

