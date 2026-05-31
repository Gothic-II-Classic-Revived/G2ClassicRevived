
instance BOUNT_5009_ (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BOUNTY; 
	guild 		= GIL_BOUNT;
	id 			= 5009;
	voice 		= 1;
	flags       = 0;
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_N_ArkhanQualshy, BodyTex_N, ITAR_Vlk_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};