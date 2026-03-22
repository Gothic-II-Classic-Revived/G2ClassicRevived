// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Lares_Kap1_EXIT(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 999;
	condition	= DIA_Lares_Kap1_EXIT_Condition;
	information	= DIA_Lares_Kap1_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Lares_Kap1_EXIT_Condition()
{
	if (Kapitel == 1)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_Kap1_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

///////////////////////////////////////////////////////////////////////
//	Info HaltsMaul
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Lares_HaltsMaul		(C_INFO)
{
	npc		 = 	SLD_449_Lares;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Lares_HaltsMaul_Condition;
	information	 = 	DIA_Addon_Lares_HaltsMaul_Info;
	important	 = 	TRUE;
	permanent	 = 	TRUE;
};

func int DIA_Addon_Lares_HaltsMaul_Condition ()
{
	if (Lares_HaltsMaul == TRUE)
	&& (Npc_IsInState (self,ZS_Talk))
		{
			return TRUE;
		};	
};

func void DIA_Addon_Lares_HaltsMaul_Info ()
{
	AI_Output	(self, other, "DIA_Addon_Lares_HaltsMaul_09_01"); //I'll see you later, down at the harbor.
	AI_StopProcessInfos (self);
};

// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Lares_PICKPOCKET (C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 900;
	condition	= DIA_Lares_PICKPOCKET_Condition;
	information	= DIA_Lares_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_100;
};                       

FUNC INT DIA_Lares_PICKPOCKET_Condition()
{
	C_Beklauen (95, 350);
};
 
FUNC VOID DIA_Lares_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Lares_PICKPOCKET);
	Info_AddChoice		(DIA_Lares_PICKPOCKET, DIALOG_BACK 			,DIA_Lares_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Lares_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Lares_PICKPOCKET_DoIt);
};

func void DIA_Lares_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Lares_PICKPOCKET);
};
	
func void DIA_Lares_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Lares_PICKPOCKET);
};
// ************************************************************
// 			  				   Hallo 
// ************************************************************
instance DIA_Lares_HALLO		(C_INFO)
{
	npc			= SLD_449_Lares;
	nr		 	= 2;
	condition	= DIA_Lares_HALLO_Condition;
	information	= DIA_Lares_HALLO_Info;
	permanent 	= FALSE;
	important 	= TRUE; 
};
func int DIA_Lares_HALLO_Condition ()
{	
	return TRUE;
};
func void DIA_Lares_HALLO_Info ()
{
	AI_Output (self, other, "DIA_Lares_HALLO_09_00"); //I must be crazy, what are you doing here?
	
	if (Mil_310_schonmalreingelassen == FALSE)
	&& (Mil_333_schonmalreingelassen == FALSE)
	{
		AI_Output (self, other, "DIA_Lares_HALLO_09_01"); //Did you SWIM here?
		AI_Output (self, other, "DIA_Lares_HALLO_09_02"); //(laughs) That's one way to get past the guards at the city gate.
		B_GivePlayerXP (500); //wer's schafft...	
	};
			
	Info_ClearChoices 	(DIA_Lares_HALLO);
	
	Info_AddChoice 		(DIA_Lares_HALLO,"Have we met before?",DIA_Lares_HALLO_NO);
	Info_AddChoice 		(DIA_Lares_HALLO,"Hey, Lares, you old scoundrel...",DIA_Lares_HALLO_YES);
};
FUNC VOID DIA_Lares_HALLO_NO()
{
	AI_Output (other, self, "DIA_Lares_HALLO_NO_15_00"); //Have we met before?
	AI_Output (self, other, "DIA_Lares_HALLO_NO_09_01"); //Man, don't you remember me? I used to hang around in the New Camp.
	AI_Output (self, other, "DIA_Lares_HALLO_NO_09_02"); //The list for the mine... Man, we had a lot of fun. Do you remember Lee?
	
	Info_ClearChoices 	(DIA_Lares_HALLO);
	
	Info_AddChoice 		(DIA_Lares_HALLO,"Of course I remember Lee!",DIA_Lares_HALLO_LEE);
	Info_AddChoice 		(DIA_Lares_HALLO,"Lee...?",DIA_Lares_HALLO_NOIDEA);
};
FUNC VOID DIA_Lares_HALLO_YES()
{
	AI_Output (other, self, "DIA_Lares_HALLO_YES_15_00"); //Hey, Lares, you old scoundrel, how did you get here?
	AI_Output (self, other, "DIA_Lares_HALLO_YES_09_01"); //I was able to escape the Valley of Mines just in time, together with Lee and some of the other boys.
	AI_Output (self, other, "DIA_Lares_HALLO_YES_09_02"); //You remember Lee, don't you?
	
	Info_ClearChoices 	(DIA_Lares_HALLO);
	
	Info_AddChoice 		(DIA_Lares_HALLO,"Of course I remember Lee!",DIA_Lares_HALLO_LEE);
	Info_AddChoice 		(DIA_Lares_HALLO,"Lee...?",DIA_Lares_HALLO_NOIDEA);
};

// ------------------------------	
	func void B_Lares_AboutLee()
	{
		AI_Output (self, other, "B_Lares_AboutLee_09_00"); //I got out of the colony with him then. Just after the Barrier was destroyed.
		AI_Output (self, other, "B_Lares_AboutLee_09_01"); //He and his boys are now on the farm of Onar the landowner.
		AI_Output (self, other, "B_Lares_AboutLee_09_02"); //He made a deal with the farmer. He and his boys defend the farm, and Onar feeds them in return.
	};
// ------------------------------	

FUNC VOID DIA_Lares_HALLO_LEE()
{
	AI_Output (other, self, "DIA_Lares_HALLO_LEE_15_00"); //Of course I remember Lee!
	B_Lares_AboutLee();
	
	Info_ClearChoices 	(DIA_Lares_HALLO);
};
FUNC VOID DIA_Lares_HALLO_NOIDEA()
{
	AI_Output (other, self, "DIA_Lares_HALLO_NOIDEA_15_00"); //Lee...?
	AI_Output (self, other, "DIA_Lares_HALLO_NOIDEA_09_01"); //You've been through a lot, huh? Lee was the leader of the mercenaries in the New Camp.
	B_Lares_AboutLee();
	
	Info_ClearChoices 	(DIA_Lares_HALLO);
};

