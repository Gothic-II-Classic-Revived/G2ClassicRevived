
instance BOUNT_5005_Farric (Npc_Default)
{
	// ------ NSC ------
	name 		= "Farric 'The Twisted Blade'"; 
	guild 		= GIL_BDT;
	id 			= 5005;
	voice 		= 6;
	flags       = 0;
	npctype		= NPCTYPE_AMBIENT;
	
	aivar[AIV_MM_REAL_ID] = GIL_BOUNT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 50);

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_HEAVY_02);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Farric, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_GRD_M_02);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};