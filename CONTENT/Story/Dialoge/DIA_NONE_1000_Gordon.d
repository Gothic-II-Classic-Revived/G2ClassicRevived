///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Revived_Gordon_EXIT   (C_INFO)
{
	npc         = NONE_1000_Gordon;
	nr          = 999;
	condition   = DIA_Revived_Gordon_EXIT_Condition;
	information = DIA_Revived_Gordon_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Revived_Gordon_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Revived_Gordon_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
instance DIA_Revived_Gordon_Trade		(C_INFO)
{
	npc		 	 = 	NONE_1000_Gordon;
	nr		 	 = 	1;
	condition	 = 	DIA_Revived_Gordon_Trade_Condition;
	information	 = 	DIA_Revived_Gordon_Trade_Info;
	Trade		 = 	TRUE;
	permanent	 = 	TRUE;

	description	 = 	"What do you have to offer?";
};

func int DIA_Revived_Gordon_Trade_Condition ()
{
	return TRUE;
};
func void DIA_Revived_Gordon_Trade_Info ()
{
	if (DIA_Revived_Gordon_Trade_OneTime == FALSE)
	{
		Log_CreateTopic	(TOPIC_Trader_OC, LOG_NOTE);
		B_LogEntry (TOPIC_Trader_OC, LogText_Revived_GordonTrade); 
		DIA_Revived_Gordon_Trade_OneTime = TRUE;
	};
	
	AI_Output	(other, self, "DIA_Addon_Martin_Trade_15_00"); //What do you have to offer?
	B_GiveTradeInv (self);
};