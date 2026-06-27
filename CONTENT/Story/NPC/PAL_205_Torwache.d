
instance Pal_205_Torwache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Torwache;
	guild 		= GIL_PAL;
	id 			= 205;
	voice 		= 12;
	flags       = NPC_FLAG_IMMORTAL;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	
	
	// ------ Aivars ------
	aivar[AIV_NewsOverride] 	= TRUE;
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Old1, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_205;
};
//
FUNC VOID Rtn_Start_205 ()
{
	TA_Guard_Passage	(08,00,23,00,"NW_CITYHALL_GUARD_02");
    TA_Guard_Passage	(23,00,08,00,"NW_CITYHALL_GUARD_02");	
};
