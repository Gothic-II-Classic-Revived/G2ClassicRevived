
instance Pal_286_RITTER (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_RITTER;
	guild 		= GIL_PAL;
	id 			= 286;
	voice 		= 9;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Hum_Normal3, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_286;
};

FUNC VOID Rtn_Start_286 ()
{
	TA_Practice_Sword 	(08,00,23,00,"NW_CITY_PALCAMP_02");
    TA_Practice_Sword	(23,00,08,00,"NW_CITY_PALCAMP_02");	
};