// ************************************************************
// 							Teleporter
// ************************************************************
instance DIA_Addon_Lares_Teleportstation		(C_INFO)
{
	npc		 = 	SLD_449_Lares;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Lares_Teleportstation_Condition;
	information	 = 	DIA_Addon_Lares_Teleportstation_Info;

	description	 = 	"Have you ever used a teleporter stone?";
};
func int DIA_Addon_Lares_Teleportstation_Condition ()
{
	if (SCUsed_TELEPORTER == TRUE)			//SC hat schon mal einen Teleporter benutzt
	{
		return TRUE;
	};
};
func void DIA_Addon_Lares_Teleportstation_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Lares_Teleportstation_15_00"); //Have you ever used a teleporter stone?
	AI_Output	(self, other, "DIA_Addon_Lares_Teleportstation_09_01"); //No, but I've heard of them. The Water Mages aren't too sure about those things yet.
	AI_Output	(other, self, "DIA_Addon_Lares_Teleportstation_15_02"); //I've given it a try.
	AI_Output	(self, other, "DIA_Addon_Lares_Teleportstation_09_03"); //(laughs) Of course you have. You're not afraid of anything, are you?	
		B_GivePlayerXP (XP_Ambient);
};

// ************************************************************
// 								Hilfe
// ************************************************************
var int DIA_Addon_Lares_RangerHelp_gilde_OneTime_Waffe;
var int DIA_Addon_Lares_RangerHelp_gilde_OneTime_geld;
var int DIA_Addon_Lares_RangerHelp_gilde_OneTime_ruestung;
// ------------------------------------------------------------
instance DIA_Addon_Lares_RangerHelp		(C_INFO)
{
	npc		 	= SLD_449_Lares;
	nr		 	= 2;
	condition	= DIA_Addon_Lares_RangerHelp_Condition;
	information	= DIA_Addon_Lares_RangerHelp_Info;
	permanent	= TRUE;
	description	= "I need your help.";
};
func int DIA_Addon_Lares_RangerHelp_Condition ()
{
	if 
	(
		   (Lares_RangerHelp == TRUE)
		&& (DIA_Addon_Lares_RangerHelp_gilde_OneTime_Waffe == FALSE)
		&& (DIA_Addon_Lares_RangerHelp_gilde_OneTime_geld == FALSE)
		&& (DIA_Addon_Lares_RangerHelp_gilde_OneTime_ruestung == FALSE)
	)
	|| (Npc_IsInState (Moe, ZS_Attack))
	{
		return TRUE;
	};
};
func void DIA_Addon_Lares_RangerHelp_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Lares_RangerHelp_15_00"); //I need your help.
	AI_Output	(self, other, "DIA_Addon_Lares_RangerHelp_09_01"); //And what exactly were you thinking of?
	
	Info_ClearChoices	(DIA_Addon_Lares_RangerHelp);
	Info_AddChoice (DIA_Addon_Lares_RangerHelp, DIALOG_BACK, DIA_Addon_Lares_RangerHelp_nix );
	
	if (Npc_IsInState (Moe, ZS_Attack))
	{
		Info_AddChoice (DIA_Addon_Lares_RangerHelp, "That guy is pestering me!", DIA_Addon_Lares_RangerHelp_Moe);
	};
		
	if (DIA_Addon_Lares_RangerHelp_gilde_OneTime_Waffe == FALSE)
	&& (Lares_RangerHelp == TRUE)
	{
		Info_AddChoice	(DIA_Addon_Lares_RangerHelp, "I need a better weapon.", DIA_Addon_Lares_RangerHelp_waffe );
	};

	if (DIA_Addon_Lares_RangerHelp_gilde_OneTime_ruestung == FALSE)
	&& (Lares_RangerHelp == TRUE)
	{
		Info_AddChoice	(DIA_Addon_Lares_RangerHelp, "What about some better armor?", DIA_Addon_Lares_RangerHelp_ruestung );
	};

	if (DIA_Addon_Lares_RangerHelp_gilde_OneTime_geld == FALSE)
	&& (Lares_RangerHelp == TRUE)
	{
		Info_AddChoice	(DIA_Addon_Lares_RangerHelp, "I need some money.", DIA_Addon_Lares_RangerHelp_geld );
	};
};
func void DIA_Addon_Lares_RangerHelp_ruestung ()
{
	AI_Output (other, self, "DIA_Addon_Lares_RangerHelp_ruestung_15_00"); //What about some better armor?
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_ruestung_09_01"); //Mmh. Matteo sells armor. But he'll probably charge you an arm and a leg for it.
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_ruestung_09_02"); //There is a way you could get it cheaper, though, if you don't mind pulling a fast one on the militia...
	AI_Output (other, self, "DIA_Addon_Lares_RangerHelp_ruestung_15_03"); //What do you mean?
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_ruestung_09_04"); //There's a storage area next to Matteo's house. But all the merchandise has been confiscated by the militia.
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_ruestung_09_05"); //Go to Zuris at the marketplace and get yourself a sleeping spell. Then you send the guards off to dreamland.
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_ruestung_09_06"); //I'm sure you'll find some decent armor among Matteo's stock...
	DIA_Addon_Lares_RangerHelp_gilde_OneTime_ruestung = TRUE;
};
func void DIA_Addon_Lares_RangerHelp_waffe ()
{
	AI_Output (other, self, "DIA_Addon_Lares_RangerHelp_waffe_15_00"); //I need a better weapon.
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_waffe_09_01"); //There's nothing I can do about that, I'm afraid. Have you tried the marketplace?
	DIA_Addon_Lares_RangerHelp_gilde_OneTime_Waffe = TRUE;
};
func void DIA_Addon_Lares_RangerHelp_geld ()
{
	AI_Output (other, self, "DIA_Addon_Lares_RangerHelp_geld_15_00"); //I need some money.
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_geld_09_01"); //Don't we all? Sorry, but I have none to give you. But Lehmar the moneylender still owes me a favor.
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_geld_09_02"); //Go to him and borrow whatever money you need. I'll take care of the rest. You'll find Lehmar in the harbor district, where it borders on the lower part of town.
	DIA_Addon_Lares_RangerHelp_gilde_OneTime_geld = TRUE;
	RangerHelp_LehmarKohle = TRUE;
	Info_ClearChoices	(DIA_Addon_Lares_RangerHelp);
};
func void DIA_Addon_Lares_RangerHelp_nix ()
{
	Info_ClearChoices	(DIA_Addon_Lares_RangerHelp);
};
// ------------------------------------------------------------
// Moe
// ------------------------------------------------------------
func void DIA_Addon_Lares_RangerHelp_Moe()
{
	AI_Output (other, self, "DIA_Addon_Lares_Moe_15_00"); //That guy is pestering me...
	AI_Output (self, other, "DIA_Addon_Lares_Moe_09_01"); //Not for long...
	Info_ClearChoices (DIA_Addon_Lares_RangerHelp);
	AI_StopProcessInfos (self);
	other.aivar[AIV_INVINCIBLE] = FALSE;
	B_Attack (self, Moe, AR_GuardStopsFight, 0);
};



