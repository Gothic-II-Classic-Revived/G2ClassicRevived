instance BDT_3004_Bullit (Npc_Default)
{
	// ------ NSC ------
	name 		= "Bullit"; 
	guild 		= GIL_BDT;
	id 			= 3004;
	voice 		= 4;
	flags       = 0;								
	npctype		= NPCTYPE_AMBIENT;
	
	//--------Aivars-----------
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_LONG_02);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_LIGHT_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems	(self, ITRW_BOLT, 30);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Thief", Face_W_Bullit, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_GRD_M_02);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA ------
	daily_routine = Rtn_Start_3004;
	start_aistate = ZS_Bandit;
};	 

	FUNC VOID Rtn_Start_3004()
	{
		TA_Sit_Bench (00,00,12,00,"FORTRESS_COURTYARD_008");
		TA_Sit_Bench (12,00,00,00,"FORTRESS_COURTYARD_008");
	};
