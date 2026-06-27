INSTANCE KDF_511_Daron (Npc_Default)
{
	// ------ NSC ------
	name 		= "Daron";
	guild 		= GIL_KDF;
	id 			= 511;
	voice 		= 10;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ aivars ------
	aivar[AIV_MagicUser] = MAGIC_ALWAYS;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 200);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 6);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------
	EquipItem	(self, ITMW_REVIVED_2H_MAGESTAFF_NORMAL_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
			
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Thief", Face_W_Daron, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_KDF_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_511;
};

FUNC VOID Rtn_Start_511 ()
{	
	TA_Stand_ArmsCrossed		(07,35,11,35,"NW_CITY_MARKT_DARON");
	TA_Stand_Eating 			(11,35,12,05,"NW_CITY_MERCHANT_PATH_28_F");
	TA_Stand_ArmsCrossed 		(12,05,12,35,"NW_CITY_MERCHANT_PATH_36");
	TA_Stand_Drinking			(12,35,13,05,"NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_Eating				(13,05,13,25,"NW_CITY_MERCHANT_PATH_26");
	TA_Stand_ArmsCrossed 		(13,25,13,55,"NW_CITY_MERCHANT_PATH_36_B");
	TA_Stand_ArmsCrossed		(13,55,18,05,"NW_CITY_MARKT_DARON");
	TA_Stand_Drinking			(18,05,19,05,"NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_ArmsCrossed		(19,05,20,05,"NW_CITY_MARKT_DARON");
	TA_Sit_Throne				(20,05,01,05,"NW_CITY_BED_ZURIS");
    TA_Sleep					(01,05,07,35,"NW_CITY_BED_DARON");
};
