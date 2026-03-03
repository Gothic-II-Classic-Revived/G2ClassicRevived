
instance PAL_217_Marcos  (Npc_Default)
{
	// ------ NSC ------
	name 		= "Marcos";
	guild 		= GIL_PAL;
	id 			= 217;
	voice 		= 4;
	flags       = NPC_FLAG_IMMORTAL;																	
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);													
		
	// ------ Kampf-Taktik ------
	fight_tactic = FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_LIGHT_02);
	
	// ------ Inventory ------
	CreateInvItems (self, ITPO_REVIVED_HEALTH_03,5);
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_P_Tough_Rodriguez, BodyTex_P, ITAR_REVIVED_PAL_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_217;
};

FUNC VOID Rtn_Start_217 ()
{	
	TA_Stand_Guarding		(08,00,23,00,"OW_PATH_WATCHTOWER_004");
    TA_Stand_Guarding		(23,00,08,00,"OW_PATH_WATCHTOWER_004");
};


