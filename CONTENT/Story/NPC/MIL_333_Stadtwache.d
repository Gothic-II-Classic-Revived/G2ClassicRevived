
instance Mil_333_Stadtwache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Stadtwache;	
	guild 		= GIL_MIL;
	id 			= 333;
	voice 		= 6;
	flags       = NPC_FLAG_IMMORTAL;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Aivars ------
	aivar[AIV_NewsOverride] 	= TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_P_Hum_Normal3, Body_P_Hum_Naked, Body_Pale, Teeth_Yellow, ITAR_REVIVED_GRD_S);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_333;
};

FUNC VOID Rtn_Start_333 ()
{	
	TA_Guard_Passage		(08,00,22,00,"NW_CITY_ENTRANCE_BACK_GUARD_02");
    TA_Guard_Passage		(22,00,08,00,"NW_CITY_ENTRANCE_BACK_GUARD_02");
};
