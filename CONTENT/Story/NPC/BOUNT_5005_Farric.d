
instance BOUNT_5005_Farric (Npc_Default)
{
	// ------ NSC ------
	name 		= "Farric 'The Twisted Blade'"; 
	guild 		= GIL_BOUNT;
	id 			= 5005;
	voice 		= 1;
	flags       = 0;
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Tough_Skip, BodyTex_N, ITAR_REVIVED_GRD_M_02);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};