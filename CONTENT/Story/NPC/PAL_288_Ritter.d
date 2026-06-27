
instance Pal_288_Ritter (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Ritter;
	guild 		= GIL_PAL;
	id 			= 288;
	voice 		= 4;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT ;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
		
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Hum_Normal5, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_288;
};

FUNC VOID Rtn_Start_288 ()
{
	TA_Stand_Guarding	(08,00,23,00,"NW_CITY_WAY_TO_SHIP_02");
    TA_Stand_Guarding	(23,00,08,00,"NW_CITY_WAY_TO_SHIP_02");	
};
