///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_BilgotNW_EXIT   (C_INFO)
{
	npc         = GRD_4120_Bilgot_NW;
	nr          = 999;
	condition   = DIA_BilgotNW_EXIT_Condition;
	information = DIA_BilgotNW_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_BilgotNW_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_BilgotNW_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_BilgotNW_HALLO		(C_INFO)
{
	npc		 	 = 	GRD_4120_Bilgot_NW;
	nr			 =  2;
	condition	 = 	DIA_BilgotNW_HALLO_Condition;
	information	 = 	DIA_BilgotNW_HALLO_Info;
	important	 = 	TRUE;
	permanent 	 =  FALSE;
};
func int DIA_BilgotNW_HALLO_Condition ()
{
	if Npc_IsInState (self, ZS_Talk)
	{
		return TRUE;
	} 
	else 
	{
		Npc_SetRefuseTalk(self, 5);
		return FALSE;
	};
};
func void DIA_BilgotNW_HALLO_Info ()
{
	AI_Output	(other, self, "DIA_Balthasar_HALLO_15_00"); //Wie sieht's aus?
	AI_Output	(self, hero, "DIA_Balthasar_PERMKAP1_05_01"); //Ich kann nicht klagen. Danke der Nachfrage.

	B_GivePlayerXP (XP_Ambient);
};

// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_BilgotNW_PICKPOCKET (C_INFO)
{
	npc			= GRD_4120_Bilgot_NW;
	nr			= 900;
	condition	= DIA_BilgotNW_PICKPOCKET_Condition;
	information	= DIA_BilgotNW_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_20;
};                       

FUNC INT DIA_BilgotNW_PICKPOCKET_Condition()
{
	C_Beklauen (20, 30);
};
 
FUNC VOID DIA_BilgotNW_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_BilgotNW_PICKPOCKET);
	Info_AddChoice		(DIA_BilgotNW_PICKPOCKET, DIALOG_BACK 		,DIA_BilgotNW_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_BilgotNW_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_BilgotNW_PICKPOCKET_DoIt);
};

func void DIA_BilgotNW_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_BilgotNW_PICKPOCKET);
};
	
func void DIA_BilgotNW_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_BilgotNW_PICKPOCKET);
};



