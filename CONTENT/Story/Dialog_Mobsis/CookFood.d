// ****************************************************
// COOKFOOD_S1
// *****************************************************
FUNC VOID COOKFOOD_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_CAULDRON;
		Ai_ProcessInfos (her);
	};
}; 

//*******************************************************
//	CookFood Dialog abbrechen
//*******************************************************
INSTANCE PC_CookFood_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_CookFood_End_Condition;
	information		= PC_CookFood_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_CookFood_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_CAULDRON)
	{	
		return TRUE;
	};
};

FUNC VOID PC_CookFood_End_Info()
{
	CreateInvItems (self, ITMI_SCOOP,1);
	B_ENDPRODUCTIONDIALOG ();
};


//****************************************************************************
//****************************************************************************
//****************************************************************************

INSTANCE PC_Cook_MeatStew (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_Cook_MeatStew_Condition;
	information		= PC_Cook_MeatStew_Info;
	permanent		= TRUE;
	description		= PRINT_CookingDesc_MeatStew; 
};
FUNC INT PC_Cook_MeatStew_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	== MOBSI_CAULDRON) 
	&& (PLAYER_TALENT_COOKING[COOKING_MeatStew] == TRUE))
	{		
		return TRUE;
	};
};
FUNC VOID PC_Cook_MeatStew_Info ()
{
	if ((Npc_HasItems (hero, ItFoMuttonRaw) 				>= 2) || (Npc_HasItems (hero, ItFoMutton) 				>= 2))
	&& (Npc_HasItems (hero, ItFo_Addon_Shellflesh) 	  	>= 1) 
	&& (Npc_HasItems (hero, ItFo_Sausage) 				>= 1) 
	&& (Npc_HasItems (hero, ItFo_Bacon) 				>= 1) 
	{
		if (Npc_HasItems (hero, ItFoMuttonRaw) >= 2)
		{
			Npc_RemoveInvItems (hero, ItFoMuttonRaw, 			2);
		}
		else if (Npc_HasItems (hero, ItFoMutton) >= 2)
		{
			Npc_RemoveInvItems (hero, ItFoMutton, 2);
		};
		Npc_RemoveInvItems (hero,ItFo_Addon_Shellflesh, 	1);
		Npc_RemoveInvItems (hero,ItFo_Sausage, 				1);
		Npc_RemoveInvItems (hero,ItFo_Bacon, 				1);
				
		CreateInvItems	   (hero,ITFO_REVIVED_MEATSTEW,		1);
		Print (PRINT_CookingSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	//B_ENDPRODUCTIONDIALOG ();
};

//*******************************************************
//*******************************************************

INSTANCE PC_Cook_FishSoup (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_Cook_FishSoup_Condition;
	information		= PC_Cook_FishSoup_Info;
	permanent		= TRUE;
	description		= PRINT_CookingDesc_FishSoup; 
};
FUNC INT PC_Cook_FishSoup_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	== MOBSI_CAULDRON) 
	&& (PLAYER_TALENT_COOKING[COOKING_FishSoup] == TRUE))
	{		
		return TRUE;
	};
};
FUNC VOID PC_Cook_FishSoup_Info ()
{
	if (Npc_HasItems (hero, ItFo_Fish) 				>= 2) 
	&& (Npc_HasItems (hero, ItFo_Water) 	  		>= 1) 
	{
		Npc_RemoveInvItems (hero,ItFo_Fish,				2);
		Npc_RemoveInvItems (hero,ItFo_Water, 			1);
				
		CreateInvItems	   (hero,ItFo_FishSoup,			1);  // replace with updated Fish Soup
		Print (PRINT_CookingSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	//B_ENDPRODUCTIONDIALOG ();
};

//*******************************************************
//*******************************************************

INSTANCE PC_Cook_MeatbugSoup (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_Cook_MeatbugSoup_Condition;
	information		= PC_Cook_MeatbugSoup_Info;
	permanent		= TRUE;
	description		= PRINT_CookingDesc_MeatbugRagout; 
};
FUNC INT PC_Cook_MeatbugSoup_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	== MOBSI_CAULDRON) 
	&& (PLAYER_TALENT_COOKING[COOKING_MeatbugRagout] == TRUE))
	{		
		return TRUE;
	};
};
FUNC VOID PC_Cook_MeatbugSoup_Info ()
{
	if (Npc_HasItems (hero, ItPl_Mushroom_01) 			>= 5) 
	&& (Npc_HasItems (hero, ITFO_REVIVED_MEATBUG) 	  	>= 3) 
	&& (Npc_HasItems (hero, ITPL_REVIVED_RICEPLANT) 	>= 2) 
	{
		Npc_RemoveInvItems (hero,ItPl_Mushroom_01,			5);
		Npc_RemoveInvItems (hero,ITFO_REVIVED_MEATBUG, 		3);
		Npc_RemoveInvItems (hero,ITPL_REVIVED_RICEPLANT, 	2);
				
		CreateInvItems	   (hero,ITFO_REVIVED_BUGSOUP,		1);  
		Print (PRINT_CookingSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	//B_ENDPRODUCTIONDIALOG ();
};

//*******************************************************
//*******************************************************

INSTANCE PC_Cook_RootSoup (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_Cook_RootSoup_Condition;
	information		= PC_Cook_RootSoup_Info;
	permanent		= TRUE;
	description		= PRINT_CookingDesc_RootSoup; 
};
FUNC INT PC_Cook_RootSoup_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	== MOBSI_CAULDRON) 
	&& (PLAYER_TALENT_COOKING[COOKING_RootSoup] == TRUE))
	{		
		return TRUE;
	};
};
FUNC VOID PC_Cook_RootSoup_Info ()
{
	if (Npc_HasItems (hero, ItPl_Planeberry) 			>= 2) 
	&& (Npc_HasItems (hero, ItPl_Forestberry) 	  		>= 2) 
	&& (Npc_HasItems (hero, ItPl_SwampHerb) 			>= 2) 
	{
		Npc_RemoveInvItems (hero,ItPl_Planeberry,			2);
		Npc_RemoveInvItems (hero,ItPl_Forestberry, 			2);
		Npc_RemoveInvItems (hero,ItPl_SwampHerb, 			2);
				
		CreateInvItems	   (hero,ITFO_REVIVED_PLANTSOUP,	1);  
		Print (PRINT_CookingSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	//B_ENDPRODUCTIONDIALOG ();
};

//*******************************************************
//*******************************************************

INSTANCE PC_Cook_MinecrawlerSoup (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_Cook_MinecrawlerSoup_Condition;
	information		= PC_Cook_MinecrawlerSoup_Info;
	permanent		= TRUE;
	description		= PRINT_CookingDesc_MinecrawlerSoup; 
};
FUNC INT PC_Cook_MinecrawlerSoup_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	== MOBSI_CAULDRON) 
	&& (PLAYER_TALENT_COOKING[COOKING_MinecrawlerSoup] == TRUE))
	{		
		return TRUE;
	};
};
FUNC VOID PC_Cook_MinecrawlerSoup_Info ()
{
	if (Npc_HasItems (hero, ItAt_CrawlerMandibles) 		>= 2) 
	&& (Npc_HasItems (hero, ItPl_SwampHerb) 	  		>= 4)
	{
		Npc_RemoveInvItems (hero,ItAt_CrawlerMandibles,		2);
		Npc_RemoveInvItems (hero,ItPl_SwampHerb, 			4);
				
		CreateInvItems	   (hero,ITFO_REVIVED_CRAWLERSOUP,	1);  
		Print (PRINT_CookingSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	//B_ENDPRODUCTIONDIALOG ();
};

//*******************************************************
//*******************************************************

INSTANCE PC_Cook_RiceBowl (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_Cook_RiceBowl_Condition;
	information		= PC_Cook_RiceBowl_Info;
	permanent		= TRUE;
	description		= PRINT_CookingDesc_RiceBowl; 
};
FUNC INT PC_Cook_RiceBowl_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	== MOBSI_CAULDRON) 
	&& (PLAYER_TALENT_COOKING[COOKING_RiceBowl] == TRUE))
	{		
		return TRUE;
	};
};
FUNC VOID PC_Cook_RiceBowl_Info ()
{
	if (Npc_HasItems (hero, ITPL_REVIVED_RICEPLANT) 	>= 3) 
	{
		Npc_RemoveInvItems (hero,ITPL_REVIVED_RICEPLANT,	3);
				
		CreateInvItems	   (hero,ITFO_REVIVED_RICE,		1);  
		Print (PRINT_CookingSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	//B_ENDPRODUCTIONDIALOG ();
};

//*******************************************************
//*******************************************************

INSTANCE PC_Cook_Marmalade (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_Cook_Marmalade_Condition;
	information		= PC_Cook_Marmalade_Info;
	permanent		= TRUE;
	description		= PRINT_CookingDesc_Marmalade; 
};
FUNC INT PC_Cook_Marmalade_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	== MOBSI_CAULDRON) 
	&& (PLAYER_TALENT_COOKING[COOKING_Marmalade] == TRUE))
	{		
		return TRUE;
	};
};
FUNC VOID PC_Cook_Marmalade_Info ()
{
	if (Npc_HasItems (hero, ITPL_REVIVED_GRAPES) 		>= 2) 
	&& (Npc_HasItems (hero, ITPL_REVIVED_BERRIES) 	  	>= 2) 
	&& (Npc_HasItems (hero, ItPl_Planeberry) 			>= 2) 
	&& (Npc_HasItems (hero, ItPl_Forestberry) 			>= 2) 
	{
		Npc_RemoveInvItems (hero,ITPL_REVIVED_GRAPES,		2);
		Npc_RemoveInvItems (hero,ITPL_REVIVED_BERRIES, 		2);
		Npc_RemoveInvItems (hero,ItPl_Planeberry, 			2);
		Npc_RemoveInvItems (hero,ItPl_Forestberry, 			2);
				
		CreateInvItems	   (hero,ITFO_REVIVED_MARMALADE,	1);  
		Print (PRINT_CookingSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	//B_ENDPRODUCTIONDIALOG ();
};

//*******************************************************
//*******************************************************

INSTANCE PC_Cook_FruitSalad (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_Cook_FruitSalad_Condition;
	information		= PC_Cook_FruitSalad_Info;
	permanent		= TRUE;
	description		= PRINT_CookingDesc_FruitSalad; 
};
FUNC INT PC_Cook_FruitSalad_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	== MOBSI_CAULDRON) 
	&& (PLAYER_TALENT_COOKING[COOKING_FruitSalad] == TRUE))
	{		
		return TRUE;
	};
};
FUNC VOID PC_Cook_FruitSalad_Info ()
{
	if ((Npc_HasItems (hero, ItFo_Apple) 				>= 1) || (Npc_HasItems (hero, ITFO_REVIVED_APPLE_01) 				>= 1))
	&& (Npc_HasItems (hero, ITFO_REVIVED_PEAR) 	  		>= 1) 
	&& (Npc_HasItems (hero, ITPL_REVIVED_BERRIES) 		>= 1) 
	&& (Npc_HasItems (hero, ITPL_REVIVED_GRAPES) 		>= 1) 
	&& (Npc_HasItems (hero, ITFO_MILK) 					>= 1) 
	{
		if (Npc_HasItems (hero, ItFo_Apple) >= 1)
		{
			Npc_RemoveInvItems (hero, ItFo_Apple, 			1);
		}
		else if (Npc_HasItems (hero, ITFO_REVIVED_APPLE_01) >= 1)
		{
			Npc_RemoveInvItems (hero, ITFO_REVIVED_APPLE_01, 1);
		};
	
		Npc_RemoveInvItems (hero,ITFO_REVIVED_PEAR, 		1);
		Npc_RemoveInvItems (hero,ITPL_REVIVED_BERRIES, 		1);
		Npc_RemoveInvItems (hero,ITPL_REVIVED_GRAPES, 		1);
		Npc_RemoveInvItems (hero,ITFO_MILK, 				1);
				
		CreateInvItems	   (hero,ITFO_REVIVED_FRUITSALAD,	1);  
		Print (PRINT_CookingSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	//B_ENDPRODUCTIONDIALOG ();
};

//*******************************************************
//*******************************************************

INSTANCE PC_Cook_ConvictStew (C_INFO)
{
	nr       		= 1;
	npc				= PC_Hero;
	condition		= PC_Cook_ConvictStew_Condition;
	information		= PC_Cook_ConvictStew_Info;
	permanent		= TRUE;
	description		= PRINT_CookingDesc_ConvictStew; 
};
FUNC INT PC_Cook_ConvictStew_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	== MOBSI_CAULDRON) 
	&& (PLAYER_TALENT_COOKING[COOKING_ConvictStew] == TRUE))
	{		
		return TRUE;
	};
};
FUNC VOID PC_Cook_ConvictStew_Info ()
{
	if (Npc_HasItems (hero, ITFO_REVIVED_BREAD_01) 		>= 1) 
	&& (Npc_HasItems (hero, ITFO_REVIVED_CHEESE_01) 	>= 1) 
	&& (Npc_HasItems (hero, ITFO_REVIVED_BEER) 			>= 1) 
	&& (Npc_HasItems (hero, ITFO_REVIVED_WATER) 		>= 1) 
	{
		Npc_RemoveInvItems (hero,ITFO_REVIVED_BREAD_01,		1);
		Npc_RemoveInvItems (hero,ITFO_REVIVED_CHEESE_01, 	1);
		Npc_RemoveInvItems (hero,ITFO_REVIVED_BEER, 		1);
		Npc_RemoveInvItems (hero,ITFO_REVIVED_WATER, 		1);
				
		CreateInvItems	   (hero,ITFO_REVIVED_OLDSTEW,		1);  
		Print (PRINT_CookingSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	//B_ENDPRODUCTIONDIALOG ();
};
