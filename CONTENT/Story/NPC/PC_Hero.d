instance PC_Hero (NPC_DEFAULT)
{
	// ------ SC ------
	name 		= "Me";
	guild		= GIL_NONE;
	id			= 0;
	voice		= 15;
	level		= 0;
	Npctype		= NPCTYPE_MAIN;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	// ------ XP Setup ------
	exp				= 0;
	exp_next		= 500;
	lp				= 0;
	
	// ------ Attribute ------
	attribute[ATR_STRENGTH] 		= 10;
	attribute[ATR_DEXTERITY] 		= 10;
	attribute[ATR_MANA_MAX] 		= 10;
	attribute[ATR_MANA] 			= 10;
	attribute[ATR_HITPOINTS_MAX]	= 40;
	attribute[ATR_HITPOINTS] 		= 40;
	
	// ------ visuals ------
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_Special_Hero, Body_Special_Hero1, Body_Player, Teeth_Normal, NO_ARMOR);	
	
	// ------ Kampf-Talente ------
	B_SetFightSkills 	(self, 10); 
};