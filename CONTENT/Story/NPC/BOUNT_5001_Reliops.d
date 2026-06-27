
instance BOUNT_5001_Reliops (Npc_Default)
{
	// ------ NSC ------
	name 		= "Reliops 'Eight Fingers'"; 
	guild 		= GIL_BDT;
	id 			= 5001;
	voice 		= 2;
	flags       = 0;
	npctype		= NPCTYPE_AMBIENT;
	
	aivar[AIV_MM_REAL_ID] = GIL_BOUNT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);
	EquipItem			(self, ITRW_REVIVED_BOW_SMALL_04);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems 		(self, ITRW_ARROW, 30);

	// ------ visuals ------
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Reliops, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_REVIVED_STT_M_02);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};