
instance Mil_305_Torwache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_TORWACHE; 	
	guild 		= GIL_MIL;
	id 			= 305;
	voice 		= 3;
	flags       = NPC_FLAG_IMMORTAL;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Aivars ------
	aivar[AIV_NewsOverride] 	= TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_W_Hum_Normal8, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_GRD_H);	
	Mdl_SetModelFatness	(self, 0.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_305;
};

FUNC VOID Rtn_Start_305 ()
{	
	TA_Guard_Passage		(08,00,22,00,"NW_CITY_UPTOWN_GUARD_02");
    TA_Guard_Passage		(22,00,08,00,"NW_CITY_UPTOWN_GUARD_02");
};
