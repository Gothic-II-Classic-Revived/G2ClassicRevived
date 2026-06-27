INSTANCE NOV_609_Novize (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Novize;
	guild 		= GIL_NOV;
	id 			= 609;
	voice 		= 8;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal23, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_NOV_L);		
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_609;
};

FUNC VOID Rtn_Start_609 ()
{	
	TA_Pray_Innos_FP	(08,00,23,00,"NW_MONASTERY_CHURCH_03");
    TA_Sleep			(23,00,08,00,"NW_MONASTERY_NOVICE02_06");
};
FUNC VOID Rtn_Fegen_609 ()
{	
	TA_Stand_Sweeping	(08,00,23,00,"NW_MONASTERY_NOVICE02_02");
    TA_Stand_Sweeping	(23,00,08,00,"NW_MONASTERY_NOVICE02_02");
};

