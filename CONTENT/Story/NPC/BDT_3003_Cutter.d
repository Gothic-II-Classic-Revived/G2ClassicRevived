instance BDT_3003_Cutter (Npc_Default)
{
	// ------ NSC ------
	name 		= "Cutter"; 
	guild 		= GIL_BDT;
	id 			= 3003;
	voice 		= 4;
	flags       = 0;								
	npctype		= NPCTYPE_AMBIENT;
	
	//--------Aivars-----------
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_03);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_LIGHT_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems	(self, ITRW_BOLT, 30);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_P_Weak_Cutter, BodyTex_P, ITAR_REVIVED_GRD_H_02);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA ------
	daily_routine = Rtn_Start_3003;
	start_aistate = ZS_Bandit;
};	 

	FUNC VOID Rtn_Start_3003()
	{
		TA_Stand_ArmsCrossed (00,00,12,00,"FORTRESS_COURTYARD_008");
		TA_Stand_ArmsCrossed (12,00,00,00,"FORTRESS_COURTYARD_008");
	};
