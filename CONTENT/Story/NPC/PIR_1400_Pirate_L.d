instance PIR_1400_Pirate_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_ADDON_PIRAT; //Skip
	guild 		= GIL_BDT; //GIL_PIR;
	id 			= 1400;
	voice 		= 1;
	flags       = 0;								
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ItMw_ShortSword2);
	EquipItem (self, ITRW_REVIVED_BOW_SMALL_04); 

	CreateInvItems (self, ITMS_REVIVED_BALTRAMPACKAGE_PIRATES, 1);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_N_Pirat01, BodyTex_N, ITAR_PIR_L_Addon);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};
