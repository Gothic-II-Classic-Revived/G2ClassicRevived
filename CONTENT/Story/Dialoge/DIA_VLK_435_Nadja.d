///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Nadja_EXIT   (C_INFO)
{
	npc         = VLK_435_Nadja;
	nr          = 999;
	condition   = DIA_Nadja_EXIT_Condition;
	information = DIA_Nadja_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Nadja_EXIT_Condition()
{	
		return TRUE;
};
FUNC VOID DIA_Nadja_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
// ************************************************************
// 			  				PICK POCKET
// ************************************************************
INSTANCE DIA_Nadja_PICKPOCKET (C_INFO)
{
	npc			= VLK_435_Nadja;
	nr			= 900;
	condition	= DIA_Nadja_PICKPOCKET_Condition;
	information	= DIA_Nadja_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_40_Female;
};                       

FUNC INT DIA_Nadja_PICKPOCKET_Condition()
{
	C_Beklauen (40, 40);
};
 
FUNC VOID DIA_Nadja_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Nadja_PICKPOCKET);
	Info_AddChoice		(DIA_Nadja_PICKPOCKET, DIALOG_BACK 		,DIA_Nadja_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Nadja_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Nadja_PICKPOCKET_DoIt);
};

func void DIA_Nadja_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Nadja_PICKPOCKET);
};
	
func void DIA_Nadja_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Nadja_PICKPOCKET);
};
///////////////////////////////////////////////////////////////////////
//	Info STANDARD
///////////////////////////////////////////////////////////////////////
instance DIA_Nadja_STANDARD		(C_INFO)
{
	npc			 = 	VLK_435_Nadja;
	nr			 =  3;
	condition	 = 	DIA_Nadja_STANDARD_Condition;
	information	 = 	DIA_Nadja_STANDARD_Info;
	important	 = 	TRUE;
	permanent	 = 	TRUE;
};

