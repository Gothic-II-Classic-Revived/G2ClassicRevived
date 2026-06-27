instance BDT_1016_Bandit_M (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1016;
	voice 		= 1;
	flags       = 0;			
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 25);	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	
	
	// ------ Equippte Waffen ------		
	EquipItem			(self, ITMW_REVIVED_1H_AXE_01);
	EquipItem			(self, ITRW_REVIVED_BOW_SMALL_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------				
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_B_Hum_Normal2, Body_B_Hum_Naked, Body_Black, Teeth_Yellow, ITAR_REVIVED_BDT_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};
