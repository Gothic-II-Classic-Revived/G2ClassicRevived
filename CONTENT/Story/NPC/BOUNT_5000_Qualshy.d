
instance BOUNT_5000_Qualshy (Npc_Default)
{
	// ------ NSC ------
	name 		= "Q"; 
	guild 		= GIL_BDT;
	id 			= 5000;
	voice 		= 1;
	flags       = 0;
	npctype		= NPCTYPE_AMBIENT;
	
	aivar[AIV_MM_REAL_ID] = GIL_BOUNT;

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 50);

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_2H_BIG_01);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_HEAVY_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems 		(self, ITRW_BOLT, 30);

	// ------ visuals ------
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_W_Q, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_GRD_M_02);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};