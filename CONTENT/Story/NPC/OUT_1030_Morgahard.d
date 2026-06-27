
instance OUT_1030_MORGAHARD (Npc_Default)
{
	// ------ NSC ------
	name 		= "Morgahard"; 
	guild 		= GIL_OUT;
	id 			= 1030;
	voice 		= 7;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Aivars ------
	//aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG ;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ItWr_RichterKomproBrief_MIS, 1);									
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Morgahard, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_BDT_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1030;
};

FUNC VOID Rtn_Start_1030 ()
{	
	TA_Smalltalk	(08,00,23,00,"NW_BIGFARM_HOUSE_OUT_04"); 
    TA_Smalltalk	(23,00,08,00,"NW_BIGFARM_HOUSE_OUT_04");
};