func int DIA_Nadja_STANDARD_Condition ()
{	
	if Npc_IsInState (self, ZS_Talk)
	&& (Bromor_Pay == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Nadja_STANDARD_Info ()
{
	AI_Output (self, other, "DIA_Nadja_STANDARD_16_00"); //Hey, ich kann mich jetzt nicht um dich kümmern, Süßer. Sprich mit Bromor, wenn du dich amüsieren willst.
	
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info Danach
///////////////////////////////////////////////////////////////////////
instance DIA_Nadja_Danach		(C_INFO)
{
	npc			 = 	VLK_435_Nadja;
	nr			 =  2;
	condition	 = 	DIA_Nadja_Danach_Condition;
	information	 = 	DIA_Nadja_Danach_Info;
	important	 = 	TRUE;
	permanent	 = 	TRUE;
};

func int DIA_Nadja_Danach_Condition ()
{	
	if Npc_IsInState (self, ZS_Talk)
	&& (Bromor_Pay == FALSE)
	&& (Nadja_Nacht == TRUE)
	{
		return TRUE;
	};
};
func void DIA_Nadja_Danach_Info ()
{
	AI_Output (self, other, "DIA_Nadja_Danach_16_00"); //Komm das nächste Mal wieder zu mir, Süßer.
	Nadja_Nacht = FALSE;
		
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine (self,"Start");
};
///////////////////////////////////////////////////////////////////////
//	Info STANDARD
///////////////////////////////////////////////////////////////////////
instance DIA_Nadja_hochgehen		(C_INFO)
{
	npc			 = 	VLK_435_Nadja;
	nr			 =  3;
	condition	 = 	DIA_Nadja_hochgehen_Condition;
	information	 = 	DIA_Nadja_hochgehen_Info;
	important	 = 	FALSE;
	permanent	 = 	TRUE;
	description	 =	"Lass uns hochgehen.";
};

func int DIA_Nadja_hochgehen_Condition ()
{	
	if (Bromor_Pay == 1)
	{
		return TRUE;
	};
};
func void DIA_Nadja_hochgehen_Info ()
{
	AI_Output (other, self, "DIA_Nadja_hochgehen_15_00"); //Lass uns hochgehen.
	AI_Output (self, other, "DIA_Nadja_hochgehen_16_01"); //Heute ist dein Glückstag, Süßer. Gehen wir.
	
	Bromor_Pay = 2;
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine (self,"DANCE");
};
///////////////////////////////////////////////////////////////////////
//	Info STANDARD
///////////////////////////////////////////////////////////////////////
instance DIA_Nadja_Poppen	(C_INFO)
{
	npc			 = 	VLK_435_Nadja;
	nr			 =  3;
	condition	 = 	DIA_Nadja_Poppen_Condition;
	information	 = 	DIA_Nadja_Poppen_Info;
	permanent	 = 	TRUE;
	description  = "(Amüsieren)";
};

func int DIA_Nadja_Poppen_Condition ()
{	
	if (Bromor_Pay == 2)
	&& (Npc_GetDistToWP (self,"NW_CITY_HABOUR_PUFF_NADJA") < 300) 	
	{
		return TRUE;
	};
};
func void DIA_Nadja_Poppen_Info ()
{
	AI_Output (self, other, "DIA_Nadja_Poppen_16_00"); //Die nächsten Stunden gehören nur uns.
	AI_Output (self, other, "DIA_Nadja_Poppen_16_01"); //Es ist Zeit, dass du dich entspannst. Lehne dich zurück und genieße es.

	Info_ClearChoices (DIA_Nadja_Poppen);
	Info_AddChoice (DIA_Nadja_Poppen,"Okay ...",DIA_Nadja_Poppen_Start);
};
FUNC VOID DIA_Nadja_Poppen_Start()
{
	Bromor_Pay = FALSE;
	Nadja_Nacht = TRUE;
	
	PlayVideo ("LOVESCENE.BIK");
		
	/* if Wld_IsTime (00,00,06,00)
	{
		Wld_SetTime (09,00);
	}
	else if Wld_IsTime (06,00,12,00)
	{
		Wld_SetTime (15,00);
	}
	else if Wld_IsTime (12,00,18,00)
	{
		Wld_SetTime (21,00);
	}
	else 
	{
		Wld_SetTime (03,00);	
	}; */
	
};

///////////////////////////////////////////////////////////////////////
//	Info BUYHERB
///////////////////////////////////////////////////////////////////////
instance DIA_Nadja_BUYHERB		(C_INFO)
{
	npc			 = 	VLK_435_Nadja;
	nr			 = 	2;
	condition	 = 	DIA_Nadja_BUYHERB_Condition;
	information	 = 	DIA_Nadja_BUYHERB_Info;
	permanent	 =	TRUE;
	description	 = 	"Wo kann ich hier Kraut kaufen?";
};
func int DIA_Nadja_BUYHERB_Condition ()
{	
	if 	(MIS_Andre_REDLIGHT == LOG_RUNNING) 
	&& (Npc_KnowsInfo (other,DIA_Nadja_WANT_HERB) == FALSE)
	&& (Nadja_Money == FALSE)
	&& (Undercover_Failed == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Nadja_BUYHERB_Info ()
{
	var C_ITEM heroArmor; heroArmor = Npc_GetEquippedArmor(other);
	
	AI_Output (other, self, "DIA_Nadja_BUYHERB_15_00"); //Where can I buy weed around here?
	
	if  (Npc_GetDistToWP (self,"NW_CITY_HABOUR_PUFF_NADJA") < 500) 
	{	
		if (Hlp_IsItem (heroArmor, ITAR_REVIVED_GRD_L) == TRUE) 
		|| (Hlp_IsItem (heroArmor, ITAR_REVIVED_GRD_M) == TRUE)
		{
			AI_Output (self, other, "DIA_Nadja_BUYHERB_16_01"); //How would I know? Even if I knew, I'd certainly not tell the city guard.
			Undercover_Failed = TRUE;
		}
		else
		{
			AI_Output (self, other, "DIA_Nadja_BUYHERB_16_02"); //If you want me to tell you something, you'd better part with a few gold pieces.
			AI_Output (other, self, "DIA_Nadja_BUYHERB_15_03"); //How much do you want?
			AI_Output (self, other, "DIA_Nadja_BUYHERB_16_04"); //50 gold pieces should do the trick.
			Nadja_Money = TRUE;
		};
	}
	else 
	{
		B_Say	(self, other,"$NOTNOW");
	};
};
///////////////////////////////////////////////////////////////////////
//	Info WANT_HERB
///////////////////////////////////////////////////////////////////////
instance DIA_Nadja_WANT_HERB		(C_INFO)
{
	npc			 = 	VLK_435_Nadja;
	nr			 = 	2;
	condition	 = 	DIA_Nadja_WANT_HERB_Condition;
	information	 = 	DIA_Nadja_WANT_HERB_Info;
	permanent	 =  FALSE;
	description	 = 	"Jetzt sag mir wo ich Kraut kaufen kann. (50 Gold zahlen)";
};
func int DIA_Nadja_WANT_HERB_Condition ()
{	
	if 	(Npc_HasItems (other, ITmi_Gold) >= 50)
	&&  (Nadja_Money == TRUE)		
	&&  (MIS_Andre_REDLIGHT == LOG_RUNNING) 
	{
		return TRUE;
	};
};
func void DIA_Nadja_WANT_HERB_Info ()
{
	var C_ITEM heroArmor; heroArmor = Npc_GetEquippedArmor(other);
	AI_Output (other, self, "DIA_Nadja_WANT_HERB_15_00"); //Now tell me where I can buy weed.
	
	if (Hlp_IsItem (heroArmor, ITAR_REVIVED_GRD_L) == TRUE) 
	|| (Hlp_IsItem (heroArmor, ITAR_REVIVED_GRD_M) == TRUE)
	{
		AI_Output (self, other, "DIA_Nadja_WANT_HERB_16_01"); //Sorry, I simply can't remember.
	}
	else
	{
		B_GiveInvItems	(other, self, ItMi_Gold, 50); 
		AI_Output (self, other, "DIA_Nadja_WANT_HERB_16_02"); //Talk to Borka, baby. He'll have some weed for you.
		Knows_Borka_Dealer = TRUE;
	};
};




 












