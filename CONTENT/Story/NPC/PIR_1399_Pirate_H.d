instance PIR_1399_Pirate_H (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_ADDON_PIRAT; //Greg
	guild 		= GIL_BDT; //GIL_PIR;
	id 			= 1399;
	voice 		= 13;
	flags       = 0;									
	npctype		= NPCTYPE_AMBIENT;

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 90);	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ItMw_Addon_PIR2hSword);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_P_Greg, BodyTex_P, ITAR_PIR_H_Addon);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ TA ------
	start_aistate = ZS_Bandit;
};
