
instance BOUNT_5002_Drexar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Drexar 'The Duelist'"; 
	guild 		= GIL_BDT;
	id 			= 5002;
	voice 		= 3;
	flags       = 0;
	npctype		= NPCTYPE_AMBIENT;
	
	aivar[AIV_MM_REAL_ID] = GIL_BOUNT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_BROAD_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Drexar, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_GRD_L_02);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};