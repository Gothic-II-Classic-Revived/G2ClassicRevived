INSTANCE NOV_653_ToterNovize (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_ToterNovize;
	guild 		= GIL_NOV;
	id 			= 653;
	voice 		= 3;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal29, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_NOV_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_653;
};

FUNC VOID Rtn_Start_653 ()
{	
	TA_Sleep		(08,00,22,00,"NW_TROLLAREA_RITUALPATH_04");
    TA_Sleep		(22,00,08,00,"NW_TROLLAREA_RITUALPATH_04");
};
