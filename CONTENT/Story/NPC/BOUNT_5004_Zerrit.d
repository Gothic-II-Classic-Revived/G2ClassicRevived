
instance BOUNT_5004_Zerrit (Npc_Default)
{
	// ------ NSC ------
	name 		= "Zerrit 'The Beastmaster'"; 
	guild 		= GIL_BDT;
	id 			= 5004;
	voice 		= 5;
	flags       = 0;
	npctype		= NPCTYPE_AMBIENT;
	
	aivar[AIV_MM_REAL_ID] = GIL_BOUNT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_OLD_02);
	EquipItem			(self, ITRW_REVIVED_BOW_LONG_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems 		(self, ITRW_ARROW, 30);

	// ------ visuals ------
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_W_Zerrit, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_STT_H_02);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};