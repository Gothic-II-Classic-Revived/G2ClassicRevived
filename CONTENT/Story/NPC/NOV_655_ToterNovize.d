INSTANCE NOV_655_ToterNovize (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_ToterNovize;
	guild 		= GIL_NOV;
	id 			= 655;
	voice 		= 10;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal31, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_NOV_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_655;
};

FUNC VOID Rtn_Start_655 ()
{	
	TA_Sleep		(08,00,22,00,"NW_TROLLAREA_RITUALPATH_03");
    TA_Sleep		(22,00,08,00,"NW_TROLLAREA_RITUALPATH_03");
};
