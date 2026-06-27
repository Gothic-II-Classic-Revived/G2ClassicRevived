
instance Pal_211_Torwache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_RITTER;
	guild 		= GIL_PAL;
	id 			= 211;
	voice 		= 12;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Hum_Bald2, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_211;
};

FUNC VOID Rtn_Start_211 ()
{
	TA_Stand_Guarding	(08,00,23,00,"NW_CITY_CITYHALL_WARROOM_04");
    TA_Stand_Guarding	(23,00,08,00,"NW_CITY_CITYHALL_WARROOM_04");	
};
