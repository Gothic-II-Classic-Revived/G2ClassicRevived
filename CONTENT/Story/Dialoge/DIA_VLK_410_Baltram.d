///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Baltram_EXIT   (C_INFO)
{
	npc         = VLK_410_Baltram;
	nr          = 999;
	condition   = DIA_Baltram_EXIT_Condition;
	information = DIA_Baltram_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Baltram_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Baltram_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Baltram_Hallo		(C_INFO)
{
	npc			 = 	VLK_410_Baltram;
	nr			 = 	2;
	condition	 = 	DIA_Baltram_Hallo_Condition;
	information	 = 	DIA_Baltram_Hallo_Info;
	permanent	 =  FALSE;
	important	 = 	TRUE;
};
func int DIA_Baltram_Hallo_Condition ()
{
	if (Npc_IsInState (self, ZS_Talk))
	&& (self.aivar[AIV_TalkedToPlayer] == FALSE)
	&& (MIS_Nagur_Bote == FALSE) 
	{
		return TRUE;
	};
};
func void DIA_Baltram_Hallo_Info ()
{
	if (hero.guild != GIL_SLD)
	&& (hero.guild != GIL_DJG)
	{
		AI_Output (self, other, "DIA_Baltram_Hallo_01_00"); //Welcome, stranger, my name is Baltram. Have you come to stock up on food?
		AI_Output (self, other, "DIA_Baltram_Hallo_01_01"); //I'm afraid I'll have to disappoint you. I don't have much in stock right now.
		AI_Output (self, other, "DIA_Baltram_Hallo_01_02"); //But I'll be getting a new delivery soon.
	}
	else
	{
		AI_Output (self, other, "DIA_Baltram_Hallo_01_03"); //If you've come to buy food from me, you can just go away again.
		AI_Output (self, other, "DIA_Baltram_Hallo_01_04"); //I don't think much of you mercenaries! You cause me nothing but trouble.
	};
};

///////////////////////////////////////////////////////////////////////
//	Info Job
///////////////////////////////////////////////////////////////////////
instance DIA_Baltram_Job		(C_INFO)
{
	npc			 = 	VLK_410_Baltram;
	nr			 = 	3;
	condition	 = 	DIA_Baltram_Job_Condition;
	information	 = 	DIA_Baltram_Job_Info;
	permanent	 =  FALSE;
	description  =  "Have you got a job for me?";
};
func int DIA_Baltram_Job_Condition ()
{
	if (MIS_Nagur_Bote != LOG_RUNNING)
	&& (MIS_Nagur_Bote != LOG_SUCCESS)
	&& (hero.guild == GIL_NONE)
	{
		return TRUE;
	};	
};
func void DIA_Baltram_Job_Info ()
{
	AI_Output (other, self, "DIA_Baltram_Job_15_00"); //Have you got a job for me?
	AI_Output (self, other, "DIA_Baltram_Job_01_01"); //No, I already have an errand-boy. Try with the other merchants.
};
///////////////////////////////////////////////////////////////////////
//	Info Trick
///////////////////////////////////////////////////////////////////////
var int Baltram_LieferungChapter;

instance DIA_Baltram_Trick		(C_INFO)
{
	npc			 = 	VLK_410_Baltram;
	nr			 = 	4;
	condition	 = 	DIA_Baltram_Trick_Condition;
	information	 = 	DIA_Baltram_Trick_Info;
	permanent	 =  TRUE;
	important 	 =  TRUE;
};
func int DIA_Baltram_Trick_Condition ()
{
	if Npc_IsInState (self, ZS_Talk)
	&& (BaltramRatOut == FALSE)
	&& (((MIS_Nagur_Bote == LOG_RUNNING) && (MIS_Baltram_ScoutAkil == FALSE))
	|| ((MIS_Baltram_ScoutAkil == LOG_SUCCESS) && (Kapitel > Baltram_LieferungChapter)))
	{
		return TRUE;
	};
};
func void DIA_Baltram_Trick_Info ()
{
	AI_Output (self, other, "DIA_Baltram_Trick_01_00"); //Are you looking for a job?
	AI_Output (other, self, "DIA_Baltram_Trick_15_01"); //Sure, what's it about?
	AI_Output (self, other, "DIA_Baltram_Trick_01_02"); //My errand-boy hasn't come back, and I'm waiting for a delivery from the farmer Akil.
	AI_Output (other, self, "DIA_Baltram_Trick_15_03"); //And how much is it worth to you?
	AI_Output (self, other, "DIA_Baltram_Trick_01_04"); //I'll give you 50 gold pieces.
	AI_Output (other, self, "DIA_Baltram_Trick_15_05"); //Fine, I'm in.
	AI_Output (self, other, "DIA_Baltram_Trick_01_06"); //Okay, just tell Akil that I sent you. He'll give you a package. Bring it to me.
	
	Baltram_LieferungChapter = Kapitel;
	Lieferung_Geholt = FALSE;
	MIS_Baltram_ScoutAkil = LOG_RUNNING;
	if (MIS_Nagur_Bote == LOG_RUNNING)
	{
		B_LogEntry (TOPIC_Nagur,"Baltram has employed me as an errand-boy. Now I have to collect a delivery from Akil's farm.");
	};
	
	Log_CreateTopic (TOPIC_Baltram,LOG_MISSION);
	Log_SetTopicStatus (TOPIC_Baltram,LOG_RUNNING);
	B_LogEntry (TOPIC_Baltram, "If I bring Baltram his delivery, he'll pay me 50 pieces of gold.");
};
///////////////////////////////////////////////////////////////////////
//	Info WAREZ
///////////////////////////////////////////////////////////////////////
var int Baltram_TradeLOG;
// --------------------------------------------------------------
instance DIA_Baltram_WAREZ		(C_INFO)
{
	npc			 = 	VLK_410_Baltram;
	nr			 = 	2;
	condition	 = 	DIA_Baltram_WAREZ_Condition;
	information	 = 	DIA_Baltram_WAREZ_Info;
	permanent	 = 	TRUE;
	trade		 = 	TRUE;
	description	 = 	"Show me your wares.";
};

func int DIA_Baltram_WAREZ_Condition ()
{
	return TRUE;
};
func void DIA_Baltram_WAREZ_Info ()
{
	B_GiveTradeInv (self);
	AI_Output (other, self,"DIA_Baltram_WAREZ_15_00"); //Show me your wares.
	
	if (Baltram_TradeLOG == FALSE)
	{
		Log_CreateTopic (Topic_CityTrader,LOG_NOTE);
		B_LogEntry (Topic_CityTrader,"Baltram trades in foodstuffs at the marketplace.");
		Baltram_TradeLOG = TRUE;
	};
	
	if (Kapitel == 3)
	&& (MIS_RescueBennet != LOG_SUCCESS)
	&& (MIS_SCKnowsInnosEyeIsBroken == TRUE)
	{
		AI_Output (self ,other,"DIA_Baltram_WAREZ_01_01"); //They never should have let it get so far. Now one of the mercenaries has actually murdered a paladin.
		AI_Output (self ,other,"DIA_Baltram_WAREZ_01_02"); //Something had to happen one of these days!
	};
	if ((MIS_BaltramTrade != LOG_SUCCESS)
	&& ((hero.guild == GIL_SLD)
	||  (hero.guild == GIL_DJG)))
	{
		AI_Output (self ,other,"DIA_Baltram_WAREZ_01_03"); //People like you will get nothing from me.
		AI_Output (other, self,"DIA_Baltram_WAREZ_15_04"); //Why?
		AI_Output (self ,other,"DIA_Baltram_WAREZ_01_05"); //First you stir up the farmers, and then you act like nothing happened.
		AI_Output (self ,other,"DIA_Baltram_WAREZ_01_06"); //Now beat it, you're driving away my customers.
		
		MIS_BaltramTrade = LOG_FAILED;
		
		AI_StopProcessInfos (self);
	};
};

///////////////////////////////////////////////////////////////////////
//	Info AkilsHof
///////////////////////////////////////////////////////////////////////
instance DIA_Baltram_AkilsHof		(C_INFO)
{
	npc			 = 	VLK_410_Baltram;
	nr			 =  4;
	condition	 = 	DIA_Baltram_AkilsHof_Condition;
	information	 = 	DIA_Baltram_AkilsHof_Info;
	permanent	 =  FALSE;
	description	 = 	"Where can I find Akil's farm?";
};
func int DIA_Baltram_AkilsHof_Condition ()
{
	if (MIS_Baltram_ScoutAkil == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void DIA_Baltram_AkilsHof_Info ()
{
	AI_Output (other, self, "DIA_Baltram_AkilsHof_15_00"); //Where can I find Akil's farm?
	AI_Output (self, other, "DIA_Baltram_AkilsHof_01_01"); //Just go straight out here through the east gate and follow the road to the southeast.
	AI_Output (self, other, "DIA_Baltram_AkilsHof_01_02"); //After a short while, you'll come to a stone stairway. Go up that and from there you'll already be able to see Akil's farm.
};
///////////////////////////////////////////////////////////////////////
//	Info Lieferung geholt
///////////////////////////////////////////////////////////////////////
instance DIA_Baltram_Lieferung	(C_INFO)
{
	npc			 = 	VLK_410_Baltram;
	nr			 =  5;
	condition	 = 	DIA_Baltram_Lieferung_Condition;
	information	 = 	DIA_Baltram_Lieferung_Info;
	permanent 	 =  TRUE;
	description	 = 	"I've got Akil's delivery.";
};

func int DIA_Baltram_Lieferung_Condition ()
{
	if (MIS_Baltram_ScoutAkil == LOG_RUNNING)
	&& (Npc_HasItems (other, ItMi_BaltramPaket) >=1)
	{
		return TRUE;
	};
};
func void DIA_Baltram_Lieferung_Info ()
{
	AI_Output (other, self, "DIA_Baltram_Lieferung_15_00"); //I've got Akil's delivery.
	AI_Output (self, other, "DIA_Baltram_Lieferung_01_01"); //Excellent. Finally I can offer fresh goods again. Here are your 50 gold pieces.
	
	B_GiveInvItems (other, self, ItMi_BaltramPaket, 1);
	B_GiveInvItems (self, other, ItMi_Gold, 50);
	
	MIS_Baltram_ScoutAkil = LOG_SUCCESS;
	MIS_Nagur_Bote = LOG_FAILED;
	B_GivePlayerXP (XP_Baltram_ScoutAkil * Kapitel);
	
	Npc_RemoveInvItems (self, ItMi_BaltramPaket,1);
	
	CreateInvItems (self,ItFo_Cheese, 5); 	
	CreateInvItems (self,ItFo_Apple, 10); 
	CreateInvItems (self,ITFO_REVIVED_APPLE_01, 10); 
	CreateInvItems (self,ITFO_REVIVED_PEAR, 10); 
	CreateInvItems (self,ItFo_Bacon, 5);
	CreateInvItems (self,ItFo_Sausage, 5);
	CreateInvItems (self,ITFO_REVIVED_HAM_01_RAW, 5);
	
};

///////////////////////////////////////////////////////////////////////
//	Info LetUsTrade
///////////////////////////////////////////////////////////////////////
instance DIA_Baltram_LetUsTrade		(C_INFO)
{
	npc			 = 	VLK_410_Baltram;
	nr			 =  6;
	condition	 = 	DIA_Baltram_LetUsTrade_Condition;
	information	 = 	DIA_Baltram_LetUsTrade_Info;
	permanent	 =  FALSE;
	description	 = 	"Couldn't we do business together after all?";
};
func int DIA_Baltram_LetUsTrade_Condition ()
{
	if (MIS_BaltramTrade == LOG_FAILED)
	{
		return TRUE;
	};
};

func void DIA_Baltram_LetUsTrade_Info ()
{
	AI_Output (other, self, "DIA_Baltram_LetUsTrade_15_00"); //Couldn't we do business together after all?
	AI_Output (self, other, "DIA_Baltram_LetUsTrade_01_01"); //Listen, if you bring me 10 hams and 10 bottles of wine, then I'll deal with you again.
	AI_Output (other, self, "DIA_Baltram_LetUsTrade_15_02"); //I'll see what I can do.
	
	MIS_BaltramTrade = LOG_RUNNING;
};

var int BaltramEnoughBacon;
var int BaltramEnoughWine;

///////////////////////////////////////////////////////////////////////
//	Info HaveYourWarez
///////////////////////////////////////////////////////////////////////
instance DIA_Baltram_HaveYourWarez		(C_INFO)
{
	npc			 = 	VLK_410_Baltram;
	nr			 =  6;
	condition	 = 	DIA_Baltram_HaveYourWarez_Condition;
	information	 = 	DIA_Baltram_HaveYourWarez_Info;
	permanent	 =  TRUE;
	description	 = 	"I've got your wares.";
};
func int DIA_Baltram_HaveYourWarez_Condition ()
{
	if (MIS_BaltramTrade == LOG_RUNNING)
	&& (MIS_BaltramTrade != LOG_SUCCESS)
	{
		return TRUE;
	};
};

func void DIA_Baltram_HaveYourWarez_Info ()
{
	AI_Output (other, self, "DIA_Baltram_HaveYourWarez_15_00"); //I've got your wares.
	AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_01"); //Show me.
	
	if (Npc_HasItems (other,ITFO_REVIVED_HAM_01_RAW) < 10)
	{
		AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_02"); //We already agreed on 10 hams. Come back when you have enough.
		
		BaltramEnoughBacon = FALSE;
	}
	else
	{
		BaltramEnoughBacon = TRUE;
	};  
	if (Npc_HasItems (other,ItFo_Wine) < 10)
	{
		AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_03"); //And what about the 10 bottles of wine? Did you forget them?
	
		BaltramEnoughWine = FALSE;
	}
	else
	{
		BaltramEnoughWine = TRUE;
	};
	
	if (BaltramEnoughBacon == TRUE
	&&  BaltramEnoughWine  == TRUE)
	{
		AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_04"); //Hmm, it isn't the best quality, but in these times you can't be too picky.
		
		B_GiveInvItems (other,self,ITFO_REVIVED_HAM_01_RAW,10);
		B_GiveInvItems (other,self,ItFo_Wine,10);
		
		MIS_BaltramTrade = LOG_SUCCESS;
	
		B_GivePlayerXP (XP_BaltramTrade);
		
		AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_05"); //Now there's nothing that keeps us from doing business together.
	};	
};


///////////////////////////////////////////////////////////////////////
//	Info Skip
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Baltram_Skip		(C_INFO)
{
	npc		 = 	VLK_410_Baltram;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Baltram_Skip_Condition;
	information	 = 	DIA_Addon_Baltram_Skip_Info;

	description	 = 	"You're trading with pirates?";
};

func int DIA_Addon_Baltram_Skip_Condition ()
{
	if (Npc_HasItems (PIR_1400_Pirate_L, ITMS_REVIVED_BALTRAMPACKAGE_PIRATES) == 0)
	|| (Npc_HasItems (hero, ITMS_REVIVED_BALTRAMPACKAGE_PIRATES) >= 1) 
		{
			return TRUE;
		};
};

func void DIA_Addon_Baltram_Skip_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Baltram_Skip_15_00"); //(casually) You're doing business with pirates?
	AI_Output	(self, other, "DIA_Addon_Baltram_Skip_01_01"); //(feels caught) What? Who told you that?
	AI_Output	(other, self, "DIA_Addon_Baltram_Skip_15_02"); //I talked to one of them. He seems to be waiting for you in his bay.
	AI_Output	(self, other, "DIA_Addon_Baltram_Skip_01_03"); //What can you do? These are hard times. Everybody has to look after his own.
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_erwischen_15_00"); //Weren't you afraid of getting caught?
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_erwischen_01_01"); //That could happen. You found out, too, didn't you?
	//AI_Output (self, other, "DIA_Addon_Baltram_Skip_erwischen_01_02"); //But you'll keep your mouth shut, right?
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_MIL_01_01"); //Hey, listen. I'll tell you all that I know and, in return, you won't rat on me, okay?


	Info_ClearChoices	(DIA_Addon_Baltram_Skip);
	Info_AddChoice	(DIA_Addon_Baltram_Skip, "What is it you're trading?", DIA_Addon_Baltram_Skip_was );
	Info_AddChoice	(DIA_Addon_Baltram_Skip, "You will bear the consequences for this!", DIA_Addon_Baltram_Skip_MIL );
};

func void DIA_Addon_Baltram_Skip_MIL ()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_MIL_15_00"); //You will bear the consequences for this!
	AI_Output (self ,other, "DIA_Baltram_WAREZ_01_02"); //Something had to happen one of these days!
	Info_ClearChoices	(DIA_Addon_Baltram_Skip);

	BaltramRatOut = TRUE;

	if(MIS_BaltramTrade == LOG_RUNNING)
	{
		MIS_BaltramTrade = LOG_FAILED;
	};

	if(MIS_Baltram_ScoutAkil == LOG_RUNNING)
	{
		MIS_Baltram_ScoutAkil = LOG_FAILED;

		Log_SetTopicStatus (TOPIC_Baltram,LOG_FAILED);
		B_LogEntry (TOPIC_Baltram, "I can't finish the delivery if I threw Baltram in jail.");
	};
};

func void DIA_Addon_Baltram_Skip_was ()
{
	AI_Output			(other, self, "DIA_Addon_Baltram_Skip_was_15_00"); //(curtly) What is it you're trading?
	AI_Output			(self, other, "DIA_Addon_Baltram_Skip_was_01_01"); //I mostly supply them with food.
	AI_Output			(self, other, "DIA_Addon_Baltram_Skip_was_01_02"); //And for that, they give me the finest rum that is to be had in Khorinis.

	AI_Output			(other, self, "DIA_Addon_Baltram_Skip_pirat_15_00"); //(curtly) What do you know about the pirates?
	AI_Output			(self, other, "DIA_Addon_Baltram_Skip_pirat_01_01"); //(hastily) They live in a remote part of the island of Khorinis.
	AI_Output			(self, other, "DIA_Addon_Baltram_Skip_pirat_01_02"); //It can only be reached with a cog or some other ship, as far as I know.
	AI_Output			(self, other, "DIA_Addon_Baltram_Skip_pirat_01_03"); //The citizens of Khorinis fear them. Quite rightly so, for they're nothing but a bunch of nasty cutthroats.
	AI_Output			(self, other, "DIA_Addon_Baltram_Skip_pirat_01_04"); //Still, if you ask me, they're nowhere near as bad as the bandits.
	Info_ClearChoices	(DIA_Addon_Baltram_Skip);

	BaltramPirateTrade = TRUE;
};


// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Baltram_PICKPOCKET (C_INFO)
{
	npc			= VLK_410_Baltram;
	nr			= 900;
	condition	= DIA_Baltram_PICKPOCKET_Condition;
	information	= DIA_Baltram_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_80;
};                       

FUNC INT DIA_Baltram_PICKPOCKET_Condition()
{
	C_Beklauen (76, 175);
};
 
FUNC VOID DIA_Baltram_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Baltram_PICKPOCKET);
	Info_AddChoice		(DIA_Baltram_PICKPOCKET, DIALOG_BACK 		,DIA_Baltram_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Baltram_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Baltram_PICKPOCKET_DoIt);
};

func void DIA_Baltram_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Baltram_PICKPOCKET);
};
	
func void DIA_Baltram_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Baltram_PICKPOCKET);
};



















