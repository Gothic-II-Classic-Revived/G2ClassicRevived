
instance Pal_210_Torwache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Ritter;
	guild 		= GIL_PAL;
	id 			= 210;
	voice 		= 4;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Bald1, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_210;
};

FUNC VOID Rtn_Start_210 ()
{
	TA_Stand_Guarding	(08,00,23,00,"NW_CITY_CITYHALL_ENTRY_01");
    TA_Stand_Guarding	(23,00,08,00,"NW_CITY_CITYHALL_ENTRY_01");	
};