// ************************************************************
// ***														***
// 							Gothic II
// ***														***
// ************************************************************



// ************************************************************
// 			  			Paladine und GILDE
// ************************************************************

// ------------------------------------------------------------
// 			  					About Sld
// ------------------------------------------------------------
var int Lares_WorkForLee;
var int Lares_WayToOnar;
// ------------------------------------------------------------
instance DIA_Lares_AboutSld (C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	10;
	condition	 = 	DIA_Lares_AboutSld_Condition;
	information	 = 	DIA_Lares_AboutSld_Info;
	permanent    =  TRUE;
	description	 = 	"Tell me more about Lee and his mercenaries...";
};
func int DIA_Lares_AboutSld_Condition ()
{	
	if (other.guild == GIL_NONE)
	&& (Lares_WayToOnar == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lares_AboutSld_Info ()
{
	AI_Output (other,self,  "DIA_ADDON_Lares_AboutSld_15_00"); //Tell me more about Lee and his mercenaries...
	AI_Output (self, other, "DIA_ADDON_Lares_AboutSld_09_01"); //What do you want to know?
	
	Info_ClearChoices (DIA_Lares_AboutSld);
	Info_AddChoice (DIA_Lares_AboutSld, DIALOG_BACK, DIA_Lares_AboutSld_BACK);
	Info_AddChoice (DIA_Lares_AboutSld, "Why aren't YOU with Lee and his mercenaries?", DIA_Lares_AboutSld_WhyNotYou);
	Info_AddChoice (DIA_Lares_AboutSld, "Tell me more about the mercenaries...", DIA_Lares_AboutSld_Sld);
};
func void DIA_Lares_AboutSld_BACK()
{
	Info_ClearChoices (DIA_Lares_AboutSld);
};
func void DIA_Lares_AboutSld_Sld()
{	
	AI_Output (other,self,  "DIA_Lares_AboutSld_15_00"); //Tell me more about the mercenaries.
	AI_Output (self, other, "DIA_Lares_AboutSld_09_01"); //Well, if you're as tough as you were back then, you shouldn't have any problems with them.
	AI_Output (self, other, "DIA_Lares_AboutSld_09_02"); //Most of them are ruffians and if you can't stand up to them, you won't get far.
	AI_Output (self, other, "DIA_Lares_AboutSld_09_03"); //(laughs) If you're squeamish, you don't have a chance of landing with them...
};	
func void DIA_Lares_AboutSld_WhyNotYou()
{
	AI_Output (other, self, "DIA_Lares_WhyInCity_15_00"); //Why aren't YOU with Lee and his mercenaries?
	AI_Output (self, other, "DIA_Lares_WhyInCity_09_01"); //But I am! Just not on the farm.
	AI_Output (self, other, "DIA_Lares_WhyInCity_09_02"); //You could say I'm our outpost in the city. We don't want the ship to sail without us.
	AI_Output (self, other, "DIA_Lares_WhyInCity_09_03"); //Why did YOU come to the city?
	Lares_WorkForLee = TRUE;
	
	Info_AddChoice (DIA_Lares_AboutSld, "I must talk to the paladins, by any means!", DIA_Lares_AboutSld_Paladine);
	Info_AddChoice (DIA_Lares_AboutSld, "What ship were you talking about?", DIA_Lares_AboutSld_Schiff);
};
func void DIA_Lares_AboutSld_Schiff()
{	
	AI_Output (other,self , "DIA_Lares_Schiff_15_00"); //What ship were you talking about?
	AI_Output (self, other, "DIA_Lares_Schiff_09_01"); //It's on the open sea harbor, behind the cliffs. Lee and a few of his people really want to get away from here.
	AI_Output (self, other, "DIA_Lares_Schiff_09_02"); //But that could take a while...
	AI_Output (other,self , "DIA_Lares_Schiff_15_03"); //Why?
	AI_Output (self, other, "DIA_Lares_Schiff_09_04"); //You'd better ask Lee about that, if you meet him... He's got plans.

	Info_AddChoice (DIA_Lares_AboutSld, "How do I find the landowner's farm?", DIA_Lares_AboutSld_WayToOnar); 
};
func void DIA_Lares_AboutSld_WayToOnar()
{
	AI_Output (other,self, "DIA_Lares_WegZumHof_15_00"); //How do I find the landowner's farm?
	AI_Output (self, other, "DIA_Addon_Lares_WegZumHof_09_00"); //It's quite simple. You leave the seaport by the east gate, and then follow the path towards the east.
	AI_Output (self, other, "DIA_Lares_WegZumHof_09_01"); //I can take you there if you want. I've been hanging around here for way too long anyway.
	AI_Output (self, other, "DIA_Lares_WegZumHof_09_02"); //There's usually no militia here in the port, but I don't want to risk one of them becoming suspicious...
	Lares_WayToOnar = TRUE;
};	

func void DIA_Lares_AboutSld_Paladine ()
{
	AI_Output (other, self, "DIA_Lares_Paladine_15_00"); //I must talk to the paladins, by all means!
	AI_Output (self, other, "DIA_Lares_Paladine_09_01"); //What do you want from THEM?
	AI_Output (other, self, "DIA_Lares_Paladine_15_02"); //They've got a powerful amulet, the Eye of Innos. I need to have it.
	AI_Output (self, other, "DIA_Lares_Paladine_09_03"); //And you think they'll give it to you? You'll never get into the upper end of town.
	
	AI_Output (other, self, "DIA_Lares_Paladine_15_04"); //I'll find a way somehow.
	AI_Output (self, other, "DIA_Lares_Paladine_09_05"); //Sure, if you want to ingratiate yourself with the citizens or play errand boy for the militia...
	
	AI_Output (other, self, "DIA_Lares_Alternative_15_00"); //Do I have a choice?
	AI_Output (self, other, "DIA_Lares_Alternative_09_01"); //If I were you, I'd go to Onar's farm and talk to Lee.
	AI_Output (self, other, "DIA_Lares_Alternative_09_02"); //I'm sure we'll find a way to get you into the upper end of town.

	AI_Output (other, self, "DIA_Lares_WhyPalHere_15_00"); //Do you know why the paladins are here?
	AI_Output (self, other, "DIA_Lares_WhyPalHere_09_01"); //Nobody knows for sure... Lots of people think it's because of the orcs, but I think there's another reason.
	AI_Output (self, other, "DIA_Lares_WhyPalHere_09_02"); //It probably has something to do with the old penal colony.
};

// ************************************************************
// 			  			GuildOfThieves
// ************************************************************
// ------------------------------------------------------------
// About Thieves
// ------------------------------------------------------------
instance DIA_Lares_GuildOfThieves (C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	14;
	condition	 = 	DIA_Lares_GuildOfThieves_Condition;
	information	 = 	DIA_Lares_GuildOfThieves_Info;
	permanent    =  FALSE;
	description	 = 	"Do you know anything about a thieves' guild in town?";
};
func int DIA_Lares_GuildOfThieves_Condition ()
{	
	if (MIS_Andre_GuildOfThieves == LOG_RUNNING)
	{
		return TRUE;
	};
};
func void DIA_Lares_GuildOfThieves_Info ()
{
	AI_Output (other, self, "DIA_Lares_GuildOfThieves_15_00"); //Do you know anything about a thieves' guild in town?
	AI_Output (self, other, "DIA_Lares_GuildOfThieves_09_01"); //The questions you ask...
	AI_Output (self, other, "DIA_Lares_GuildOfThieves_09_02"); //Of course, there's a thieves' guild here. Just like in every big city.
	AI_Output (self, other, "DIA_Lares_GuildOfThieves_09_03"); //And every petty pickpocket or fence is probably connected to it somehow.
};	
// ------------------------------------------------------------
// Wo finden?
// ------------------------------------------------------------
instance DIA_Lares_WhereGuildOfThieves (C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	15;
	condition	 = 	DIA_Lares_WhereGuildOfThieves_Condition;
	information	 = 	DIA_Lares_WhereGuildOfThieves_Info;
	permanent    =  FALSE;
	description	 = 	"Do you know where I can find the thieves' guild?";
};
func int DIA_Lares_WhereGuildOfThieves_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Lares_GuildOfThieves))
	&& (DG_gefunden == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lares_WhereGuildOfThieves_Info ()
{
	AI_Output (other, self, "DIA_Lares_WhereGuildOfThieves_15_00"); //Do you know where I can find the thieves' guild?
	AI_Output (self, other, "DIA_Lares_WhereGuildOfThieves_09_01"); //(laughs) No offense, but even if I knew, I wouldn't tell you anything.
	AI_Output (self, other, "DIA_Lares_WhereGuildOfThieves_09_02"); //These people usually react VERY sensitively to things like that.
	AI_Output (self, other, "DIA_Lares_WhereGuildOfThieves_09_03"); //If you want to get involved with them, you should be very careful.
};
// ------------------------------------------------------------
// Meersalz Schlüssel
// ------------------------------------------------------------
instance DIA_Lares_GotKey (C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	16;
	condition	 = 	DIA_Lares_GotKey_Condition;
	information	 = 	DIA_Lares_GotKey_Info;
	permanent    =  FALSE;
	description	 = 	"I've got this key here. It's been corroded by sea salt...";
};
func int DIA_Lares_GotKey_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Lares_WhereGuildOfThieves))
	&& (Npc_HasItems (other, ItKe_ThiefGuildKey_MIS))
	&& (DG_gefunden == FALSE) 
	{
		return TRUE;
	};
};
func void DIA_Lares_GotKey_Info ()
{
	AI_Output (other, self, "DIA_Lares_GotKey_15_00"); //I've got this key here. It's been corroded by sea salt...
	AI_Output (self, other, "DIA_Lares_GotKey_09_01"); //So?
	AI_Output (other, self, "DIA_Lares_GotKey_15_02"); //I think it will lead me to the hideout of the thieves' guild...
	AI_Output (self, other, "DIA_Lares_GotKey_09_03"); //Well, it could be the key to the sewers.

	AI_Output (other, self, "DIA_Lares_Kanalisation_15_00"); //Where can I find the sewers?
	AI_Output (self, other, "DIA_Lares_Kanalisation_09_01"); //What do I know... they usually empty into the ocean.
};

