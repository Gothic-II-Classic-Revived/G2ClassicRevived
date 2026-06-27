
instance VLK_421_Valentino (Npc_Default)
{
	// ------ NSC ------
	name 		= "Valentino"; 
	guild 		= GIL_VLK;
	id 			= 421;
	voice 		= 3;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	
	
	// ------ Equippte Waffen ------																
	EquipItem (self, ITMW_REVIVED_1H_SWORD_VALENTINO); 
		
	// ------ Inventory ------
	CreateInvItems (self, ItMi_Gold, 200);
	CreateInvItems 	(self,ItKe_Valentino,1);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald.", Face_W_Valentino, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_VLK_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_421;
};

FUNC VOID Rtn_Start_421 ()
{	
	TA_Stand_ArmsCrossed 	(10,00,20,00,"NW_CITY_MERCHANT_PATH_16");
    TA_Sit_Chair			(20,00,04,00,"NW_CITY_MERCHANT_TAVERN01_BACKROOM");
    TA_Sleep				(04,00,10,00,"NW_CITY_REICH03_BED_01");
};

FUNC VOID Rtn_VatrasAway_421 ()
{	
	TA_Smalltalk			(10,00,20,00,"NW_CITY_MERCHANT_TAVERN01_01");
    TA_Sit_Chair			(20,00,04,00,"NW_CITY_MERCHANT_TAVERN01_BACKROOM");
    TA_Sleep				(04,00,10,00,"NW_CITY_REICH03_BED_01");
};
