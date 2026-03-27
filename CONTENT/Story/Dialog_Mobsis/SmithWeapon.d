var int Erzwaffen;
var int Normalwaffen;

// ****************************************************
// SMITHWEAPON_S1
// --------------
// Funktion wird durch Ambo-Mobsi-Benutzung aufgerufen!
// bentigtes Item dafr: ItMiSwordrawhot
// *****************************************************

FUNC VOID SMITHWEAPON_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
		
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		self.aivar[AIV_INVINCIBLE]=TRUE;
		PLAYER_MOBSI_PRODUCTION	=	MOBSI_SMITHWEAPON;
		Ai_ProcessInfos (her);
	};
}; 



//*******************************************************
//	SmithWeapon Dialog abbrechen
//*******************************************************
INSTANCE PC_SmithWeapon_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_SmithWeapon_End_Condition;
	information		= PC_SmithWeapon_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_SmithWeapon_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHWEAPON)
	{	
		return TRUE;
	};
};

FUNC VOID PC_SmithWeapon_End_Info()
{
	CreateInvItems (self, ItMiSwordRaw,1);
	B_ENDPRODUCTIONDIALOG ();
	Erzwaffen = FALSE;
	NormalWaffen = FALSE;
};
//*******************************************************


// *****************
// Ambo-Dialoge
// -------------
// hngen am Spieler
// *****************


//*******************************************************
INSTANCE PC_Common (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_Common_Condition;
	information		= PC_Common_Info;
	permanent		= TRUE;
	description		= "Gewöhnliche Waffen schmieden";
};

FUNC INT PC_Common_Condition()
{	
	if(PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (Normalwaffen == FALSE)
	&& (Erzwaffen == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Common_Info ()
{
	Normalwaffen = TRUE;
};
//*******************************************************
INSTANCE PC_Ore (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_Ore_Condition;
	information		= PC_Ore_Info;
	permanent		= TRUE;
	description		= "Erzwaffen schmieden";
};

FUNC INT PC_Ore_Condition()
{	
	if(PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (Normalwaffen == FALSE)
	&& (Erzwaffen == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Ore_Info ()
{
	Erzwaffen = TRUE;
};
//*******************************************************
INSTANCE PC_CommonBACK (C_INFO)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_CommonBACK_Condition;
	information		= PC_CommonBACK_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK;
};
FUNC INT PC_CommonBACK_Condition()
{	
	if(PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (Normalwaffen == TRUE)
	&& (Erzwaffen == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_CommonBACK_Info ()
{
	Normalwaffen = FALSE;
};
//*******************************************************
INSTANCE PC_OreBACK (C_INFO)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_OreBACK_Condition;
	information		= PC_OreBACK_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK;
};
FUNC INT PC_OreBACK_Condition()
{	
	if(PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (Normalwaffen == FALSE)
	&& (Erzwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_OreBACK_Info ()
{
	Erzwaffen = FALSE;
};

//****************************************************************************
//****************************************************************************
//****************************************************************************

INSTANCE PC_ITMW_1H_SWORD_01 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_ITMW_1H_SWORD_01_Condition;
	information		= PC_ITMW_1H_SWORD_01_Info;
	permanent		= TRUE;
	description		= NAME_1H_COMMON_01_DESC;
};

FUNC INT PC_ITMW_1H_SWORD_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE))
	&& (Normalwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_ITMW_1H_SWORD_01_Info ()
{
	CreateInvItems 	    (hero, ITMW_REVIVED_1H_SWORD_01,  1); 
	Print (PRINT_SmithSuccess);
	
	B_ENDPRODUCTIONDIALOG ();
	Normalwaffen = FALSE;
};

//****************************************************************************
//****************************************************************************
//****************************************************************************

INSTANCE PC_WEAPON_1H_REVIVED_01 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_1H_REVIVED_01_Condition;
	information		= PC_WEAPON_1H_REVIVED_01_Info;
	permanent		= TRUE;
	description		= NAME_1H_REVIVED_01_DESC;
};

FUNC INT PC_WEAPON_1H_REVIVED_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_01] == TRUE))
	&& (Normalwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_1H_REVIVED_01_Info ()
{
	CreateInvItems 	    (hero,ITMW_REVIVED_1H_SWORD_SMITH_01 ,  1); 
	Print (PRINT_SmithSuccess);
	
	B_ENDPRODUCTIONDIALOG ();
	Normalwaffen = FALSE;
};
//*******************************************************
INSTANCE PC_WEAPON_1H_REVIVED_02 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_1H_REVIVED_02_Condition;
	information		= PC_WEAPON_1H_REVIVED_02_Info;
	permanent		= TRUE;
	description		= NAME_1H_REVIVED_02_DESC;
};

FUNC INT PC_WEAPON_1H_REVIVED_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_02] == TRUE))
	&& (Normalwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_1H_REVIVED_02_Info ()
{
	CreateInvItems 	    (hero,ITMW_REVIVED_1H_SWORD_SMITH_02 ,  1); 
	Print (PRINT_SmithSuccess);
	
	B_ENDPRODUCTIONDIALOG ();
	Normalwaffen = FALSE;
};
//*******************************************************
INSTANCE PC_WEAPON_1H_REVIVED_03 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_1H_REVIVED_03_Condition;
	information		= PC_WEAPON_1H_REVIVED_03_Info;
	permanent		= TRUE;
	description		= NAME_1H_REVIVED_03_DESC;
};

FUNC INT PC_WEAPON_1H_REVIVED_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_03] == TRUE))
	&& (Normalwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_1H_REVIVED_03_Info ()
{
	CreateInvItems 	    (hero,ITMW_REVIVED_1H_SWORD_SMITH_03 ,  1); 
	Print (PRINT_SmithSuccess);
	
	B_ENDPRODUCTIONDIALOG ();
	Normalwaffen = FALSE;
};
//*******************************************************
INSTANCE PC_WEAPON_1H_REVIVED_04 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_1H_REVIVED_04_Condition;
	information		= PC_WEAPON_1H_REVIVED_04_Info;
	permanent		= TRUE;
	description		= NAME_1H_REVIVED_04_DESC;
};

