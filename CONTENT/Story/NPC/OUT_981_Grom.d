INSTANCE OUT_981_GROM (Npc_Default)
{
	// ------ NSC ------
	name 		= "Grom";
	guild 		= GIL_OUT;
	id 			= 981;
	voice 		= 08;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 10);	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_SHORT_04); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_P_Gilbert, BodyTex_P, ITAR_BAU_L);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_981;
};

FUNC VOID Rtn_Start_981 ()
{	
	TA_Saw 			(08,00,23,00,"NW_CASTLEMINE_TROLL_04_C"); 
    TA_Sleep		(23,00,08,00,"NW_CASTLEMINE_TROLL_04_B");
};