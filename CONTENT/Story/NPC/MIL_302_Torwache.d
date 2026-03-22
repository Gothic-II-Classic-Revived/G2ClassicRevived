
instance Mil_302_Torwache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_JudgeGuard;	
	guild 		= GIL_MIL;
	id 			= 302;
	voice 		= 6;
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
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Normal05, BodyTex_N, ITAR_REVIVED_GRD_H);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_302;
};

FUNC VOID Rtn_Start_302 ()
{	
	TA_Guard_Passage	(08,00,23,00,"NW_CITY_JUDGE_GUARD_01");
    TA_Guard_Passage	(23,00,08,00,"NW_CITY_JUDGE_GUARD_01");
};
