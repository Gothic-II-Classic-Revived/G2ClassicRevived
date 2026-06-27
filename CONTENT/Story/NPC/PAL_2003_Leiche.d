instance PAL_2003_Leiche  (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_PALADIN;
	guild 		= GIL_PAL;
	id 			= 2003;
	voice 		= 4;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);											
		
	// ------ Kampf-Taktik ------
	fight_tactic = FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_PALADIN_02); 
	
	// ------ Inventory ------
	B_CreateAmbientInv (self);	
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal36, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_2003;
};

FUNC VOID Rtn_Start_2003 ()
{	
	TA_Stand_Guarding		(08,00,23,00,"OW_SILVESTROMINE_036");
    TA_Stand_Guarding		(23,00,08,00,"OW_SILVESTROMINE_036");
};
