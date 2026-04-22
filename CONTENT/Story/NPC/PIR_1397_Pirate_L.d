instance PIR_1397_Pirate_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_ADDON_PIRAT; //Hank
	guild 		= GIL_BDT; //GIL_PIR;
	id 			= 1397;
	voice 		= 6;
	flags       = 0;									
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																		
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ItMw_Addon_PIR1hSword);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Lefty, BodyTex_N, ITAR_PIR_L_Addon);	  
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};