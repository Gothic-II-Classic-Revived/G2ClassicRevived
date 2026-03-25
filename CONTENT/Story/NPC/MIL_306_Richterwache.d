
instance MIL_306_RICHTERWACHE (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_JudgeGuard; 	
	guild 		= GIL_MIL;
	id 			= 306;
	voice 		= 7;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																		
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_L_ToughBald01, BodyTex_L, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_306;
};

FUNC VOID Rtn_Start_306 ()
{	
	TA_Stand_Guarding	(08,00,18,45,"NW_CITY_RICHTER");
    TA_Stand_Guarding	(22,00,08,00,"NW_CITY_RICHTER");
};
