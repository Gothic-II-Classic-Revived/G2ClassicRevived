
instance Pal_204_Torwache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Torwache;
	guild 		= GIL_PAL;
	id 			= 204;
	voice 		= 9;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	//------- AI Vars ----------
	aivar[AIV_NewsOverride] 	= TRUE;
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																		

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ITMW_REVIVED_2H_SWORD_PALADIN_02);
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal40, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 0.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_204;
};

FUNC VOID Rtn_Start_204 ()
{
	TA_Guard_Passage	(08,00,23,00,"NW_CITYHALL_GUARD_01");
    TA_Guard_Passage	(23,00,08,00,"NW_CITYHALL_GUARD_01");	
};
