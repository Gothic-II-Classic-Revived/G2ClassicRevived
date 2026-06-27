INSTANCE PC_Mage_OW (Npc_Default)
{
	// ------ NSC ------
	name 		= "Milten";
	guild 		= GIL_KDF;
	id 			= 2;
	voice 		= 3;
	flags       = NPC_FLAG_IMMORTAL; //Joly:  IMMORTAL																	
	npctype		= NPCTYPE_FRIEND;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 100);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 4);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_2H_STAFF_NOVICE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Milten, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_KDF_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_2;
};

FUNC VOID Rtn_Start_2 ()
{	
	TA_Potion_Alchemy		(08,00,14,00,"OCC_CHAPEL_RIGHT_ROOM_ALCHEMY");
    TA_Read_Bookstand		(14,00,16,00,"OCC_CHAPEL_RIGHT_ROOM_BOOKSTAND");
    TA_Runemaking			(16,00,18,00,"OCC_CHAPEL_UPSTAIRS_RIGHT");
	TA_Practice_Magic		(18,00,20,00,"OCC_CHAPEL_UPSTAIRS_LEFT");
	TA_Sit_Chair			(20,00,22,00,"OCC_BARONS_GREATHALL_CENTER_MOVEMENT2");
    TA_Read_Bookstand		(22,00,08,00,"OCC_CHAPEL_UPSTAIRS_RIGHT");
};

FUNC VOID Rtn_GornFree_2 ()
{	
	TA_Smalltalk			(08,00,23,00,"OCC_CHAPEL_LEFT_ROOM");
	TA_Sleep				(23,00,08,00,"OCC_CHAPEL_LEFT_ROOM");
};

FUNC VOID Rtn_Tot_2 ()
{	
	TA_Sleep			(08,00,23,00,"TOT");
	TA_Sleep			(23,00,08,00,"TOT");
};
