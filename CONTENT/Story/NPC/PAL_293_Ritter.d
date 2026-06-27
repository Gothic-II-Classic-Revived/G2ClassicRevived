
instance Pal_293_Ritter (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Ritter;
	guild 		= GIL_PAL;
	id 			= 293;
	voice 		= 12;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
		
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_P_Hum_Normal4, Body_P_Hum_Naked, Body_Pale, Teeth_Broken, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_293;
};

FUNC VOID Rtn_Start_293 ()
{	
	TA_Smalltalk	(08,00,23,00,"NW_CITY_PALCAMP_15");
    TA_Smalltalk	(23,00,08,00,"NW_CITY_PALCAMP_15");	
};



