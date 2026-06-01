
instance BOUNT_5009_Tygren (Npc_Default)
{
	// ------ NSC ------
	name 		= "Tygren 'The Traitor'"; 
	guild 		= GIL_BDT;
	id 			= 5009;
	voice 		= 10;
	flags       = 0;
	npctype		= NPCTYPE_AMBIENT;
	
	aivar[AIV_MM_REAL_ID] = GIL_BOUNT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_SHORT_01);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_02);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems 		(self, ITRW_BOLT, 30);

	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_N_Weak12, BodyTex_N, ITAR_REVIVED_STT_M_02);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};