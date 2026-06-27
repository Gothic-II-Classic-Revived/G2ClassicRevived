INSTANCE NOV_608_Garwig (Npc_Default)
{
	// ------ NSC ------
	name 		= "Garwig";
	guild 		= GIL_NOV;
	id 			= 608;
	voice 		= 6;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 1);			
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ITMW_REVIVED_2H_STAFF_NOVICE_01); 																	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_L_Garwig, Body_L_Hum_Naked, Body_Latino, Teeth_Normal, ITAR_NOV_L);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_608;
};

FUNC VOID Rtn_Start_608 ()
{	
	TA_Guard_Hammer	(08,00,23,00,"NW_MONASTERY_SANCTUM_02");
    TA_Guard_Hammer	(23,00,08,00,"NW_MONASTERY_SNACTUM_02");
};
