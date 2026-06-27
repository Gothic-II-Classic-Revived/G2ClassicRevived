
instance BOUNT_5008_Reko (Npc_Default)
{
	// ------ NSC ------
	name 		= "Reko 'The Joker'"; 
	guild 		= GIL_BDT;
	id 			= 5008;
	voice 		= 9;
	flags       = 0;
	npctype		= NPCTYPE_AMBIENT;
	
	aivar[AIV_MM_REAL_ID] = GIL_BOUNT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_2H_PICKAXE);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_W_Reko, Body_W_Hum_Normal2, Body_White, Teeth_Yellow, ITAR_REVIVED_SFB_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};