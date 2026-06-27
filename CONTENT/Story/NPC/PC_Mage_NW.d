
INSTANCE PC_Mage_NW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Milten";
	guild 		= GIL_KDF;
	id 			= 12;
	voice 		= 3;
	flags       = NPC_FLAG_IMMORTAL;																	
	npctype		= NPCTYPE_FRIEND;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 100);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 4);													
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_2H_MAGESTAFF_NORMAL_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Milten, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_KDF_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_12;
};

FUNC VOID Rtn_Start_12 ()
{	
	TA_Stand_Guarding	(08,00,23,00,"NW_MONASTERY_MILTEN");
    TA_Stand_Guarding 	(23,00,08,00,"NW_MONASTERY_MILTEN");
};

FUNC VOID Rtn_WaitForShip_12 ()
{	
	TA_Smalltalk	(08,00,23,00,"NW_CITY_WAY_TO_SHIP_19");
    TA_Smalltalk 	(23,00,08,00,"NW_CITY_WAY_TO_SHIP_19");
};

FUNC VOID Rtn_ShipOff_12 ()
{	
	TA_Stand_Guarding	(08,00,23,00,"NW_MONASTERY_ENTRY_01");
    TA_Stand_Guarding 	(23,00,08,00,"NW_MONASTERY_ENTRY_01");
};

FUNC VOID Rtn_Ship_12 ()
{	
	TA_Smalltalk			(08,00,23,00,"SHIP_CREW_19");
	TA_Smalltalk			(23,00,08,00,"SHIP_CREW_19");
};
