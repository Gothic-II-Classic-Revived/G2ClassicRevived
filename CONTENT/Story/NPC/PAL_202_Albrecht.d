
instance Pal_202_Albrecht (Npc_Default)
{
	// ------ NSC ------
	name 		= "Albrecht";
	guild 		= GIL_PAL;
	id 			= 202;
	voice 		= 3;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 90);																	

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_P_Albrecht, Body_P_Hum_Naked, Body_Pale, Teeth_Rotten, ITAR_REVIVED_PAL_H);	
	Mdl_SetModelFatness	(self, 1.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_202;
};

FUNC VOID Rtn_Start_202 ()
{
	TA_Read_Bookstand		(08,00,23,00,"NW_CITY_ALBRECHT");
    TA_Read_Bookstand		(23,00,08,00,"NW_CITY_ALBRECHT");	
};