FUNC INT PC_WEAPON_1H_REVIVED_04_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_04] == TRUE))
	&& (Normalwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_1H_REVIVED_04_Info ()
{
	CreateInvItems 	    (hero,ITMW_REVIVED_1H_SWORD_SMITH_04 ,  1); 
	Print (PRINT_SmithSuccess);
	
	B_ENDPRODUCTIONDIALOG ();
	Normalwaffen = FALSE;
};
//*******************************************************
INSTANCE PC_WEAPON_1H_REVIVED_05 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_1H_REVIVED_05_Condition;
	information		= PC_WEAPON_1H_REVIVED_05_Info;
	permanent		= TRUE;
	description		= NAME_1H_REVIVED_05_DESC;
};

FUNC INT PC_WEAPON_1H_REVIVED_05_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_05] == TRUE))
	&& (Normalwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_1H_REVIVED_05_Info ()
{
	CreateInvItems 	    (hero,ITMW_REVIVED_1H_SWORD_SMITH_05 ,  1); 
	Print (PRINT_SmithSuccess);
	
	B_ENDPRODUCTIONDIALOG ();
	Normalwaffen = FALSE;
};


//****************************************************************************
//****************************************************************************
//****************************************************************************

INSTANCE PC_WEAPON_2H_REVIVED_01 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_2H_REVIVED_01_Condition;
	information		= PC_WEAPON_2H_REVIVED_01_Info;
	permanent		= TRUE;
	description		= NAME_2H_REVIVED_01_DESC;
};

FUNC INT PC_WEAPON_2H_REVIVED_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_01] == TRUE))
	&& (Normalwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_2H_REVIVED_01_Info ()
{
	CreateInvItems 	    (hero,ITMW_REVIVED_2H_SWORD_SMITH_01 ,  1); 
	Print (PRINT_SmithSuccess);
	
	B_ENDPRODUCTIONDIALOG ();
	Normalwaffen = FALSE;
};
//*******************************************************
INSTANCE PC_WEAPON_2H_REVIVED_02 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_2H_REVIVED_02_Condition;
	information		= PC_WEAPON_2H_REVIVED_02_Info;
	permanent		= TRUE;
	description		= NAME_2H_REVIVED_02_DESC;
};

FUNC INT PC_WEAPON_2H_REVIVED_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_02] == TRUE))
	&& (Normalwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_2H_REVIVED_02_Info ()
{
	CreateInvItems 	    (hero,ITMW_REVIVED_2H_SWORD_SMITH_02 ,  1); 
	Print (PRINT_SmithSuccess);
	
	B_ENDPRODUCTIONDIALOG ();
	Normalwaffen = FALSE;
};
//*******************************************************
INSTANCE PC_WEAPON_2H_REVIVED_03 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_2H_REVIVED_03_Condition;
	information		= PC_WEAPON_2H_REVIVED_03_Info;
	permanent		= TRUE;
	description		= NAME_2H_REVIVED_03_DESC;
};

FUNC INT PC_WEAPON_2H_REVIVED_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_03] == TRUE))
	&& (Normalwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_2H_REVIVED_03_Info ()
{
	CreateInvItems 	    (hero,ITMW_REVIVED_2H_SWORD_SMITH_03 ,  1); 
	Print (PRINT_SmithSuccess);
	
	B_ENDPRODUCTIONDIALOG ();
	Normalwaffen = FALSE;
};
//*******************************************************
INSTANCE PC_WEAPON_2H_REVIVED_04 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_2H_REVIVED_04_Condition;
	information		= PC_WEAPON_2H_REVIVED_04_Info;
	permanent		= TRUE;
	description		= NAME_2H_REVIVED_04_DESC;
};

