
instance BOUNT_5006_Salazar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Salazar 'The Sailor'"; 
	guild 		= GIL_BDT;
	id 			= 5006;
	voice 		= 7;
	flags       = 0;
	npctype		= NPCTYPE_AMBIENT;
	
	aivar[AIV_MM_REAL_ID] = GIL_BOUNT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_AXE_04);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_W_Salazar, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_REVIVED_STT_M_02);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};