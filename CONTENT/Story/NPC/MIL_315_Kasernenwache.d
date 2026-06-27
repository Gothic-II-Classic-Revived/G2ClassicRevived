
instance Mil_315_Kasernenwache (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Miliz;	// Kasernenwache
	guild 		= GIL_MIL;
	id 			= 315;
	voice 		= 7;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Hum_Normal38, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_GRD_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_315;
};

FUNC VOID Rtn_Start_315 ()
{	
	TA_Smith_Sharp		(07,05,20,59,"NW_CITY_KASERN_ARMORY_SHARP");
	TA_Sit_Campfire		(20,59,00,03,"NW_CITY_BARRACK02_SMALLTALK_01");
    TA_Sleep			(00,03,07,05,"NW_CITY_BARRACK01_BED_RUGA");
};
