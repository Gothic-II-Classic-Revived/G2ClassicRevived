
instance GRD_4112_Den (Npc_Default)
{
	// ------ NSC ------
	name 		= "Den"; 
	guild 		= GIL_MIL;
	id 			= 4112;
	voice 		= 5;
	flags       = 0;							
	npctype		= NPCTYPE_OCAMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem (self, ITMW_REVIVED_1H_SWORD_OLD_02);
	
	// ------ Inventory ------
	CreateInvItems (self, ItMi_Gold, 200);
	CreateInvItems (self, ItMi_SilverRing, 1);
	CreateInvItems (self, ItMi_GoldRing,   1);
	CreateInvItems (self, ItMi_SilverCandleHolder, 1);
	CreateInvItems (self, ItMi_GoldNecklace,   1);	
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Hum_Normal13, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_PAL_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4112;
};

FUNC VOID Rtn_Start_4112 ()
{	
	TA_Stand_Guarding 	(08,00,23,00,"OW_PATH_182");
    TA_Stand_Guarding 	(23,00,08,00,"OW_PATH_182");
};
