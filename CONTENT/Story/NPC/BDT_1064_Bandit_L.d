instance BDT_1064_Bandit_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Wache; 
	guild 		= GIL_BDT;
	id 			= 1064;
	voice 		= 4;
	flags       = 0;								
	npctype		= NPCTYPE_MAIN;
	
	//--------Aivars-----------
	aivar[AIV_EnemyOverride] = TRUE; 
	aivar[AIV_NewsOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 25);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_B_Hum_Bald2, Body_B_Hum_Naked, Body_Black, Teeth_Gold, ITAR_REVIVED_BDT_H);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA ------
	daily_routine = Rtn_Start_1064;
};	 
	
func VOID RTn_Start_1064()
{
	TA_Guard_Passage (00,00,12,00,"NW_CASTLEMINE_TOWER_BEYOND");
	TA_Guard_Passage (12,00,00,00,"NW_CASTLEMINE_TOWER_BEYOND");
};
