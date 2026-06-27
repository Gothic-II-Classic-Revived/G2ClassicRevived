
instance Mil_312_Wulfgar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Wulfgar";	
	guild 		= GIL_MIL;
	id 			= 312;
	voice 		= 4;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_BROAD_04);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Wulfgar, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_GRD_S);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_312;
};
FUNC VOID Rtn_PreStart_312 ()
{	
	TA_Stand_ArmsCrossed		(06,55,21,00,"NW_CITY_HABOUR_KASERN_CENTRE_01");
    TA_Sit_Throne 				(21,00,04,30,"NW_CITY_KASERN_BARRACK02_02");
   	TA_Practice_Sword 			(04,30,06,55,"NW_CITY_HABOUR_KASERN_CENTRE_01");
};
FUNC VOID Rtn_Start_312 ()
{	
	TA_Stand_ArmsCrossed		(06,55,21,00,"NW_CITY_HABOUR_KASERN_CENTRE_01");
    TA_Sit_Throne 				(21,00,00,07,"NW_CITY_KASERN_BARRACK02_02");
   	TA_Smalltalk				(00,07,04,30,"NW_CITY_HABOUR_KASERN_OFFICE");
    TA_Practice_Sword 			(04,30,06,55,"NW_CITY_HABOUR_KASERN_CENTRE_01");
};
