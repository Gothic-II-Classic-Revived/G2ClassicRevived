
instance MIL_303_RICHTERWACHE (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_JudgeGuard;	
	guild 		= GIL_MIL;
	id 			= 303;
	voice 		= 7;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Normal_Sly, BodyTex_N, ITAR_REVIVED_GRD_H);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_303;
};

FUNC VOID Rtn_Start_303 ()
{	
	TA_Guard_Passage	(08,00,23,00,"NW_CITY_JUDGE_GUARD_02");
    TA_Guard_Passage	(23,00,08,00,"NW_CITY_JUDGE_GUARD_02");
};
