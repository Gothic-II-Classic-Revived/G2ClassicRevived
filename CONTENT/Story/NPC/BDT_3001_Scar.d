instance BDT_3001_Scar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Scar"; 
	guild 		= GIL_BDT;
	id 			= 3001;
	voice 		= 4;
	flags       = 0;								
	npctype		= NPCTYPE_AMBIENT;
	
	//--------Aivars-----------
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 70);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_SCAR);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Scar, BodyTex_N, ITAR_REVIVED_EBR_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA ------
	daily_routine = Rtn_Start_3001;
	start_aistate = ZS_Bandit;
};	 

	FUNC VOID Rtn_Start_3001()
	{
		TA_Stand_ArmsCrossed (00,00,12,00,"FORTRESS_FLOOR_TOP_006");
		TA_Stand_ArmsCrossed (12,00,00,00,"FORTRESS_FLOOR_TOP_006");
	};
