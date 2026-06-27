instance BDT_3005_Drake (Npc_Default)
{
	// ------ NSC ------
	name 		= "Drake"; 
	guild 		= GIL_BDT;
	id 			= 3005;
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
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_02);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_LIGHT_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems	(self, ITRW_BOLT, 30);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Drake, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_GRD_M_02);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;

	daily_routine = Rtn_Start_3005;
};	 

	FUNC VOID Rtn_Start_3005()
	{
		TA_Practice_Sword (00,00,12,00,"FORTRESS_COURTYARD_009");
		TA_Practice_Sword (12,00,00,00,"FORTRESS_COURTYARD_009");
	};
