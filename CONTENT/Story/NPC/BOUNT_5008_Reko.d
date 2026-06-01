
instance BOUNT_5008_Reko (Npc_Default)
{
	// ------ NSC ------
	name 		= "Reko 'The Joker'"; 
	guild 		= GIL_BOUNT;
	id 			= 5008;
	voice 		= 1;
	flags       = 0;
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_N_NormalBart22, BodyTex_N, ITAR_REVIVED_SFB_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};