// ************************************************************
// 		  			Important für andere Gilden
// ************************************************************
instance DIA_Lares_OtherGuild (C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	1;
	condition	 = 	DIA_Lares_OtherGuild_Condition;
	information	 = 	DIA_Lares_OtherGuild_Info;
	permanent    =  FALSE;
	important 	 = 	TRUE;
};
func int DIA_Lares_OtherGuild_Condition ()
{	
	if (Npc_IsInState (self, ZS_Talk))
	&& (other.guild != GIL_NONE)//ADDON
	{
		return TRUE;
	};
};
func void DIA_Lares_OtherGuild_Info ()
{
	if (other.guild == GIL_MIL)
	|| (other.guild == GIL_PAL)
	{
		if (other.guild == GIL_MIL)
		{
			AI_Output (self, other, "DIA_Lares_OtherGuild_09_00"); //You're in the militia now!
			AI_Output (self, other, "DIA_Lares_OtherGuild_09_01"); //(laughs) I'm gonna laugh myself sick - a former convict in the militia...
		}
		else //GIL_PAL
		{
			AI_Output (self, other, "DIA_Lares_OtherGuild_09_02"); //So now you're one of the King's paladins!
		};
	
		AI_Output (self, other, "DIA_Lares_OtherGuild_09_03"); //(mischievously) Only you could pull something like that...
	
		if (Lares_WorkForLee == TRUE)
		{
			AI_Output (self, other, "DIA_Lares_OtherGuild_09_04"); //(concerned) You won't blow the whistle on me about working for Lee, will you?
			AI_Output (other,self , "DIA_Lares_OtherGuild_15_05"); //But you know me...
		};
	};
	
	if (other.guild == GIL_KDF) 
	|| (other.guild == GIL_NOV)
	{
		AI_Output (self, other, "DIA_Lares_OtherGuild_09_06"); //I don't get it. You entered the monastery. What's it like there?
		AI_Output (other,self , "DIA_Lares_OtherGuild_15_07"); //Different.
		AI_Output (self, other, "DIA_Lares_OtherGuild_09_08"); //I can imagine.
	};
		
	if (other.guild == GIL_SLD) 
	|| (other.guild == GIL_DJG)
	{
		AI_Output (self, other, "DIA_Lares_OtherGuild_09_09"); //I head you've been accepted.
		//AI_Output (self, other, "DIA_Addon_Lares_OtherGuild_09_00"); //I heard that you have been accepted to join Lee.
		AI_Output (self, other, "DIA_Lares_OtherGuild_09_10"); //Congratulations.
	};
};