FUNC INT PC_WEAPON_2H_REVIVED_04_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_04] == TRUE))
	&& (Normalwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_2H_REVIVED_04_Info ()
{
	CreateInvItems 	    (hero,ITMW_REVIVED_2H_SWORD_SMITH_04 ,  1); 
	Print (PRINT_SmithSuccess);
	
	B_ENDPRODUCTIONDIALOG ();
	Normalwaffen = FALSE;
};
//*******************************************************
INSTANCE PC_WEAPON_2H_REVIVED_05 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_2H_REVIVED_05_Condition;
	information		= PC_WEAPON_2H_REVIVED_05_Info;
	permanent		= TRUE;
	description		= NAME_2H_REVIVED_05_DESC;
};

FUNC INT PC_WEAPON_2H_REVIVED_05_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_05] == TRUE))
	&& (Normalwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_2H_REVIVED_05_Info ()
{
	CreateInvItems 	    (hero,ITMW_REVIVED_2H_SWORD_SMITH_05 ,  1); 
	Print (PRINT_SmithSuccess);
	
	B_ENDPRODUCTIONDIALOG ();
	Normalwaffen = FALSE;
};

//****************************************************************************
//****************************************************************************
//****************************************************************************

INSTANCE PC_WEAPON_1H_REVIVED_ORE_01 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_1H_REVIVED_ORE_01_Condition;
	information		= PC_WEAPON_1H_REVIVED_ORE_01_Info;
	permanent		= TRUE;
	description		= NAME_1H_REVIVED_ORE_01_DESC;
};

FUNC INT PC_WEAPON_1H_REVIVED_ORE_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_01] == TRUE))
	&& (Erzwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_1H_REVIVED_ORE_01_Info ()
{
	if (Npc_HasItems (hero, ItMi_Nugget) >= 1)
	{
		Npc_RemoveInvItems (hero, ItMi_Nugget, 1);
		
		CreateInvItems 	   (hero, ITMW_REVIVED_1H_SWORD_0RE_01,1); 
		Print (PRINT_SmithSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMiSwordRaw,1);
	};	
	B_ENDPRODUCTIONDIALOG ();
	Erzwaffen = FALSE;
};
//*******************************************************

INSTANCE PC_WEAPON_1H_REVIVED_ORE_02 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_1H_REVIVED_ORE_02_Condition;
	information		= PC_WEAPON_1H_REVIVED_ORE_02_Info;
	permanent		= TRUE;
	description		= NAME_1H_REVIVED_ORE_02_DESC;
};

FUNC INT PC_WEAPON_1H_REVIVED_ORE_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_02] == TRUE))
	&& (Erzwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_1H_REVIVED_ORE_02_Info ()
{
	if (Npc_HasItems (hero, ItMi_Nugget) >= 2)
	{
		Npc_RemoveInvItems  (hero,ItMi_Nugget,2);
		
		CreateInvItems 	   (hero,ITMW_REVIVED_1H_SWORD_ORE_02,1); 
		Print (PRINT_SmithSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMiSwordRaw,1);
	};	
	B_ENDPRODUCTIONDIALOG ();
	Erzwaffen = FALSE;
};
//*******************************************************
INSTANCE PC_WEAPON_1H_REVIVED_ORE_03 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_1H_REVIVED_ORE_03_Condition;
	information		= PC_WEAPON_1H_REVIVED_ORE_03_Info;
	permanent		= TRUE;
	description		= NAME_1H_REVIVED_ORE_03_DESC;
};

FUNC INT PC_WEAPON_1H_REVIVED_ORE_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_03] == TRUE))
	&& (Erzwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_1H_REVIVED_ORE_03_Info ()
{
	if (Npc_HasItems (hero, ItMi_Nugget) >= 3)
	{
		Npc_RemoveInvItems  (hero,ItMi_Nugget,3);
		
		CreateInvItems 	   (hero,ITMW_REVIVED_1H_SWORD_ORE_03,1); 
		Print (PRINT_SmithSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMiSwordRaw,1);
	};	
	B_ENDPRODUCTIONDIALOG ();
	Erzwaffen = FALSE;
};
//*******************************************************

INSTANCE PC_WEAPON_1H_REVIVED_ORE_04 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_1H_REVIVED_ORE_04_Condition;
	information		= PC_WEAPON_1H_REVIVED_ORE_04_Info;
	permanent		= TRUE;
	description		= NAME_1H_REVIVED_ORE_04_DESC;
};

