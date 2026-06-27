instance BDT_1011_Bandit_M (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1011;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Hum_Normal1, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_BDT_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	// ------ TA ------
	start_aistate = ZS_Bandit;
};

