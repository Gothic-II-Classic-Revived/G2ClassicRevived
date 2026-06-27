
instance Pal_207_Girion_DI (Npc_Default)
{
	// ------ NSC ------
	name 		= "Girion";
	guild 		= GIL_PAL;
	id 			= 2070;
	voice 		= 8;
	flags       = 0;																	
	npctype		= NPCTYPE_FRIEND;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_W_Girion, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_2070;
};

FUNC VOID Rtn_Start_2070 ()
{
	TA_Sit_Bench			(08,00,23,00,"SHIP_DECK_18");
	TA_Sit_Bench			(23,00,08,00,"SHIP_DECK_18");
};
