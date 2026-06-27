
instance VLK_468_Canthar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Canthar"; 
	guild 		= GIL_VLK;
	id 			= 468;
	voice 		= 9;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ AIVARS ------
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft] 		= TRUE;
	aivar[AIV_IGNORE_Sheepkiller] 	= TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_04); 
	
	// ------ Inventory ------
	//CreateInvItems (self, ItWr_Passierschein, 1);wird jetzt über Dialog vergeben, damit nicht mehr im Trade auftaucht 
	CreateInvItems (self, ItMi_Gold, 50);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Canthar, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_Vlk_M);	
	Mdl_SetModelFatness	(self,1.8);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_468;
};

FUNC VOID Rtn_PreStart_468()
{	
	TA_Sit_Bench	(08,00,23,00,"NW_FARM1_PATH_CITY_SHEEP_05");
   	TA_Sit_Bench	(23,00,08,00,"NW_FARM1_PATH_CITY_SHEEP_05");
};

FUNC VOID Rtn_Start_468()
{	
	TA_Sit_Bench		(07,45,19,45,"NW_CITY_MERCHANT_PATH_29_BENCH");
	TA_Smoke_Waterpipe  (19,45,00,45,"NW_CITY_SMOKE_03");
   	TA_Sleep			(00,45,07,45,"NW_CITY_HOTEL_BED_01");
};

FUNC VOID Rtn_Marktstand_468()
{	
	TA_Stand_ArmsCrossed 	(07,45,19,45,"NW_CITY_SARAH"); 
    TA_Smoke_Waterpipe  	(19,45,00,45,"NW_CITY_SMOKE_03");
   	TA_Sleep				(00,45,07,45,"NW_CITY_HOTEL_BED_01");
};

FUNC VOID Rtn_Knast_468()
{	
	TA_Sit_Bench 	(08,00,23,00,"NW_CITY_HABOUR_KASERN_RENGARU");
    TA_Sit_Bench	(23,00,08,00,"NW_CITY_HABOUR_KASERN_RENGARU");
};
