
instance VLK_438_Alrik (Npc_Default)
{
	// ------ NSC ------
	name 		= "Alrik"; 
	guild 		= GIL_VLK;
	id 			= 438;
	voice 		= 9;
	flags       = 0;																
	npctype		= NPCTYPE_FRIEND; //plündert nicht!!! (und ein Freischlag)
	
	// ------ AIVARs ------
	aivar[AIV_ToughGuy] = TRUE;	
	aivar[AIV_ToughGuyNewsOverride] = TRUE; 

	aivar[AIV_MM_FollowTime] = 1000;
	aivar[AIV_FightDistCancel] = 600;

	aivar[AIV_MaxDistToWp]			= 300;
	aivar[AIV_OriginalFightTactic] 	= FAI_HUMAN_NORMAL;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);
	Alrik_LevelUpCount = 0;
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	
	
	// ------ Equippte Waffen ------																
	EquipItem(self, ITMW_REVIVED_1H_CLUB_01);
		
	// ------ Inventory ------
	//B_CreateAmbientInv 	(self); //NICHT, Alrik soll nicht mehr Gold haben!
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Alrik, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_Vlk_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_438;
};

FUNC VOID Rtn_Start_438() //NICHT ÄNDERN --> DIALOG!
{	
	TA_Stand_Guarding	(10,55,19,15,"NW_CITY_PATH_HABOUR_16_01");
	TA_Stand_Drinking	(19,15,03,30,"NW_CITY_HABOUR_TAVERN01_01");
	TA_Sit_Bench		(03,30,10,55,"NW_CITY_PATH_HABOUR_16_01");
};
