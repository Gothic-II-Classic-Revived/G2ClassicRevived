
instance PAL_311_Andre (Npc_Default)
{
	// ------ NSC ------
	name 		= "Lord Andre";	
	guild 		= GIL_PAL;
	id 			= 311;
	voice 		= 8;
	flags       = NPC_FLAG_IMMORTAL;	//Joly: NPC_FLAG_IMMORTAL																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ AIVARS ------
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft] 		= TRUE;
	aivar[AIV_IGNORE_Sheepkiller] 	= TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Andre, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_311;
};
FUNC VOID Rtn_PreStart_311 ()
{
	TA_Stand_Guarding 	(00,00,12,00,"NW_CITY_HABOUR_KASERN_MAIN_ENTRY"); 
	TA_Stand_Guarding 	(12,00,00,00,"NW_CITY_HABOUR_KASERN_MAIN_ENTRY");
};

FUNC VOID Rtn_Start_311 ()
{	
	TA_Read_Bookstand  		(08,00,00,10,"NW_CITY_ANDRE"); 
    TA_Smalltalk			(00,10,05,00,"NW_CITY_ANDRE_SMALLTALK"); 
    TA_Read_Bookstand		(05,00,08,00,"NW_CITY_ANDRE");
    
};

FUNC VOID Rtn_ShipFree_311 ()
{	
	TA_Stand_ArmsCrossed	(08,00,20,00,"NW_CITY_HAGEN");
    TA_Stand_ArmsCrossed	(20,00,08,00,"NW_CITY_HAGEN");
};
