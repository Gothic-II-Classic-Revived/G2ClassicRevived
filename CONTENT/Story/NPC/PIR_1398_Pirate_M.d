instance PIR_1398_Pirate_M (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_ADDON_PIRAT; //Angus
	guild 		= GIL_BDT; //GIL_PIR;
	id 			= 1398;
	voice 		= 1;
	flags       = 0;			
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 70);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ItMw_Addon_PIR2hAxe);
	CreateInvItems (self, ITAM_REVIVED_MELEE_01, 1);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart21, BodyTex_N, ITAR_PIR_M_Addon);	  
	Mdl_SetModelFatness	(self, 1.3);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};
