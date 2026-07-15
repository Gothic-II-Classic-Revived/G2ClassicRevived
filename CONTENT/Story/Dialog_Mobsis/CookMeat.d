// ****************************************************
// COOKMEAT_S1
// *****************************************************
FUNC VOID COOKMEAT_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_PAN;
		Ai_ProcessInfos (her);
	};
}; 


//*******************************************************
//	CookMeat Dialog abbrechen
//*******************************************************
INSTANCE PC_CookMeat_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_CookMeat_End_Condition;
	information		= PC_CookMeat_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_CookMeat_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_PAN)
	{	
		return TRUE;
	};
};

FUNC VOID PC_CookMeat_End_Info()
{
	B_ENDPRODUCTIONDIALOG ();
};


//****************************************************************************
//****************************************************************************
//****************************************************************************

// plan is to put "Cook (type of meat)" and then do "1, 2, 5, 10, all, BACK"
// sound good?
