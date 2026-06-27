instance BDT_3007_Sly (Npc_Default)
{
	// ------ NSC ------
	name 		= "Sly"; 
	guild 		= GIL_BDT;
	id 			= 3007;
	voice 		= 4;
	flags       = 0;								
	npctype		= NPCTYPE_AMBIENT;
	
	//--------Aivars-----------
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_SHORT_02);
	EquipItem			(self, ITRW_REVIVED_BOW_SMALL_04);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems		(self, ITRW_ARROW, 30);
	CreateInvItems		(self, ITAM_REVIVED_PROT_MELEE_02, 1);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Sly, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_STT_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ TA ------
	daily_routine = Rtn_Start_3007;
	start_aistate = ZS_Bandit; 
};	 

	FUNC VOID Rtn_Start_3007()
	{
		TA_Stand_ArmsCrossed (00,00,12,00,"FORTRESS_FLOOR_GROUND_005_ARMORY_003");
		TA_Stand_ArmsCrossed (12,00,00,00,"FORTRESS_FLOOR_GROUND_005_ARMORY_003");
	};