FUNC INT PC_WEAPON_1H_REVIVED_ORE_04_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_04] == TRUE))
	&& (Erzwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_1H_REVIVED_ORE_04_Info ()
{
	if (Npc_HasItems (hero, ItMi_Nugget) >= 4)
	&& (Npc_HasItems (hero, ItAt_DragonBlood) >= 5)
	{
		Npc_RemoveInvItems  (hero,ItMi_Nugget,4);
		Npc_RemoveInvItems  (hero,ItAt_DragonBlood,5);
		
		CreateInvItems 	   (hero,ITMW_REVIVED_1H_SWORD_ORE_04,1); 
		Print (PRINT_SmithSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMiSwordRaw,1);
	};	
	B_ENDPRODUCTIONDIALOG ();
	Erzwaffen = FALSE;
};
//*******************************************************

INSTANCE PC_WEAPON_2H_REVIVED_ORE_01 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_2H_REVIVED_ORE_01_Condition;
	information		= PC_WEAPON_2H_REVIVED_ORE_01_Info;
	permanent		= TRUE;
	description		= NAME_2H_REVIVED_ORE_01_DESC;
};

FUNC INT PC_WEAPON_2H_REVIVED_ORE_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_01] == TRUE))
	&& (Erzwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_2H_REVIVED_ORE_01_Info ()
{
	if (Npc_HasItems (hero, ItMi_Nugget) >= 2)
	{
		Npc_RemoveInvItems  (hero,ItMi_Nugget,2);
		
		CreateInvItems 	    (hero,ITMW_REVIVED_2H_SWORD_ORE_01,1); 
		Print (PRINT_SmithSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMiSwordRaw,1);
	};	
	B_ENDPRODUCTIONDIALOG ();
	Erzwaffen = FALSE;
};
//*******************************************************

INSTANCE PC_WEAPON_2H_REVIVED_ORE_02 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_2H_REVIVED_ORE_02_Condition;
	information		= PC_WEAPON_2H_REVIVED_ORE_02_Info;
	permanent		= TRUE;
	description		= NAME_2H_REVIVED_ORE_02_DESC;
};

FUNC INT PC_WEAPON_2H_REVIVED_ORE_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_02] == TRUE))
	&& (Erzwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_2H_REVIVED_ORE_02_Info ()
{
	if (Npc_HasItems (hero, ItMi_Nugget) >= 3)
	{
		Npc_RemoveInvItems  (hero,ItMi_Nugget,3);
		
		CreateInvItems 	    (hero,ITMW_REVIVED_2H_SWORD_ORE_02,1); 
		Print (PRINT_SmithSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMiSwordRaw,1);
	};	
	B_ENDPRODUCTIONDIALOG ();
	Erzwaffen = FALSE;
};
//*******************************************************

INSTANCE PC_WEAPON_2H_REVIVED_ORE_03 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_2H_REVIVED_ORE_03_Condition;
	information		= PC_WEAPON_2H_REVIVED_ORE_03_Info;
	permanent		= TRUE;
	description		= NAME_2H_REVIVED_ORE_03_DESC;
};

FUNC INT PC_WEAPON_2H_REVIVED_ORE_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_03] == TRUE))
	&& (Erzwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_2H_REVIVED_ORE_03_Info ()
{
	if (Npc_HasItems (hero, ItMi_Nugget) >= 4)
	{
		Npc_RemoveInvItems  (hero,ItMi_Nugget,4);
		
		CreateInvItems 	    (hero,ITMW_REVIVED_2H_SWORD_ORE_03,1); 
		Print (PRINT_SmithSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMiSwordRaw,1);
	};	
	B_ENDPRODUCTIONDIALOG ();
	Erzwaffen = FALSE;
};
//*******************************************************

INSTANCE PC_WEAPON_2H_REVIVED_ORE_04 (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_WEAPON_2H_REVIVED_ORE_04_Condition;
	information		= PC_WEAPON_2H_REVIVED_ORE_04_Info;
	permanent		= TRUE;
	description		= NAME_2H_REVIVED_ORE_04_DESC;
};

FUNC INT PC_WEAPON_2H_REVIVED_ORE_04_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_SMITHWEAPON) 
	&& (PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_04] == TRUE))
	&& (Erzwaffen == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_WEAPON_2H_REVIVED_ORE_04_Info ()
{
	if (Npc_HasItems  (hero, ItMi_Nugget) >= 5)
	&& (Npc_HasItems  (hero, ItAt_DragonBlood) >= 5)
	{
		Npc_RemoveInvItems  (hero,ItMi_Nugget,5);
		Npc_RemoveInvItems  (hero,ItAt_DragonBlood,5);
		
		CreateInvItems 	   (hero,ITMW_REVIVED_2H_SWORD_ORE_04,1); 
		Print (PRINT_SmithSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMiSwordRaw,1);
	};	
	B_ENDPRODUCTIONDIALOG ();
	Erzwaffen = FALSE;
};