// ------------------------------------------------------------
// Lass uns gehen...
// ------------------------------------------------------------
instance DIA_Lares_GoNow (C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	10;
	condition	 = 	DIA_Lares_GoNow_Condition;
	information	 = 	DIA_Lares_GoNow_Info;
	permanent    =  TRUE;
	description	 = 	"OK, let's go.";
};
func int DIA_Lares_GoNow_Condition ()
{	
	if (Lares_WayToOnar == TRUE)
	&& ((Kapitel < 3) && (hero.guild != GIL_SLD))
	&& (Npc_GetDistToWP(self,"NW_CITY_HABOUR_02_B")<500)
			{
				return TRUE;
			};
};
func void DIA_Lares_GoNow_Info ()
{
	AI_Output (other, self, "DIA_Lares_GoNow_15_00"); //Okay, let's go.
	AI_Output (self, other, "DIA_Addon_Lares_GoNow_09_04"); //Where?
	AI_Output (other, self, "DIA_Addon_Lares_GoNow_Onar_15_00"); //To Onar's farm.
	
	LaresGuide_ZuOnar = TRUE;
	Npc_ExchangeRoutine (self, "GUIDE");

 	AI_Output (self, other, "DIA_Lares_GoNow_09_01"); //Then let's go...Follow me.
	AI_StopProcessInfos (self);
	
	Lares_Guide = Wld_GetDay();
	self.aivar[AIV_PARTYMEMBER] = TRUE;
	
	if (Npc_KnowsInfo (other, DIA_Moe_Hallo) == FALSE)
	{
		Npc_SetRefuseTalk (Moe,30);
	};
};

///////////////////////////////////////////////////////////////////////
//	Info OnarFarmGuide Stop
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Lares_OnarFarmGuide		(C_INFO)
{
	npc		 = 	SLD_449_Lares;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Lares_OnarFarmGuide_Condition;
	information	 = 	DIA_Addon_Lares_OnarFarmGuide_Info;
	important	 = 	TRUE;
};

func int DIA_Addon_Lares_OnarFarmGuide_Condition ()
{
	if (LaresGuide_ZuOnar == TRUE) 
	&& (Npc_GetDistToWP(self,"NW_CITY_TO_FOREST_11")<500)
		{
			return TRUE;
		};
};

func void DIA_Addon_Lares_OnarFarmGuide_Info ()
{	
	AI_UnequipArmor	(self);
	AI_EquipArmor 	(self, ITAR_REVIVED_ORG_H);

	AI_Output	(self, other, "DIA_Addon_Lares_ArrivedPortalInterWeiter_09_00"); //What's wrong? Are you still holding up?
	
	AI_Output	(other, self, "DIA_Addon_Lares_PortalInterWEITER_15_01"); //(irritated) Yeah, yeah.
};

// ************************************************************
// 			  					Angekommen 
// ************************************************************
instance DIA_Lares_GUIDE		(C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	1;
	condition	 = 	DIA_Lares_GUIDE_Condition;
	information	 = 	DIA_Lares_GUIDE_Info;
	permanent    =  FALSE;
	important	 = 	TRUE;
};
func int DIA_Lares_GUIDE_Condition ()
{	
	if (LaresGuide_ZuOnar == TRUE)
	&& (Npc_GetDistToWP(self,"NW_BIGFARM_LAKE_03")<500)
	{
		return TRUE;
	};
};
func void DIA_Lares_GUIDE_Info ()
{
	if Lares_Guide > (Wld_GetDay()-2)
	{
		AI_Output (self, other, "DIA_Lares_GUIDE_09_00"); //So, here we are.
	}
	else
	{
		AI_Output (self, other, "DIA_Lares_GUIDE_09_01"); //So there you are. I was beginning to think you'd been eaten by wolves.
	};
	AI_Output (self, other, "DIA_Lares_GUIDE_09_02"); //So, the rest of the way you can manage alone. I have to get back to the city, I've got a few things to take care of...
	AI_Output (self, other, "DIA_Lares_GUIDE_09_03"); //Just follow this road here, and remember - stand up for yourself and don't take any crap, and it'll be smooth sailing.
	
	AI_Output (self, other, "DIA_Addon_Lares_HaltsMaul_09_01"); //I'll see you later, down at the harbor.

	AI_StopProcessInfos (self);
	
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	AI_UnequipArmor	(self);
	AI_EquipArmor 	(self, ITAR_Vlk_L);
	
	Npc_ExchangeRoutine (self,"START");
	LaresGuide_ZuOnar = FALSE; //Joly: schluss mit Onar guide
};

