
instance Pal_216_Cedric (Npc_Default)
{
	// ------ NSC ------
	name 		= "Cedric";
	guild 		= GIL_PAL;
	id 			= 216;
	voice 		= 12;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic = FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Cedric, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_216;
};

FUNC VOID Rtn_Start_216 ()
{
	TA_Practice_Sword	(07,00,19,00,"NW_CITY_TRAIN_01");
	TA_Sleep			(19,00,07,00,"NW_CITY_LEOMAR_BED_03");	
};
