
instance PAL_267_Sengrath (Npc_Default)
{
	// ------ NSC ------
	name 		= "Sengrath";
	guild 		= GIL_PAL;
	id 			= 267;
	voice 		= 3;
	flags       = 0;																	
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	
	// ------ Kampf-Taktik ------
	fight_tactic = FAI_NAILED;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02); //ok but what about it when he's dead
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_SENGRATH);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Sengrath, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_267;
};

FUNC VOID Rtn_Start_267 ()
{	
	TA_Stand_Guarding		(08,00,23,00,"OCC_WALLCRACK_SENGRATH_STAND");
    TA_Stand_Guarding		(23,00,08,00,"OCC_WALLCRACK_SENGRATH_STAND");
};

FUNC VOID Rtn_ORCBARRIER_267 ()
{	
	TA_Sleep		(08,00,23,00,"PATH_OC_FOGTOWER03");
    TA_Sleep		(23,00,08,00,"PATH_OC_FOGTOWER03");
};