// ************************************************************
// 			  				  LEHRER
// ************************************************************
// ------------------------------------------------------------
// Wanna Learn
// ------------------------------------------------------------
instance DIA_Lares_DEX		(C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	20;
	condition	 = 	DIA_Lares_DEX_Condition;
	information	 = 	DIA_Lares_DEX_Info;
	permanent 	 =  FALSE;
	description	 = 	"Can you teach me something?";
};
func int DIA_Lares_DEX_Condition ()
{	
	return TRUE;
};
func void DIA_Lares_DEX_Info ()
{
	AI_Output (other, self, "DIA_Lares_DEX_15_00"); //Can you teach me something?
	AI_Output (self, other, "DIA_Addon_Lares_DEX_Add_09_01"); //Sure. I can help you become stronger and more dexterous if you like.

	Lares_TeachDEX = TRUE;
	
	Log_CreateTopic (Topic_CityTeacher,LOG_NOTE);
	B_LogEntry (Topic_CityTeacher,"Lares can help me become stronger and more dextrous.");
};
// ------------------------------------------------------------
// 			  				   TEACH 
// ------------------------------------------------------------
var int Lares_MerkeDEX;
var int Lares_MerkeSTR;
//-----------------------------------
instance DIA_Lares_TEACH		(C_INFO)
{
	npc		  	 = 	SLD_449_Lares;
	nr			 = 	20;
	condition	 = 	DIA_Lares_TEACH_Condition;
	information	 = 	DIA_Lares_TEACH_Info;
	permanent	 = 	TRUE;
	description	 = 	"Teach me something.";
};
func int DIA_Lares_TEACH_Condition ()
{	
	if (Lares_TeachDEX == TRUE)
	{
		return TRUE;
	};
};
func void DIA_Lares_TEACH_Info ()
{
	AI_Output (other,self ,"DIA_Addon_Lares_Teach_15_00"); //Teach me something.
	
	Lares_MerkeDEX = other.attribute[ATR_DEXTERITY];
	Lares_MerkeSTR = other.attribute[ATR_STRENGTH];
	
	Info_ClearChoices   (DIA_Lares_TEACH);
	Info_AddChoice 		(DIA_Lares_TEACH, DIALOG_BACK, DIA_Lares_TEACH_BACK);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX1	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)),DIA_Lares_TEACH_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX5	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)	,DIA_Lares_TEACH_5);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR1	, B_GetLearnCostAttribute(other, ATR_STRENGTH)),DIA_Lares_TEACHSTR_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR5	, B_GetLearnCostAttribute(other, ATR_STRENGTH)*5)	,DIA_Lares_TEACHSTR_5);
};
func void DIA_Lares_TEACH_BACK()
{
	if (other.attribute[ATR_DEXTERITY] > Lares_MerkeDEX)
	{
		AI_Output (self, other, "DIA_Lares_TEACH_BACK_09_00"); //You've already gotten more dexterous.
	};
	if (other.attribute[ATR_STRENGTH] > Lares_MerkeSTR)
	{
		AI_Output (self, other, "DIA_Addon_Lares_TEACH_BACK_Add_09_00"); //(appraisingly). Good. Your strength has increased.
	};
	
	Info_ClearChoices (DIA_Lares_TEACH);
};
func void DIA_Lares_TEACH_1()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 1, T_MED);
	
	Info_ClearChoices   (DIA_Lares_TEACH);
	Info_AddChoice 		(DIA_Lares_TEACH, DIALOG_BACK, DIA_Lares_TEACH_BACK);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX1	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)),DIA_Lares_TEACH_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX5	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)	,DIA_Lares_TEACH_5);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR1	, B_GetLearnCostAttribute(other, ATR_STRENGTH)),DIA_Lares_TEACHSTR_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR5	, B_GetLearnCostAttribute(other, ATR_STRENGTH)*5)	,DIA_Lares_TEACHSTR_5);
};
func void DIA_Lares_TEACH_5()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 5, T_MED);
	
	Info_ClearChoices   (DIA_Lares_TEACH);
	Info_AddChoice 		(DIA_Lares_TEACH, DIALOG_BACK, DIA_Lares_TEACH_BACK);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX1	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)),DIA_Lares_TEACH_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX5	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)	,DIA_Lares_TEACH_5);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR1	, B_GetLearnCostAttribute(other, ATR_STRENGTH)),DIA_Lares_TEACHSTR_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR5	, B_GetLearnCostAttribute(other, ATR_STRENGTH)*5)	,DIA_Lares_TEACHSTR_5);
};
func void DIA_Lares_TEACHSTR_1()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 1, T_LOW);
	
	Info_ClearChoices   (DIA_Lares_TEACH);
	Info_AddChoice 		(DIA_Lares_TEACH, DIALOG_BACK, DIA_Lares_TEACH_BACK);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX1	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)),DIA_Lares_TEACH_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX5	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)	,DIA_Lares_TEACH_5);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR1	, B_GetLearnCostAttribute(other, ATR_STRENGTH)),DIA_Lares_TEACHSTR_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR5	, B_GetLearnCostAttribute(other, ATR_STRENGTH)*5)	,DIA_Lares_TEACHSTR_5);
};
func void DIA_Lares_TEACHSTR_5()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 5, T_LOW);
	
	Info_ClearChoices   (DIA_Lares_TEACH);
	Info_AddChoice 		(DIA_Lares_TEACH, DIALOG_BACK, DIA_Lares_TEACH_BACK);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX1	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)),DIA_Lares_TEACH_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX5	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)	,DIA_Lares_TEACH_5);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR1	, B_GetLearnCostAttribute(other, ATR_STRENGTH)),DIA_Lares_TEACHSTR_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR5	, B_GetLearnCostAttribute(other, ATR_STRENGTH)*5)	,DIA_Lares_TEACHSTR_5);
};


//#################################
//##
//##	Kapitel 2
//##
//#################################

// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Lares_Kap2_EXIT(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 999;
	condition	= DIA_Lares_Kap2_EXIT_Condition;
	information	= DIA_Lares_Kap2_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Lares_Kap2_EXIT_Condition()
{
	if (Kapitel == 2)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_Kap2_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

//#################################
//##
//##	Kapitel 3
//##
//#################################

// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Lares_Kap3_EXIT(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 999;
	condition	= DIA_Lares_Kap3_EXIT_Condition;
	information	= DIA_Lares_Kap3_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Lares_Kap3_EXIT_Condition()
{
	if (Kapitel == 3)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_Kap3_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 		Gibt's was Neues?			 
// ************************************************************
INSTANCE DIA_Lares_AnyNews(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 5;
	condition	= DIA_Lares_AnyNews_Condition;
	information	= DIA_Lares_AnyNews_Info;
	permanent	= TRUE;
	description = "Any news?";
};                       
FUNC INT DIA_Lares_AnyNews_Condition()
{
	if (Kapitel == 3)
	&& (MIS_SCKnowsInnosEyeIsBroken == TRUE)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_AnyNews_Info()
{	
	AI_Output (other,self ,"DIA_Lares_AnyNews_15_00"); //Any news?
	if (MIS_RescueBennet == LOG_SUCCESS)
	{
		AI_Output (self ,other,"DIA_Lares_AnyNews_09_01"); //You're responsible for the best news yourself. They've let Bennet go again, he's back at the farm.
		AI_Output (self ,other,"DIA_Lares_AnyNews_09_02"); //Go to him, I think he'd like to thank you himself.
	}
	else
	{
		AI_Output (self ,other,"DIA_Lares_AnyNews_09_03"); //You could say so. The paladins have arrested Bennet, our smith.
		
		if (MIS_RescueBennet == LOG_RUNNING)
		{
			AI_Output (other,self ,"DIA_Lares_AnyNews_15_04"); //So I've heard. That's a bad business.
			AI_Output (self ,other,"DIA_Lares_AnyNews_09_05"); //You can say that again.
		}
		else
		{
			AI_Output (other,self ,"DIA_Lares_AnyNews_15_06"); //How did that happen?
			AI_Output (self ,other,"DIA_Lares_AnyNews_09_07"); //Bennet went to town to buy supplies. Well, he never came back.
			AI_Output (self ,other,"DIA_Lares_AnyNews_09_08"); //If you want to learn more, you should ask Hodges, he was in the city with Bennet.
			
			MIS_RescueBennet = LOG_RUNNING;
		};
	};
};

// ************************************************************
// 		Hast du was von Bennet gehört?			 
// ************************************************************
INSTANCE DIA_Lares_NewsAboutBennet(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 6;
	condition	= DIA_Lares_NewsAboutBennet_Condition;
	information	= DIA_Lares_NewsAboutBennet_Info;
	permanent	= FALSE;
	description = "Any news of Bennet?";
};                       
FUNC INT DIA_Lares_NewsAboutBennet_Condition()
{
	if (MIS_RescueBennet == LOG_RUNNING)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_NewsAboutBennet_Info()
{	
	AI_Output (other,self ,"DIA_Lares_NewsAboutBennet_15_00"); //Any news of Bennet?
	AI_Output (self ,other,"DIA_Lares_NewsAboutBennet_09_01"); //They seem to have taken him to the barracks and tossed him into the dungeon.
	AI_Output (other,self ,"DIA_Lares_NewsAboutBennet_15_02"); //How can we get him out of there?
	AI_Output (self ,other,"DIA_Lares_NewsAboutBennet_09_03"); //I don't have any ideas so far. I can't get to his cell to talk to him.
	AI_Output (self ,other,"DIA_Lares_NewsAboutBennet_09_04"); //All I can do is keep my ears open, but there isn't much to learn around here.
};

//#################################
//##
//##	Kapitel 4
//##
//#################################

// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Lares_Kap4_EXIT(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 999;
	condition	= DIA_Lares_Kap4_EXIT_Condition;
	information	= DIA_Lares_Kap4_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Lares_Kap4_EXIT_Condition()
{
	if (Kapitel == 4)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_Kap4_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

//****************************************
//	Wieso bist du nicht auf Drachenjagd?
//****************************************

INSTANCE DIA_Lares_Kap4_PERM(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 6;
	condition	= DIA_Lares_Kap4_PERM_Condition;
	information	= DIA_Lares_Kap4_PERM_Info;
	permanent	= TRUE;
	description = "Why aren't you out hunting dragons?";
};                       
FUNC INT DIA_Lares_Kap4_PERM_Condition()
{
	if (Kapitel == 4)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_Kap4_PERM_Info()
{	
	AI_Output (other,self ,"DIA_Lares_Kap4_PERM_15_00"); //Why aren't you out hunting dragons?
	AI_Output (self ,other,"DIA_Lares_Kap4_PERM_09_01"); //That's not my kind of thing, I'll leave that to the others.
	AI_Output (self ,other,"DIA_Lares_Kap4_PERM_09_02"); //Nah, nah. Fresh sea air - that's what I need now.
};

//#################################
//##
//##	Kapitel 5
//##
//#################################

// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Lares_Kap5_EXIT(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 999;
	condition	= DIA_Lares_Kap5_EXIT_Condition;
	information	= DIA_Lares_Kap5_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Lares_Kap5_EXIT_Condition()
{
	if (Kapitel == 5)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_Kap5_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

//****************************************************************
//	Lares anheuern
//****************************************************************

///////////////////////////////////////////////////////////////////////
//	Hast du Lust diese Insel zu verlassen?
///////////////////////////////////////////////////////////////////////
instance DIA_Lares_KnowWhereEnemy		(C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	5;
	condition	 = 	DIA_Lares_KnowWhereEnemy_Condition;
	information	 = 	DIA_Lares_KnowWhereEnemy_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"Would you want to leave this island?";
};
func int DIA_Lares_KnowWhereEnemy_Condition ()
{	
	if (MIS_SCKnowsWayToIrdorath == TRUE)
	&& (Lares_IsOnBoard == FALSE) 
	{
		return TRUE;
	};
};
func void DIA_Lares_KnowWhereEnemy_Info ()
{
	AI_Output			(other, self, "DIA_Lares_KnowWhereEnemy_15_00"); //Would you fancy leaving this island?
	AI_Output			(self, other, "DIA_Lares_KnowWhereEnemy_09_01"); //More than anything. What have you got in mind?
	AI_Output			(other, self, "DIA_Lares_KnowWhereEnemy_15_02"); //I found out where the leader of the dragons is hiding. He's on an island, not far from here.
	AI_Output			(other, self, "DIA_Lares_KnowWhereEnemy_15_03"); //I intend to get rid of him for good.
	AI_Output			(self, other, "DIA_Lares_KnowWhereEnemy_09_04"); //Sounds like a blast. If you can use me, I'm in.
	AI_Output			(self, other, "DIA_Lares_KnowWhereEnemy_09_05"); //Couldn't you use a teacher for dexterity or combat with one-handed weapons on your journey?
	
	if (crewmember_count >= Max_Crew)
	{
		AI_Output			(other,self , "DIA_Lares_KnowWhereEnemy_15_06"); //The ship's already full, but I'll get back to you if there is a change.
	}
	else 
	{
		Info_ClearChoices (DIA_Lares_KnowWhereEnemy);
		Info_AddChoice (DIA_Lares_KnowWhereEnemy,"I have no use for you.",DIA_Lares_KnowWhereEnemy_No);
		Info_AddChoice (DIA_Lares_KnowWhereEnemy,"I knew I could rely on you.",DIA_Lares_KnowWhereEnemy_Yes);
	};
};

FUNC VOID DIA_Lares_KnowWhereEnemy_Yes ()
{
	AI_Output (other,self ,"DIA_Lares_KnowWhereEnemy_Yes_15_00"); //I knew I could rely on you.
	AI_Output (other,self ,"DIA_Lares_KnowWhereEnemy_Yes_15_01"); //We're all going to meet at the ship.
	AI_Output (self ,other,"DIA_Lares_KnowWhereEnemy_Yes_09_02"); //A man of action, that's what I like. See you later.
	
	Lares_IsOnBoard	 = LOG_SUCCESS;
	crewmember_Count = (Crewmember_Count +1);
	
	if (MIS_ReadyforChapter6 == TRUE)
		{
			Npc_ExchangeRoutine (self,"SHIP"); 
		}
		else
		{
			Npc_ExchangeRoutine (self,"WAITFORSHIP"); 
		};

	Info_ClearChoices (DIA_Lares_KnowWhereEnemy);
};

FUNC VOID DIA_Lares_KnowWhereEnemy_No ()
{
	AI_Output (other,self ,"DIA_Lares_KnowWhereEnemy_No_15_00"); //I appreciate your offer, but I have no use for you.
	AI_Output (self ,other,"DIA_Lares_KnowWhereEnemy_No_09_01"); //You must know what you want. If you want to talk about it later, you know where to find me.

	if (hero.guild == GIL_DJG)
	{
		Lares_IsOnBoard	 = LOG_OBSOLETE;
	}
	else
	{
		Lares_IsOnBoard	 = LOG_FAILED;
	};	
	Info_ClearChoices (DIA_Lares_KnowWhereEnemy);
};


///////////////////////////////////////////////////////////////////////
//	I kann dich doch nicht gebrauchen!
///////////////////////////////////////////////////////////////////////
instance DIA_Lares_LeaveMyShip		(C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	5;
	condition	 = 	DIA_Lares_LeaveMyShip_Condition;
	information	 = 	DIA_Lares_LeaveMyShip_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"It's better if you don't come along.";
};
func int DIA_Lares_LeaveMyShip_Condition ()
{	
	if (Lares_IsOnBOard == LOG_SUCCESS)
	&& (MIS_ReadyforChapter6 == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lares_LeaveMyShip_Info ()
{
	AI_Output			(other, self, "DIA_Lares_LeaveMyShip_15_00"); //It's better if you don't come along.
	AI_Output			(self, other, "DIA_Lares_LeaveMyShip_09_01"); //As you like, but in the future, think about what you promise to whom.
	
	if (hero.guild == GIL_DJG)
	{
		Lares_IsOnBoard	 = LOG_OBSOLETE;
	}
	else
	{
		Lares_IsOnBoard	 = LOG_FAILED;
	};				//Log_Obsolete ->der Sc kann ihn wiederholen, Log_Failed ->hat die Schnauze voll, kommt nicht mehr mit! 
	crewmember_Count = (Crewmember_Count -1);
	
	Npc_ExchangeRoutine (self,"ShipOff"); 
};

///////////////////////////////////////////////////////////////////////
//	Ich habs mir überlegt!
///////////////////////////////////////////////////////////////////////
instance DIA_Lares_StillNeedYou		(C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	5;
	condition	 = 	DIA_Lares_StillNeedYou_Condition;
	information	 = 	DIA_Lares_StillNeedYou_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"Are you still interested in the voyage?";
};
func int DIA_Lares_StillNeedYou_Condition ()
{	
	if ((Lares_IsOnBOard == LOG_OBSOLETE)		
	|| (Lares_IsOnBOard == LOG_FAILED))
	&& (crewmember_count < Max_Crew)
	{
		return TRUE;
	};
};
func void DIA_Lares_StillNeedYou_Info ()
{
	AI_Output			(other, self, "DIA_Lares_StillNeedYou_15_00"); //Are you still interested in the voyage?
	
	if (Lares_IsOnBoard == LOG_OBSOLETE)
	{
		AI_Output	(self, other, "DIA_Lares_StillNeedYou_09_01"); //Normally, I don't let people treat me like that, but since you're one of us, I'll let you get away with it this time.
		AI_Output	(self, other, "DIA_Lares_StillNeedYou_09_02"); //We'll meet on the ship.
		
		Lares_IsOnBoard	 = LOG_SUCCESS;
		crewmember_Count = (Crewmember_Count +1);
	
		if (MIS_ReadyforChapter6 == TRUE)
			{
				Npc_ExchangeRoutine (self,"SHIP"); 
			}
			else
			{
				Npc_ExchangeRoutine (self,"WAITFORSHIP"); 
			};
	}
	else
	{
		AI_Output	(self, other, "DIA_Lares_StillNeedYou_09_03"); //Don't take it personally, but I think you were right.
		AI_Output	(self, other, "DIA_Lares_StillNeedYou_09_04"); //It's better if I stay here.
		
		AI_StopProcessInfos (self);
	};	
};


























