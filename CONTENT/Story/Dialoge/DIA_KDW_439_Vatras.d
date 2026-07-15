// *********************************************************
// 			  				EXIT
// *********************************************************
var int Vatras_SchickeLeuteWeg;

///////////////////////////////////////////////////////////////////////
//	Info KillerWarning
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Vatras_KillerWarning		(C_INFO)
{
	npc		 = 	KDW_439_Vatras;
	nr		 = 	2;
	condition	 = 	DIA_Addon_Vatras_KillerWarning_Condition;
	information	 = 	DIA_Addon_Vatras_KillerWarning_Info;
	important	 = 	TRUE;
};

func int DIA_Addon_Vatras_KillerWarning_Condition ()
{
	if (Kapitel >= 5)
	&& (MadKillerCount >= 3)
	&& (MadKillerCount < 7)
	&& (VatrasPissedOffForever == FALSE)
	&& (Npc_IsInState (self,ZS_Talk))
		{
			return TRUE;
		};	
};

func void DIA_Addon_Vatras_KillerWarning_Info ()
{
	AI_Output	(self, other, "DIA_Addon_Vatras_KillerWarning_ADD_05_00"); //There are many rumors about you in Khorinis.
	AI_Output	(self, other, "DIA_Addon_Vatras_KillerWarning_ADD_05_01"); //They say you were involved in the murder of innocent people.
	AI_Output	(self, other, "DIA_Addon_Vatras_KillerWarning_ADD_05_02"); //If that's truly the case, I can only warn you, son. 
	AI_Output	(self, other, "DIA_Addon_Vatras_KillerWarning_ADD_05_03"); //Do not leave the path of balance and preservation of this world, or you will have to bear the consequences.
	AI_Output	(self, other, "DIA_Addon_Vatras_KillerWarning_ADD_05_04"); //Tell me. What can I do to help you?
};

///////////////////////////////////////////////////////////////////////
//	Info LastWarning
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Vatras_LastWarning		(C_INFO)
{
	npc		 = 	KDW_439_Vatras;
	nr		 = 	2;
	condition	 = 	DIA_Addon_Vatras_LastWarning_Condition;
	information	 = 	DIA_Addon_Vatras_LastWarning_Info;
	important	 = 	TRUE;
};

func int DIA_Addon_Vatras_LastWarning_Condition ()
{
	if (Kapitel >= 5)
	&& (MadKillerCount >= 7)
	&& (VatrasPissedOffForever == FALSE)
		{
			return TRUE;
		};
};

func void DIA_Addon_Vatras_LastWarning_Info ()
{
	B_LastWarningVatras ();
	AI_Output	(self, other, "DIA_Addon_Vatras_LastWarning_ADD_05_06"); //What have you got to say for yourself?

	Info_ClearChoices	(DIA_Addon_Vatras_LastWarning);
	Info_AddChoice	(DIA_Addon_Vatras_LastWarning, "Kiss my ass.", DIA_Addon_Vatras_LastWarning_Arsch );	 
	Info_AddChoice	(DIA_Addon_Vatras_LastWarning, "I'm sorry. I didn't know what I was doing.", DIA_Addon_Vatras_LastWarning_Reue );	 
};
func void DIA_Addon_Vatras_LastWarning_Arsch ()
{
	AI_Output	(other, self, "DIA_Addon_Vatras_LastWarning_Arsch_ADD_15_00"); //Get stuffed.
	AI_Output	(self, other, "DIA_Addon_Vatras_LastWarning_Arsch_ADD_05_00"); //There isn't a trace of remorse in your words.
	AI_Output	(self, other, "DIA_Addon_Vatras_LastWarning_Arsch_ADD_05_01"); //You leave me no choice.
	Info_ClearChoices	(DIA_Addon_Vatras_LastWarning);
	B_VatrasPissedOff ();
};

func void DIA_Addon_Vatras_LastWarning_Reue ()
{
	AI_Output	(other, self, "DIA_Addon_Vatras_LastWarning_Reue_ADD_15_00"); //I'm sorry. I didn't know what I was doing.
	AI_Output	(self, other, "DIA_Addon_Vatras_LastWarning_Reue_ADD_05_00"); //I shall pray for you and hope that you will come to your senses again.
	AI_Output	(self, other, "DIA_Addon_Vatras_LastWarning_Reue_ADD_05_01"); //Woe betide you if I hear of another murder that you've had a hand in.
	Info_ClearChoices	(DIA_Addon_Vatras_LastWarning);
	VatrasMadKillerCount = MadKillerCount;
};

///////////////////////////////////////////////////////////////////////
//	Info PissedOf
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Vatras_PissedOff		(C_INFO)
{
	npc		 = 	KDW_439_Vatras;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Vatras_PissedOff_Condition;
	information	 = 	DIA_Addon_Vatras_PissedOff_Info;
	important	 = 	TRUE;
};

func int DIA_Addon_Vatras_PissedOff_Condition ()
{
	if (MadKillerCount > VatrasMadKillerCount)
	&& (Npc_KnowsInfo (other, DIA_Addon_Vatras_LastWarning))
	&& (Kapitel >= 5)
		{
			return TRUE;
		};
};

func void DIA_Addon_Vatras_PissedOff_Info ()
{
	AI_Output	(self, other, "DIA_Addon_Vatras_PissedOff_ADD_05_00"); //Your words are as false as your deeds.
	AI_Output	(self, other, "DIA_Addon_Vatras_PissedOff_ADD_05_01"); //You just won't cease your pointless killing.
	AI_Output	(self, other, "DIA_Addon_Vatras_PissedOff_ADD_05_02"); //You leave me no choice. 
	B_VatrasPissedOff ();
};

// ----------------------------
instance DIA_Vatras_EXIT   (C_INFO)
{
	npc         = KDW_439_Vatras;
	nr          = 999;
	condition   = DIA_Vatras_EXIT_Condition;
	information = DIA_Vatras_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Vatras_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Vatras_EXIT_Info()
{
	AI_StopProcessInfos (self);
	if(Vatras_SchickeLeuteWeg == TRUE)
	{
		B_StartOtherRoutine(VLK_455_Buerger,"VATRASAWAY");
		B_StartOtherRoutine(VLK_454_Buerger,"VATRASAWAY");
		B_StartOtherRoutine(VLK_428_Buergerin,"VATRASAWAY");
		B_StartOtherRoutine(VLK_450_Buerger,"VATRASAWAY");
		B_StartOtherRoutine(VLK_426_Buergerin,"VATRASAWAY");
		B_StartOtherRoutine(VLK_421_Valentino,"VATRASAWAY");
		Vatras_SchickeLeuteWeg = FALSE;
	};
};



// ************************************************************
// 			  				PICK POCKET
// ************************************************************
instance DIA_Vatras_PICKPOCKET (C_INFO)
{
	npc			= KDW_439_Vatras;
	nr			= 900;
	condition	= DIA_Vatras_PICKPOCKET_Condition;
	information	= DIA_Vatras_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_100;
};                       
func INT DIA_Vatras_PICKPOCKET_Condition()
{
	C_Beklauen (91, 250);
};
func VOID DIA_Vatras_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Vatras_PICKPOCKET);
	Info_AddChoice		(DIA_Vatras_PICKPOCKET, DIALOG_BACK 		,DIA_Vatras_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Vatras_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Vatras_PICKPOCKET_DoIt);
};
func void DIA_Vatras_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Vatras_PICKPOCKET);
};
func void DIA_Vatras_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Vatras_PICKPOCKET);
};



// *********************************************************
// 			  				Hallo
// *********************************************************
instance DIA_Vatras_GREET		(C_INFO)
{
	npc			 = 	KDW_439_Vatras;
	nr			 = 	2;
	condition	 = 	DIA_Vatras_GREET_Condition;
	information	 = 	DIA_Vatras_GREET_Info;

	important	 =  TRUE;
};
func int DIA_Vatras_GREET_Condition ()
{	
	if (Npc_IsInState (self, ZS_Talk))
	&& (self.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Vatras_GREET_Info ()
{
	AI_Output (self, other, "DIA_Vatras_GREET_05_00"); //Adanos be with you.
	AI_Output (other, self, "DIA_Vatras_GREET_15_01"); //Who are you?
	AI_Output (self, other, "DIA_Vatras_GREET_05_02"); //I am Vatras, a servant of Adanos, the guardian of the divine and earthly equilibrium.
	AI_Output (self, other, "DIA_Vatras_GREET_05_03"); //What can I do for you?
};



///////////////////////////////////////////////////////////////////////
//	Info INFLUENCE (SEGEN)
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_INFLUENCE		(C_INFO)
{
	npc		 	 = 	KDW_439_Vatras;
	nr			 = 	92;
	condition	 = 	DIA_Vatras_INFLUENCE_Condition;
	information	 = 	DIA_Vatras_INFLUENCE_Info;
	permanent    =  FALSE;
	description	 = 	"I am asking your blessing.";
};
func int DIA_Vatras_INFLUENCE_Condition ()
{
	if (MIS_Thorben_GetBlessings == LOG_RUNNING)
	&& (Player_IsApprentice == APP_NONE)
	// --------------------
	{
		return TRUE;
	}; 
};
func void DIA_Vatras_INFLUENCE_Info ()
{
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_15_00"); //I am asking your blessing.
	AI_Output (self, other, "DIA_Vatras_INFLUENCE_05_01"); //Why should I give you my blessing, stranger?
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_15_02"); //I want to start an apprenticeship with one of the masters in the lower part of town.
	//AI_Output (self, other, "DIA_Vatras_INFLUENCE_05_04"); //But I know nothing about you at all...
	AI_Output (self, other, "DIA_Vatras_INFLUENCE_05_03"); //I may give you my blessing, stranger, but I know nothing about you. Tell me about yourself.
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_15_04"); //What do you want to know?
	AI_Output (self, other, "DIA_Vatras_INFLUENCE_05_05"); //Well, you could tell me where you come from and why you have come to the city.
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_15_06"); //I carry an important message for the leader of the paladins.
	AI_Output (self, other, "DIA_Vatras_INFLUENCE_05_07"); //What is this message?
		
	Info_ClearChoices   (DIA_Vatras_INFLUENCE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Dragons have come...",DIA_Vatras_INFLUENCE_FIRST_TRUTH);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Terrible things are bound to happen soon.",DIA_Vatras_INFLUENCE_FIRST_LIE);
};
FUNC VOID DIA_Vatras_INFLUENCE_FIRST_TRUTH()
{
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_FIRST_TRUTH_15_00"); //A large army is gathering as we talk, led by dragons and determined to conquer the country.
	
	if (Vatras_First == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_FIRST_TRUTH_05_01"); //If that is indeed true, the balance of the earth will be disturbed. Who told you this?
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_FIRST_TRUTH_05_02"); //(considering) Dragons? You speak of beings which, until now, have only been mentioned in legends. How do you know this?
	};
	Info_ClearChoices   (DIA_Vatras_INFLUENCE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Oh, I heard rumors somewhere...",DIA_Vatras_INFLUENCE_SECOND_LIE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Xardas the magician told me...",DIA_Vatras_INFLUENCE_SECOND_TRUTH);
	
	Vatras_First = TRUE;
};
FUNC VOID DIA_Vatras_INFLUENCE_FIRST_LIE()
{
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_FIRST_LIE_15_00"); //Terrible things are bound to happen soon.
	
	if (Vatras_First == 2)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_FIRST_LIE_05_01"); //(angry) Aha. And who has told you this?
	}
	else 
 	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_FIRST_LIE_05_02"); //Terrible things, hm... how do you know this?
	};
	Info_ClearChoices   (DIA_Vatras_INFLUENCE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Oh, I heard rumors somewhere...",DIA_Vatras_INFLUENCE_SECOND_LIE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Xardas the magician told me...",DIA_Vatras_INFLUENCE_SECOND_TRUTH);
	
	Vatras_First = 2;
};
FUNC VOID DIA_Vatras_INFLUENCE_SECOND_TRUTH()
{
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_SECOND_TRUTH_15_00"); //Xardas the magician told me. He sent me to warn the paladins.
	
	if (Vatras_Second == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_SECOND_TRUTH_05_01"); //I know this man as a wise and mighty master of magic. And where do you come from?
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_SECOND_TRUTH_05_02"); //The necromancer... So he lives... (considers) and he sent you? Who are you really?
	};
	Info_ClearChoices   (DIA_Vatras_INFLUENCE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"I'm just an adventurer from down south...",DIA_Vatras_INFLUENCE_THIRD_LIE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"I'm a former convict...",DIA_Vatras_INFLUENCE_THIRD_TRUTH);
	
	Vatras_Second = TRUE;
};
FUNC VOID DIA_Vatras_INFLUENCE_SECOND_LIE()
{
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_SECOND_LIE_15_00"); //Oh, I heard rumors somewhere...
	
	if (Vatras_Second == 2)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_SECOND_LIE_05_01"); //(annoyed) Do you at least remember where you come from?
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_SECOND_LIE_05_02"); //Aha. And that is why you have made this journey. Who are you really?
	};
	Info_ClearChoices   (DIA_Vatras_INFLUENCE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"I'm an adventurer from down south...",DIA_Vatras_INFLUENCE_THIRD_LIE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"I'm a former convict...",DIA_Vatras_INFLUENCE_THIRD_TRUTH);
	
	Vatras_Second = 2;
};
func VOID B_Vatras_INFLUENCE_REPEAT()
{
	//RAUS wegen ADDON
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_REPEAT_15_00"); //And will you give me your blessing now?
	AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_01"); //Good, let us summarize..
	
	if (Vatras_Third == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_02"); //You are a former prisoner,...
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_03"); //You are an adventurer from down south...
	};
	if (Vatras_Second  == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_04"); //... who has been told by Xardas the necromancer...
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_05"); //... who heard rumors...
	};
	if (Vatras_First  == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_06"); //... that dragons have come to conquer the country.
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_07"); //... that terrible things are going to happen.
	};
		
	AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_08"); //And you have come to report this to the paladins...
	if (Vatras_First   == TRUE)
	&& (Vatras_Second  == TRUE)
	&& (Vatras_Third   == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_09"); //That all sounds rather fantastic, but I cannot perceive that you are lying to me.
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_10"); //Therefore I must assume that your motives are honorable.
		
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_11"); //Go with the blessing of Adanos, my son!
		Snd_Play ("LevelUp");
		B_GivePlayerXP (XP_VatrasTruth);
		Vatras_Segen = TRUE;
		B_LogEntry (TOPIC_Thorben,"Vatras the Water Mage has blessed me.");
		
		Info_ClearChoices  (DIA_Vatras_INFLUENCE);
	}
	else if(Vatras_Chance == FALSE)
	{
		AI_Output (self, other, "DIA_Vatras_Add_05_00"); //I think there's something you're not telling me.
		AI_Output (self, other, "DIA_Vatras_Add_05_01"); //If you're worried I might pass on what you tell me, then let me reassure you.
		AI_Output (self, other, "DIA_Vatras_Add_05_02"); //I have sworn to keep all secrets I am entrusted with to myself.
		if (Wld_IsTime(05,05,20,10))
		{
			AI_Output (other, self, "DIA_Vatras_Add_15_03"); //And what about all the people here?
			AI_Output (self, other, "DIA_Vatras_Add_05_04"); //They only understand half of what I PREACH to them. So don't fret.
		};
		AI_Output (self, other, "DIA_Vatras_Add_05_05"); //Let's start over at the beginning. What's that message?
		
		//ADDON - SC kann nicht mehr versagen!
		Vatras_Chance = TRUE; 
		Info_ClearChoices   (DIA_Vatras_INFLUENCE);
		Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Dragons have come...",DIA_Vatras_INFLUENCE_FIRST_TRUTH);
		Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Terrible things are bound to happen soon.",DIA_Vatras_INFLUENCE_FIRST_LIE);
	}
	else if(Vatras_Chance == TRUE)
	{
		AI_Output(self,other,"DIA_Vatras_INFLUENCE_REPEAT_05_13");	//I have now given you two chances to tell me the truth – but you apparently do not want to. I shall not give you my blessing!
		
		B_LogEntry (TOPIC_Thorben,"Vatras the Water Mage doesn't trust me and decided to not grant me his blessing. Now Thorben will not approve of me to the other masters.");
		MIS_Thorben_GetBlessings = LOG_FAILED;

		Info_ClearChoices  (DIA_Vatras_INFLUENCE);
	};
};
FUNC VOID DIA_Vatras_INFLUENCE_THIRD_TRUTH()
{
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_THIRD_TRUTH_15_00"); //I'm a former convict from the penal colony of Khorinis.
	Vatras_Third = TRUE;
	
	B_Vatras_INFLUENCE_REPEAT();
};
FUNC VOID DIA_Vatras_INFLUENCE_THIRD_LIE()
{
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_THIRD_LIE_15_00"); //I'm an adventurer from down south...
	Vatras_Third = FALSE;
		
	B_Vatras_INFLUENCE_REPEAT();
}; 

///////////////////////////////////////////////////////////////////////
//	Info WoKdF
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_WoKdF (C_INFO)
{
	npc		 	 = 	KDW_439_Vatras;
	nr			 =  93;
	condition	 = 	DIA_Vatras_WoKdF_Condition;
	information	 = 	DIA_Vatras_WoKdF_Info;
	permanent    =  FALSE;
	description	 = 	"Where can I find a priest of Innos?";		
};

func int DIA_Vatras_WoKdF_Condition ()
{	
	if (MIS_Thorben_GetBlessings == LOG_RUNNING)
	&& (Vatras_Segen == TRUE)
	{
		return TRUE;
	};
};
func void DIA_Vatras_WoKdF_Info ()
{
	AI_Output (other, self, "DIA_Vatras_WoKdF_15_00"); //Where can I find a priest of Innos?
	AI_Output (self, other, "DIA_Vatras_WoKdF_05_01"); //The best thing would be to look around the marketplace. You will find an emissary of the monastery there.

	AI_Output	(self, other, "DIA_Addon_Vatras_GuildHelp_05_08"); //But I have heard that he is not only in town to raise some funds.
	AI_Output	(self, other, "DIA_Addon_Vatras_GuildHelp_05_09"); //He told me about a statuette that was stolen from him.
	MIS_Addon_Vatras_Go2Daron = LOG_RUNNING;
	
	Log_CreateTopic (TOPIC_Revived_DaronStatuette, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Revived_DaronStatuette, LOG_RUNNING);
	B_LogEntry (TOPIC_Revived_DaronStatuette,"Daron, the Fire Magician in the marketplace, has lost some sort of statuette.");
};

// ************************************************************
// 		Tell Me About RING 		(Trigger für MIS_Waffenhändler)
// ************************************************************
instance DIA_Addon_Vatras_TellMe (C_INFO)
{
	npc		 	= KDW_439_Vatras;
	nr		 	= 1;
	condition	= DIA_Addon_Vatras_TellMe_Condition;
	information	= DIA_Addon_Vatras_TellMe_Info;
	permanent	= TRUE;

	description	= "What exactly is it that you do?";
};
func int DIA_Addon_Vatras_TellMe_Condition ()
{
	if (Kapitel >= 3)
	&& (Fernando_Erz == TRUE)
	&& (MIS_Vatras_FindTheBanditTrader != LOG_SUCCESS)
	&& (Vatras_ToMartin == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Addon_Vatras_TellMe_Info ()
{
	AI_Output (other, self, "DIA_Addon_Vatras_TellMe_Philo_15_00"); //What exactly is it that you do?
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Philo_05_01"); //We stand between the order of Innos and the chaos of Beliar.
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Philo_05_02"); //If one of the two sides should gain the upper hand, it will mean either total loss of freedom, or deadly chaos.
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Philo_05_03"); //Therefore, we guard the balance between the two. That's what makes life in this world possible at all.

	AI_Output (other, self, "DIA_Addon_Vatras_TellMe_Konkret_15_00"); //(frowning) And what does that mean in concrete terms?
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Konkret_05_01"); //The fall of the barrier has evoked numerous threats.
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Konkret_05_02"); //The bandits are probably the most obvious one.
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Konkret_05_03"); //Not only has it become all but impossible to travel the island without being attacked...
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Konkret_05_04"); //... there's somebody in town, too, who supports the bandits!
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Add_05_00"); //We have found out that the bandits receive regular deliveries from a weapons merchant in Khorinis. 
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Konkret_05_05"); //We try to find such people and keep them from endangering the city.
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Konkret_05_06"); //If you can find out anything about this, let me know.
	
	MIS_Vatras_FindTheBanditTrader = LOG_RUNNING;
	Vatras_ToMartin = TRUE;
	Log_CreateTopic (TOPIC_Addon_BanditTrader, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_BanditTrader, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_BanditTrader,"There is a weapons dealer in Khorinis who is supporting the bandits. Vatras wants me to investigate the matter."); 
	B_LogEntry (TOPIC_Addon_BanditTrader,"Martin, the paladins' provision master, is looking into the business with the weapons dealer. I can find him down by the harbor where the paladins store their supplies."); 


		//ADDON ----- FERNANDO BANDIT TRADER QUEST
			//Beim ersten Händlerüberfall
		Ext_InsertVobTree("VOBTREE/NW_FERNANDOBANDITS_TAVERN.ZEN");
		Ext_InsertVobTree("VOBTREE/NW_EROLBANDITS_TAVERN.ZEN");

		Wld_InsertNpc 	(BDT_10300_Addon_RangerBandit_L, "NW_FARM2_TO_TAVERN_RANGERBANDITS_01");
		Wld_InsertNpc 	(BDT_10301_Addon_RangerBandit_M, "NW_FARM2_TO_TAVERN_RANGERBANDITS_02");	
		Wld_InsertNpc 	(BDT_10302_Addon_RangerBandit_L, "NW_FARM2_TO_TAVERN_RANGERBANDITS_01");
		Wld_InsertNpc 	(BDT_10303_Addon_RangerBandit_L, "NW_FARM2_TO_TAVERN_RANGERBANDITS_01");
		Wld_InsertNpc 	(BDT_10304_Addon_RangerBandit_M, "NW_FARM2_TO_TAVERN_RANGERBANDITS_01");
		Wld_InsertNpc 	(BDT_10305_Addon_RangerBandit_L, "NW_FARM2_TO_TAVERN_RANGERBANDITS_01");

			//Rangerbandits2
		Ext_InsertVobTree("VOBTREE/NW_FERNANDOBANDITS_FARM3.ZEN");

		Wld_InsertNpc 	(BDT_10307_Addon_RangerBandit_M, 	"NW_BIGMILL_FARM3_RANGERBANDITS_01");
		Wld_InsertNpc 	(BDT_10308_Addon_RangerBandit_L, 	"NW_BIGMILL_FARM3_RANGERBANDITS_02");
		Wld_InsertNpc 	(BDT_10309_Addon_RangerBandit_L, 	"NW_BIGMILL_FARM3_RANGERBANDITS_03");
		Wld_InsertNpc 	(BDT_10310_Addon_RangerBandit_M, 	"NW_BIGMILL_FARM3_RANGERBANDITS_04");
		
			//Rangerbandits1
		Ext_InsertVobTree("VOBTREE/NW_FERNANDOBANDITS_LUCIA.ZEN");
		
		Wld_InsertNpc 	(BDT_10311_Addon_RangerBandit_M, 	"NW_FARM4_WOOD_RANGERBANDITS_04");
		Wld_InsertNpc 	(BDT_10312_Addon_RangerBandit_L, 	"NW_FARM4_WOOD_RANGERBANDITS_03");
		Wld_InsertNpc 	(BDT_10313_Addon_RangerBandit_L, 	"NW_FARM4_WOOD_RANGERBANDITS_04");
		Wld_InsertNpc 	(BDT_10314_Addon_RangerBandit_M, 	"NW_FARM4_WOOD_RANGERBANDITS_05");

			//Die Spur der Banditen:
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_STAND_DEMENTOR_05");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_ROAM_NW_FARM3_PATH_11_SMALLRIVER_09");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_ROAM_NW_FARM3_BIGWOOD_02_04");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_ROAM_NW_BIGMILL_FARM3_01");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_STAND_DEMENTOR_03");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_ROAM_NW_BIGMILL_FARM3_03_02");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_STAND_DEMENTOR_07");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_ROAM_NW_BIGFARM_ALLEE_08_N2");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_STAND_DEMENTOR_02");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_ROAM_FARM4_SHEEP_02");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_ROAM_NW_FARM4_WOOD_MONSTER_MORE_02");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_ITEM_NW_FARM4_WOOD_LUCIASLETTER");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_ROAM_NW_FARM4_WOOD_MONSTER_N_17");

		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_ITEM_GREATPEASANT_FERNANDOSWEAPONS_01");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_ITEM_GREATPEASANT_FERNANDOSWEAPONS_02");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_ITEM_GREATPEASANT_FERNANDOSWEAPONS_03");
		Wld_InsertItem 	(ItMw_Addon_BanditTrader, "FP_ITEM_GREATPEASANT_FERNANDOSWEAPONS_04");
		
		Wld_InsertItem 	(ItWr_Addon_BanditTrader, "FP_ITEM_NW_FARM4_WOOD_FERNANDOLETTER");
};

// ************************************************************
// 			  				Waffenhändler
// ************************************************************
instance DIA_Addon_Vatras_Waffen (C_INFO)
{
	npc			= KDW_439_Vatras;
	nr		 	= 2;
	condition	= DIA_Addon_Vatras_Waffen_Condition;
	information	= DIA_Addon_Vatras_Waffen_Info;
	permanent 	= TRUE;
	description = "About this weapons dealer...";
};
func int DIA_Addon_Vatras_Waffen_Condition ()
{
	if (MIS_Vatras_FindTheBanditTrader == LOG_RUNNING)
	{
		return TRUE;
	};
};
func void DIA_Addon_Vatras_Waffen_Info ()
{
	AI_Output (other, self, "DIA_Addon_Vatras_Waffen_15_00"); //About this weapons dealer...
	
	Info_ClearChoices (DIA_Addon_Vatras_Waffen);
	Info_AddChoice (DIA_Addon_Vatras_Waffen, DIALOG_BACK, DIA_Addon_Vatras_Waffen_BACK);
	if (Fernando_ImKnast == TRUE)
	|| (Fernando_HatsZugegeben == TRUE)
	{
		Info_AddChoice (DIA_Addon_Vatras_Waffen, "I know the dealer who's been selling weapons to the bandits!", DIA_Addon_Vatras_Waffen_Success);
	}
	else
	{
		Info_AddChoice (DIA_Addon_Vatras_Waffen, "How much do you know about the weapons dealer?", DIA_Addon_Vatras_Waffen_ToMartin);
	};
};
func void DIA_Addon_Vatras_Waffen_BACK()
{
	Info_ClearChoices (DIA_Addon_Vatras_Waffen);
};
func void DIA_Addon_Vatras_Waffen_ToMartin()
{
	AI_Output (other, self, "DIA_Addon_Vatras_Waffen_ToMartin_15_00"); //How much do you know about the weapons dealer?
	AI_Output (self, other, "DIA_Addon_Vatras_Waffen_ToMartin_05_01"); //Ask Martin, the provisions master of the paladins, about this. He should be able to tell you more.
	AI_Output (self, other, "DIA_Addon_Vatras_Waffen_ToMartin_05_02"); //He has been tasked with unmasking the weapons dealer.
	AI_Output (self, other, "DIA_Addon_Vatras_Waffen_ToMartin_05_03"); //You can find Martin in the harbor district. If you see a heap of crates, provisions and paladins, Martin won't be far.
		
	Vatras_ToMartin = TRUE;
};

func void DIA_Addon_Vatras_Waffen_Success ()
{
	AI_Output (other, self, "DIA_Addon_Vatras_Waffen_Success_15_00"); //I know the dealer who's been selling weapons to the bandits!
	AI_Output (other, self, "DIA_Addon_Vatras_Waffen_Success_15_01"); //His name is Fernando.
	AI_Output (self, other, "DIA_Addon_Vatras_Waffen_Success_05_02"); //Very good. Has Martin taken the necessary steps to stop him from delivering any more?
	if (Fernando_ImKnast == TRUE)
	{
		AI_Output	(other, self, "DIA_Addon_Vatras_Waffen_Success_15_03"); //Yes. Martin will see to it that he won't be leaving the dungeon any time soon.
		AI_Output	(self, other, "DIA_Addon_Vatras_Waffen_Success_05_04"); //Well done, son.
		
		AI_Output (self, other, "DIA_Addon_Vatras_Waffen_Success_05_07"); //May Adanos light your path.
		
		MIS_Vatras_FindTheBanditTrader = LOG_SUCCESS;
		B_GivePlayerXP (XP_Addon_Vatras_FindTheBanditTrader);
	}
	else
	{
		AI_Output	(other, self, "DIA_Addon_Vatras_CaughtFernando_15_09"); //Not yet.
		AI_Output	(self, other, "DIA_Addon_Vatras_CaughtFernando_05_10"); //Then make haste and report to him at once. It must be stopped right now.
	};
};

// ************************************************************
// ***														***
//							Gothic II 
// ***														***
// ************************************************************

///////////////////////////////////////////////////////////////////////
//	Info Spende
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_Spende (C_INFO)
{
	npc		 	 = 	KDW_439_Vatras;
	nr			 =  94;
	condition	 = 	DIA_Vatras_Spende_Condition;
	information	 = 	DIA_Vatras_Spende_Info;
	permanent    =  TRUE;
	description	 = 	"I want to make a donation to Adanos!";
};

func int DIA_Vatras_Spende_Condition ()
{	
	return TRUE;
};
func void DIA_Vatras_Spende_Info ()
{
	AI_Output (other, self, "DIA_Vatras_Spende_15_00"); //I want to make a donation to Adanos!
	AI_Output (self, other, "DIA_Vatras_Spende_05_01"); //A donation to the church of Adanos would alleviate a part of the sins which you may have committed, my son.
	AI_Output (self, other, "DIA_Vatras_Spende_05_02"); //How much can you give?
	
	Info_ClearChoices   (DIA_Vatras_Spende);
	Info_AddChoice 		(DIA_Vatras_Spende, "I haven't got anything to spare right now...", DIA_Vatras_Spende_BACK);
	if (Npc_HasItems(other,itmi_gold) >= 50)
	{
		Info_AddChoice 		(DIA_Vatras_Spende, "I've got 50 gold pieces...", DIA_Vatras_Spende_50);
	};
	if (Npc_HasItems(other,itmi_gold) >= 100)
	{
		Info_AddChoice 		(DIA_Vatras_Spende, "I've got 100 gold pieces...",	DIA_Vatras_Spende_100);
	};
};

func void DIA_Vatras_Spende_BACK()
{
	AI_Output (other, self, "DIA_Vatras_Spende_BACK_15_00"); //I haven't got anything to spare right now...
	AI_Output (self, other, "DIA_Vatras_Spende_BACK_05_01"); //That is not a problem, you can act upon your good intentions later, my son.
	Info_ClearChoices   (DIA_Vatras_Spende);
};

func void DIA_Vatras_Spende_50()
{
	AI_Output (other, self, "DIA_Vatras_Spende_50_15_00"); //I've got 50 gold pieces...
	AI_Output (self, other, "DIA_Vatras_Spende_50_05_01"); //I thank you in the name of Adanos, my son. Your gold will be distributed among the needy.
	B_GiveInvItems (other, self, Itmi_Gold, 50);
	Info_ClearChoices   (DIA_Vatras_Spende);
};
	
func void DIA_Vatras_Spende_100()
{
	AI_Output (other, self, "DIA_Vatras_Spende_100_15_00"); //I've got 100 gold pieces...
	Snd_Play ("LevelUp");
	if(Vatras_Chance == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_Spende_100_05_02"); //May the path you follow be blessed by Adanos!
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_Spende_100_05_01"); //I bless you in the name of Adanos for this generous act!
		Vatras_Segen = TRUE;
		if (MIS_Thorben_GetBlessings == LOG_RUNNING)
		{
			B_LogEntry (TOPIC_Thorben,"Vatras the Water Mage has blessed me.");
		};
	};
	B_GiveInvItems (other, self, ITmi_Gold, 100);
	Info_ClearChoices   (DIA_Vatras_Spende);
};

///////////////////////////////////////////////////////////////////////
//	Info CanTeach
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_CanTeach		(C_INFO)
{
	npc		 	 = 	KDW_439_Vatras;
	nr			 =  95;
	condition	 = 	DIA_Vatras_CanTeach_Condition;
	information	 = 	DIA_Vatras_CanTeach_Info;
	permanent    =  FALSE;
	description	 = 	"Can you teach me something about magic?";
};

func int DIA_Vatras_CanTeach_Condition ()
{	
	return TRUE;
};
func void DIA_Vatras_CanTeach_Info ()
{
	AI_Output (other, self, "DIA_Vatras_CanTeach_15_00"); //Can you teach me something about magic?
	AI_Output (self, other, "DIA_Vatras_CanTeach_05_01"); //Only the Chosen of Innos and the Chosen of Adanos are permitted to work rune magic.
	AI_Output (self, other, "DIA_Vatras_CanTeach_05_02"); //But common mortals can also work magic with the help of spell scrolls.
	AI_Output (self, other, "DIA_Vatras_CanTeach_05_03"); //I can show you how you can channel and expand your magic powers.
	
	Vatras_TeachMANA = TRUE;
	Log_CreateTopic (Topic_CityTeacher,LOG_NOTE);
	B_LogEntry (Topic_CityTeacher,"Vatras the Water Mage can help me increase my magic powers.");
};
///////////////////////////////////////////////////////////////////////
//	Info TEACH
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_Teach		(C_INFO)
{
	npc		  	 = 	KDW_439_Vatras;
	nr			 = 	100;
	condition	 = 	DIA_Vatras_Teach_Condition;
	information	 = 	DIA_Vatras_Teach_Info;
	permanent	 = 	TRUE;
	description	 = 	"I want to increase my magic powers.";
};
func int DIA_Vatras_Teach_Condition ()
{	
	if (Vatras_TeachMANA == TRUE)
	{
		return TRUE;
	};
};
func void DIA_Vatras_Teach_Info ()
{
	AI_Output (other, self, "DIA_Vatras_Teach_15_00"); //I want to increase my magic powers.
	
	Info_ClearChoices   (DIA_Vatras_Teach);
	Info_AddChoice 		(DIA_Vatras_Teach, DIALOG_BACK, DIA_Vatras_Teach_BACK);
	Info_AddChoice		(DIA_Vatras_Teach, B_BuildLearnString(PRINT_LearnMANA1	, B_GetLearnCostAttribute(other, ATR_MANA_MAX))		,DIA_Vatras_Teach_1);
	Info_AddChoice		(DIA_Vatras_Teach, B_BuildLearnString(PRINT_LearnMANA5	, B_GetLearnCostAttribute(other, ATR_MANA_MAX)*5)	,DIA_Vatras_Teach_5);
	
};
func void DIA_Vatras_Teach_BACK()
{
	if (other.attribute[ATR_MANA_MAX] >= T_HIGH)
	{
		AI_Output (self, other, "DIA_Vatras_Teach_05_00"); //Your magical power has grown beyond my ability to teach you.
	};
	Info_ClearChoices (DIA_Vatras_TEACH);
};
func void DIA_Vatras_Teach_1()
{
	B_TeachAttributePoints (self, other, ATR_MANA_MAX, 1, T_HIGH);
	
	Info_ClearChoices   (DIA_Vatras_Teach);
	
	Info_AddChoice 		(DIA_Vatras_Teach, DIALOG_BACK, DIA_Vatras_TEACH_BACK);
	Info_AddChoice		(DIA_Vatras_Teach, B_BuildLearnString(PRINT_LearnMANA1	, B_GetLearnCostAttribute(other, ATR_MANA_MAX))		,DIA_Vatras_Teach_1);
	Info_AddChoice		(DIA_Vatras_Teach, B_BuildLearnString(PRINT_LearnMANA5	, B_GetLearnCostAttribute(other, ATR_MANA_MAX)*5)	,DIA_Vatras_Teach_5);
	
	
};
func void DIA_Vatras_Teach_5()
{
	B_TeachAttributePoints (self, other, ATR_MANA_MAX, 5, T_HIGH);
	
	Info_ClearChoices   (DIA_Vatras_Teach);
	
	Info_AddChoice 		(DIA_Vatras_Teach, DIALOG_BACK, DIA_Vatras_Teach_BACK);
	Info_AddChoice		(DIA_Vatras_Teach, B_BuildLearnString(PRINT_LearnMANA1	, B_GetLearnCostAttribute(other, ATR_MANA_MAX))		,DIA_Vatras_Teach_1);
	Info_AddChoice		(DIA_Vatras_Teach, B_BuildLearnString(PRINT_LearnMANA5	, B_GetLearnCostAttribute(other, ATR_MANA_MAX)*5)	,DIA_Vatras_Teach_5);
	
	
};
///////////////////////////////////////////////////////////////////////
//	Info GODS
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_GODS		(C_INFO)
{
	npc			 = 	KDW_439_Vatras;
	nr          = 	98;	//Joly: bracuht ne hohe Nummer, denn wird in den späteren Kapiteln auch verwendet.
	condition	 = 	DIA_Vatras_GODS_Condition;
	information	 = 	DIA_Vatras_GODS_Info;
	permanent	 =  TRUE;
	description	 = 	"Tell me about the gods.";
};

func int DIA_Vatras_GODS_Condition ()
{	
	return TRUE;
};
func void DIA_Vatras_GODS_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_GODS_15_00"); //Tell me about the gods.
	AI_Output			(self, other, "DIA_Vatras_GODS_05_01"); //What exactly would you like to know?
	
	Info_ClearChoices (DIA_Vatras_GODS); 
	Info_AddChoice	  (DIA_Vatras_GODS,DIALOG_BACK             ,DIA_Vatras_GODS_BACK);
	Info_AddChoice	  (DIA_Vatras_GODS,"Tell me about Innos.",DIA_Vatras_GODS_INNOS); 		 
	Info_AddChoice	  (DIA_Vatras_GODS,"Tell me about Adanos.",DIA_Vatras_GODS_ADANOS); 		 
	Info_AddChoice	  (DIA_Vatras_GODS,"Tell me about Beliar.",DIA_Vatras_GODS_BELIAR); 		 
	 		 
};
FUNC VOID DIA_Vatras_GODS_BACK()
{
	Info_ClearChoices (DIA_Vatras_GODS); 
};
FUNC VOID DIA_Vatras_GODS_INNOS()
{
	AI_Output			(other, self, "DIA_Vatras_GODS_INNOS_15_00"); //Tell me about Innos.
	AI_Output			(self, other, "DIA_Vatras_GODS_INNOS_05_01"); //Very well. (preaches) Innos is the first and highest god. He created the sun and the world.
	AI_Output			(self, other, "DIA_Vatras_GODS_INNOS_05_02"); //He commands light and fire, his gifts to humanity. He is law and justice.
	AI_Output			(self, other, "DIA_Vatras_GODS_INNOS_05_03"); //His priests are the Magicians of Fire, the paladins are his warriors.
	
	Info_ClearChoices (DIA_Vatras_GODS); 
	Info_AddChoice	  (DIA_Vatras_GODS,DIALOG_BACK             ,DIA_Vatras_GODS_BACK); 
	Info_AddChoice	  (DIA_Vatras_GODS,"Tell me about Innos.",DIA_Vatras_GODS_INNOS); 
	Info_AddChoice	  (DIA_Vatras_GODS,"Tell me about Adanos.",DIA_Vatras_GODS_ADANOS); 		 
	Info_AddChoice	  (DIA_Vatras_GODS,"Tell me about Beliar.",DIA_Vatras_GODS_BELIAR); 	
	
};
FUNC VOID DIA_Vatras_GODS_ADANOS()
{
	AI_Output			(other, self, "DIA_Vatras_GODS_ADANOS_15_00"); //Tell me about Adanos.
	AI_Output			(self, other, "DIA_Vatras_GODS_ADANOS_05_01"); //Adanos is the god of the center. He is the scales of justice, the guardian of the balance between Innos and Beliar.
	AI_Output			(self, other, "DIA_Vatras_GODS_ADANOS_05_02"); //He commands the power of change, his gift is the water in all the oceans, rivers, and lakes.
	AI_Output			(self, other, "DIA_Vatras_GODS_ADANOS_05_03"); //His priests are the Water Mages, just as I am a servant and priest of Adanos.
	
	Info_ClearChoices (DIA_Vatras_GODS); 
	Info_AddChoice	  (DIA_Vatras_GODS,DIALOG_BACK             ,DIA_Vatras_GODS_BACK); 	
	Info_AddChoice	  (DIA_Vatras_GODS,"Tell me about Innos.",DIA_Vatras_GODS_INNOS); 		 
	Info_AddChoice	  (DIA_Vatras_GODS,"Tell me about Adanos.",DIA_Vatras_GODS_ADANOS);
	Info_AddChoice	  (DIA_Vatras_GODS,"Tell me about Beliar.",DIA_Vatras_GODS_BELIAR); 	

};
FUNC VOID DIA_Vatras_GODS_BELIAR()
{
	AI_Output			(other, self, "DIA_Vatras_GODS_BELIAR_15_00"); //Tell me about Beliar.
	AI_Output			(self, other, "DIA_Vatras_GODS_BELIAR_05_01"); //Beliar is the dark god of death, destruction and all things unnatural.
	AI_Output			(self, other, "DIA_Vatras_GODS_BELIAR_05_02"); //He is in eternal battle with Innos, but Adanos guards the balance between the two.
	AI_Output			(self, other, "DIA_Vatras_GODS_BELIAR_05_03"); //Only a few humans follow the call of Beliar - however, he grants great strength to those who do.
	
	Info_ClearChoices (DIA_Vatras_GODS); 
	Info_AddChoice	  (DIA_Vatras_GODS,DIALOG_BACK             ,DIA_Vatras_GODS_BACK); 
	Info_AddChoice	  (DIA_Vatras_GODS,"Tell me about Innos.",DIA_Vatras_GODS_INNOS); 		 
	Info_AddChoice	  (DIA_Vatras_GODS,"Tell me about Adanos.",DIA_Vatras_GODS_ADANOS); 
	Info_AddChoice	  (DIA_Vatras_GODS,"Tell me about Beliar.",DIA_Vatras_GODS_BELIAR); 			 
	
};
///////////////////////////////////////////////////////////////////////
//	Info HEAL
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_HEAL		(C_INFO)
{
	npc			 = 	KDW_439_Vatras;
	nr          = 	99;	//Joly: bracuht ne hohe Nummer, denn wird in den späteren Kapiteln auch verwendet.
	condition	 = 	DIA_Vatras_HEAL_Condition;
	information	 = 	DIA_Vatras_HEAL_Info;
	permanent	 = 	TRUE;
	description	 = 	"Can you heal me?";
};

func int DIA_Vatras_HEAL_Condition ()
{	
	// --------------------
	if hero.attribute [ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX]
	{
		return TRUE;
	};
};
func void DIA_Vatras_HEAL_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_HEAL_15_00"); //Can you heal me?
	AI_Output			(self, other, "DIA_Vatras_HEAL_05_01"); //(devout) Adanos bless this body. Free it of its wounds and strengthen it with new life.
		hero.attribute [ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
		PrintScreen (PRINT_FullyHealed, - 1, - 1, FONT_Screen, 2);   
};

// ********************************************************************
// 							Isgaroth Mission
// ********************************************************************
///////////////////////////////////////////////////////////////////////
//	Info MISSION
///////////////////////////////////////////////////////////////////////
var int Vatras_MessageChapter;
var int Vatras_MessageOriginalGiven;

instance DIA_Vatras_MISSION		(C_INFO)
{
	npc		 	= KDW_439_Vatras;
	nr 			= 1; 
	condition	= DIA_Vatras_MISSION_Condition;
	information	= DIA_Vatras_MISSION_Info;
	
	important	= TRUE;
	permanent	= TRUE;
};
func int DIA_Vatras_MISSION_Condition ()
{	
	if (Npc_IsInState (self, ZS_Talk))
	&& (Npc_KnowsInfo (other, DIA_Vatras_GREET))
	&& ((Kapitel >= 2) || (Wld_GetDay() >= 5))
	&& (Kapitel > Vatras_MessageChapter)
	&& (MIS_Vatras_Message != LOG_RUNNING)
	{
		return TRUE;
	};
};
func void DIA_Vatras_MISSION_Info ()
{
	AI_Output (self, other, "DIA_Vatras_Add_05_10"); //I have a message for Master Isgaroth. He guards the shrine in front of the monastery.
	AI_Output (self, other, "DIA_Vatras_MISSION_05_01"); //If you run this errand for me, you get to choose your own reward.
	
	Info_ClearChoices   (DIA_Vatras_MISSION);
	Info_AddChoice 		(DIA_Vatras_MISSION,"Not now.",DIA_Vatras_MISSION_NO);
	Info_AddChoice 		(DIA_Vatras_MISSION,"Sure.",DIA_Vatras_MISSION_YES);
};
FUNC VOID B_SayVatrasGo()
{
	AI_Output (self, other, "DIA_Vatras_Add_05_13"); //Good. So be on your way to Master Isgaroth now.
};
func VOID DIA_Vatras_MISSION_YES()
{
	AI_Output (other, self, "DIA_Vatras_MISSION_YES_15_00"); //I'll do it.
	AI_Output (self, other, "DIA_Vatras_Add_05_11"); //Good, then take the message and choose one of these spell scrolls.
	AI_Output (self, other, "DIA_Vatras_Add_05_12"); //When you have delivered the message, I shall reward you accordingly.
	
	Vatras_MessageChapter = Kapitel;
	Vatras_Return = FALSE;
	if (Vatras_MessageOriginalGiven == FALSE)
	{
		B_GiveInvItems (self, hero, ItWr_VatrasMessage, 1);
		Vatras_MessageOriginalGiven = TRUE;
	}
	else
	{
		B_GiveInvItems (self, hero, ITMS_REVIVED_VATRASMESSAGE_COPY, 1);
	};
	MIS_Vatras_Message = LOG_RUNNING;
	
	Log_CreateTopic (TOPIC_Botschaft,LOG_MISSION);
	Log_SetTopicStatus (TOPIC_Botschaft,LOG_RUNNING);
	B_LogEntry (TOPIC_Botschaft,"Vatras has given me a message for Master Isgaroth. He is at the shrine in front of the monastery.");
	
	Info_ClearChoices 	(DIA_Vatras_MISSION);
	Info_AddChoice 		(DIA_Vatras_MISSION,"I'll take the spell of light.",DIA_Vatras_MISSION_LIGHT);
	Info_AddChoice 		(DIA_Vatras_MISSION,"I choose the healing spell.",DIA_Vatras_MISSION_HEAL);	
	Info_AddChoice 		(DIA_Vatras_MISSION,"Give me the Ice Arrow.",DIA_Vatras_MISSION_ICE);	
};
FUNC VOID DIA_Vatras_MISSION_NO ()
{	
	//AI_Output	(other, self, "DIA_Vatras_MISSION_NO_15_00"); //Such dir einen anderen Laufburschen, alter Mann!
	AI_Output (other, self, "DIA_ADDON_Vatras_MISSION_NO_15_00"); //Not now!
	AI_Output (self, other, "DIA_ADDON_Vatras_MISSION_NO_05_01"); //No problem. I shall send somebody else.
	Vatras_MessageChapter = Kapitel;
	Vatras_Return = FALSE;
	MIS_Vatras_Message = LOG_OBSOLETE;
	Info_ClearChoices 	(DIA_Vatras_MISSION);
};
FUNC VOID DIA_Vatras_MISSION_HEAL()
{
	AI_Output			(other, self, "DIA_Vatras_MISSION_HEAL_15_00"); //I choose the healing spell.
	B_SayVatrasGo();

	if(Kapitel < 3)
	{
		B_GiveInvItems (self, hero, ItSc_LightHeal, 2);
	} else if (Kapitel <= 4) {
		B_GiveInvItems (self, hero, ItSc_MediumHeal, 2);
	} else {
		B_GiveInvItems (self, hero, ItSc_FullHeal, 2);
	};
	 
	Info_ClearChoices 	(DIA_Vatras_MISSION);
};
FUNC VOID DIA_Vatras_MISSION_ICE()
{
	AI_Output			(other, self, "DIA_Vatras_MISSION_ICE_15_00"); //Give me the Ice Arrow.
	B_SayVatrasGo();

	if(Kapitel < 3)
	{
		B_GiveInvItems (self, hero,ItSc_Icebolt, Kapitel);
	} else {
		B_GiveInvItems (self, hero,ItSc_Icelance, 1);
	};

	Info_ClearChoices 	(DIA_Vatras_MISSION);
};
FUNC VOID DIA_Vatras_MISSION_LIGHT()
{
	AI_Output			(other, self, "DIA_Vatras_MISSION_LIGHT_15_00"); //I'll take the spell of light.
	B_SayVatrasGo();
	
	B_GiveInvItems (self, hero, ItSc_Light, Kapitel);

	Info_ClearChoices 	(DIA_Vatras_MISSION);
};
///////////////////////////////////////////////////////////////////////
//	Info MESSAGE_SUCCESS
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_MESSAGE_SUCCESS		(C_INFO)
{
	npc			= KDW_439_Vatras;
	nr 			= 1; 
	condition	= DIA_Vatras_MESSAGE_SUCCESS_Condition;
	information	= DIA_Vatras_MESSAGE_SUCCESS_Info;
	
	permanent	= TRUE;
	description	= "I have delivered your message.";
};

func int DIA_Vatras_MESSAGE_SUCCESS_Condition ()
{	
	if (MIS_Vatras_Message == LOG_RUNNING)
	&& (Vatras_Return == TRUE)
	{
		return TRUE;
	};
};
func void DIA_Vatras_MESSAGE_SUCCESS_Info ()
{
	AI_Output (other, self, "DIA_Vatras_MESSAGE_SUCCESS_15_00"); //I have delivered your message.
	AI_Output (self, other, "DIA_Vatras_Add_05_14"); //Accept my thanks. And now pick your reward.
	
	MIS_Vatras_Message = LOG_SUCCESS;
	Vatras_Return = FALSE;
	B_GivePlayerXP(XP_Vatras_Message * Kapitel);
	
	Info_ClearChoices (DIA_Vatras_MESSAGE_SUCCESS);

	if (Kapitel < 2)
	{
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Blank rune",DIA_Vatras_MESSAGE_SUCCESS_Reward1);
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Ring of Magic",DIA_Vatras_MESSAGE_SUCCESS_Reward2);
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Essence of Life",DIA_Vatras_MESSAGE_SUCCESS_Reward3);
	}
	else if (Kapitel == 2)
	{
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"King's sorrel",DIA_Vatras_MESSAGE_SUCCESS_Reward1);
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Ring of Dexterity",DIA_Vatras_MESSAGE_SUCCESS_Reward2);
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Ore nugget",DIA_Vatras_MESSAGE_SUCCESS_Reward3);
	}
	else if (Kapitel == 3)
	{
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Amulet of Magic",DIA_Vatras_MESSAGE_SUCCESS_Reward1);
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Extract of the Spirit",DIA_Vatras_MESSAGE_SUCCESS_Reward2);
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Scroll of Telekinesis",DIA_Vatras_MESSAGE_SUCCESS_Reward3);
	}
	else if (Kapitel == 4)
	{
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Potion of Haste",DIA_Vatras_MESSAGE_SUCCESS_Reward1);
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Goblin Berries",DIA_Vatras_MESSAGE_SUCCESS_Reward2);
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Scroll of Healing",DIA_Vatras_MESSAGE_SUCCESS_Reward3);
	}
	else
	{
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Dragon Root",DIA_Vatras_MESSAGE_SUCCESS_Reward1);
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Ring of Enlightenment",DIA_Vatras_MESSAGE_SUCCESS_Reward2);
		Info_AddChoice (DIA_Vatras_MESSAGE_SUCCESS,"Scroll of Storm",DIA_Vatras_MESSAGE_SUCCESS_Reward3);
	};
};
FUNC VOID DIA_Vatras_MESSAGE_SUCCESS_Reward1()
{
	if (Kapitel < 2)
	{
		B_GiveInvItems (self, hero, ItMi_RuneBlank, 1);
	}
	else if (Kapitel == 2)
	{
		B_GiveInvItems (self, hero, ItPl_Perm_Herb, 1);
	}
	else if (Kapitel == 3)
	{
		B_GiveInvItems (self, hero, ITAM_REVIVED_MP_01, 1);
	}
	else if (Kapitel == 4)
	{
		B_GiveInvItems (self, hero, ITPO_REVIVED_SPEED_03, 1);
	}
	else
	{
		B_GiveInvItems (self, hero, ItPl_Strength_Herb_01, 1);
	};

	Info_ClearChoices (DIA_Vatras_MESSAGE_SUCCESS);
};
FUNC VOID DIA_Vatras_MESSAGE_SUCCESS_Reward2()
{
	if (Kapitel < 2)
	{
		B_GiveInvItems (self, hero, ITRI_REVIVED_MP_01, 1);
	}
	else if (Kapitel == 2)
	{
		B_GiveInvItems (self, hero, ITRI_REVIVED_DEX_01, 1);
	}
	else if (Kapitel == 3)
	{
		B_GiveInvItems (self, hero, ITPO_REVIVED_BOOST_MANA_02, 1);
	}
	else if (Kapitel == 4)
	{
		B_GiveInvItems (self, hero, ItPl_Dex_Herb_01, 1);
	}
	else
	{
		B_GiveInvItems (self, hero, ITRI_REVIVED_HP_MP_01, 1);
	};

	Info_ClearChoices (DIA_Vatras_MESSAGE_SUCCESS);
};
FUNC VOID DIA_Vatras_MESSAGE_SUCCESS_Reward3()
{
	if (Kapitel < 2)
	{
		B_GiveInvItems (self, hero, ITPO_REVIVED_BOOST_HEALTH_01, 1);
	}
	else if (Kapitel == 2)
	{
		B_GiveInvItems (self, hero, ItMI_Nugget, 1);
	}
	else if (Kapitel == 3)
	{
		B_GiveInvItems (self, hero, ITSC_REVIVED_TELEKINESIS, 1);
	}
	else if (Kapitel == 4)
	{
		B_GiveInvItems (self, hero, ItSc_FullHeal, 1);
	}
	else
	{
		B_GiveInvItems (self, hero, ItSc_Thunderstorm, 1);
	};

	Info_ClearChoices (DIA_Vatras_MESSAGE_SUCCESS);
};


//#####################################################################
//##
//##
//##							KAPITEL 3
//##
//##
//#####################################################################

////////////////////////// Geht weg //////////////////////////////////
const int kurz = 0;
const int lang = 1;

var int Vatras_einmalLangWeg;

func void B_Vatras_GeheWeg (var int dauer)
{
	// EXIT IF
	
	if (Vatras_einmalLangWeg == TRUE)
	{
		return;
	};
	
	//FUNC
	
	if (Npc_GetDistToWP (self, "NW_CITY_MERCHANT_TEMPLE_FRONT") <= 500)
	&& (Npc_WasInState (self, ZS_Preach_Vatras))
	{
		B_StopLookAt(self);
		AI_AlignToWP (self);
		
		AI_Output (self, other, "DIA_Vatras_Add_05_06"); //Listen people! I am needed elsewhere.
		if (dauer == kurz)
		{
			AI_Output (self, other, "DIA_Vatras_Add_05_07"); //It won't take long. When I return I shall tell you the rest of the story.
		}
		else //lang
		{
			AI_Output (self, other, "DIA_Vatras_Add_05_08"); //I do not know whether I shall return. If you want to know the ending, read up on the story in the scriptures.
			
			Vatras_einmalLangWeg = TRUE;
		};
		AI_Output (self, other, "DIA_Vatras_Add_05_09"); //May Adanos be with you!
		
		B_TurnToNpc (self, other);
	};
	
	Vatras_SchickeLeuteWeg = TRUE;
};

///////////////////////////////////////////////////////////////////////
//	Info InnoseyeKaputt
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_INNOSEYEKAPUTT		(C_INFO)
{
	npc		 = 	KDW_439_Vatras;
	nr		 = 	2;
	condition	 = 	DIA_Vatras_INNOSEYEKAPUTT_Condition;
	information	 = 	DIA_Vatras_INNOSEYEKAPUTT_Info;

	description	 = 	"The Eye of Innos is broken.";
};

func int DIA_Vatras_INNOSEYEKAPUTT_Condition ()
{
		if 	(	(Npc_HasItems (other,ItMi_InnosEye_Broken_MIS)) || 	(MIS_SCKnowsInnosEyeIsBroken  == TRUE)	)
		&& (Kapitel == 3)
		{
				return TRUE;
		};
};

func void DIA_Vatras_INNOSEYEKAPUTT_Info ()
{
	if (MIS_Pyrokar_GoToVatrasInnoseye == LOG_RUNNING)
	{
		AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_15_00"); //Pyrokar sent me.
	}
	else if (MIS_Xardas_GoToVatrasInnoseye == LOG_RUNNING)
	{
		AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_15_01"); //Xardas sent me.
	};

	MIS_SCKnowsInnosEyeIsBroken  = TRUE;
	B_GivePlayerXP (XP_Ambient);

	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_15_02"); //The Eye of Innos is broken.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_05_03"); //I know. I have already learned of it from some very upset novices.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_05_04"); //The Seekers have used the Fire Magicians' Circle of the Sun to destroy the Eye.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_05_05"); //I would call that an inspired move by the enemy.

	Info_ClearChoices	(DIA_Vatras_INNOSEYEKAPUTT);
	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "News spreads fast in this city.", DIA_Vatras_INNOSEYEKAPUTT_schnelleNachrichten );

	if (hero.guild == GIL_KDF)
	&& (MIS_Pyrokar_GoToVatrasInnoseye == LOG_RUNNING)
	{
		Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Why did Pyrokar send me to you of all people?", DIA_Vatras_INNOSEYEKAPUTT_warumdu );
	};
	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "What will become of the Eye now?", DIA_Vatras_INNOSEYEKAPUTT_Auge );

};
func void DIA_Vatras_INNOSEYEKAPUTT_Auge ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_Auge_15_00"); //What will become of the Eye now?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_05_01"); //We must join it back together. But that is no easy task, I fear.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_05_02"); //The setting is broken into two pieces. A skilled smith should be able to repair this.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_05_03"); //But that is really not the problem. It's rather the inlaid gem that worries me.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_05_04"); //It is dull and powerless. The enemy seems to have known exactly how to weaken it.

	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Where can I find a smith capable of repairing the setting?", DIA_Vatras_INNOSEYEKAPUTT_Auge_schmied );
	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "How can the gem get its power back?", DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein );
};
func void DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_15_00"); //How can the gem get its power back?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_05_01"); //I see only one way. A union of the three reigning divinities should achieve the desired effect.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_05_02"); //A well prepared ritual of reversal in the place of its destruction will give the gem back its fire.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_05_03"); //However, the problem is that you must bring an earthly representative of each of the three gods to this place.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_05_04"); //Furthermore, a lot of swampweed is required for this ritual. I estimate it should be at least 3 plants.

	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Who could those three earthly representatives of the gods be?", DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer );
	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Where can I find this swampweed?", DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Kraut );
};
func void DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Kraut ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Kraut_15_00"); //Where can I find this swampweed?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Kraut_05_01"); //I have heard about an old quack in the woods named Sagitta. She supposedly sells such herbs.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Kraut_05_02"); //But you could also try your luck down at the harbor.
	

};

func void DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_15_00"); //Who could those three earthly representatives of the gods be?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_05_01"); //I shall represent the god Adanos myself.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_05_02"); //Pyrokar, the highest fire magician, would be the right person to represent the god Innos.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_05_03"); //But for Beliar, I cannot think of an appropriate candidate. It must be someone who commands black magic.

	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Black magic? What about Xardas?", DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas );

};
func void DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas_15_00"); //Black magic? What about Xardas?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas_05_01"); //That's it. That could work.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas_05_02"); //But I ask myself how you will bring all three of us together.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas_05_03"); //I can just see Pyrokar's face when he hears that he must cooperate with Xardas.

	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "I've got to go.", DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas_weiter );
};

func void DIA_Vatras_INNOSEYEKAPUTT_Auge_schmied ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_Auge_schmied_15_00"); //Where can I find a smith capable of repairing the setting of the Eye?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_schmied_05_01"); //Ask around in the area for someone who knows how to repair jewelry.
};

func void DIA_Vatras_INNOSEYEKAPUTT_warumdu ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_warumdu_15_00"); //Why did Pyrokar send me to you of all people?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_warumdu_05_01"); //I suspected that sooner or later something like this would happen.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_warumdu_05_02"); //Pyrokar always thinks himself so invulnerable and superior that it almost borders on carelessness.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_warumdu_05_03"); //Thus his precautions for protecting the Eye were also careless.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_warumdu_05_04"); //I simply think that he unconsciously relies on the abilities which Adanos has granted me.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_warumdu_05_05"); //It doesn't bear thinking about what would happen if I were not available now.

};

func void DIA_Vatras_INNOSEYEKAPUTT_schnelleNachrichten ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_schnelleNachrichten_15_00"); //News spreads fast in this city.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_schnelleNachrichten_05_01"); //That's a good thing, too. The enemy won't be sleeping, either.

};

func void DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas_weiter ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_weiter_15_00"); //I've got to go.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_weiter_05_01"); //I shall also set out and prepare the ceremony at the Circle of the Sun.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_weiter_05_02"); //Send Xardas and Pyrokar there. And don't forget to bring the swampweed. I am counting on you.
	
	B_LogEntry (TOPIC_INNOSEYE, "Vatras wants to perform a ritual at the Circle of the Sun to heal the Eye. I have to persuade Xardas and Pyrokar to take part in it. Also, I have to find a smith who can repair the amulet's broken setting.");

	MIS_RitualInnosEyeRepair = LOG_RUNNING;
	Info_ClearChoices	(DIA_Vatras_INNOSEYEKAPUTT);
	Npc_ExchangeRoutine	(self,"RITUALINNOSEYEREPAIR");

	
	// ------ Zuhörer weg -------
		B_Vatras_Geheweg (kurz);
	// --------------------------
	
	//Joly: Weg mit den Ritualdementoren!!!!!

	DMT_1201.aivar[AIV_EnemyOverride] = TRUE;	//Joly: Damit sie erstmal nicht die Welt entvölkern, ohne Zutun des Spielers!!!!!
	DMT_1202.aivar[AIV_EnemyOverride] = TRUE;
	DMT_1203.aivar[AIV_EnemyOverride] = TRUE;
	DMT_1204.aivar[AIV_EnemyOverride] = TRUE;
	DMT_1205.aivar[AIV_EnemyOverride] = TRUE;
	DMT_1206.aivar[AIV_EnemyOverride] = TRUE;
	DMT_1207.aivar[AIV_EnemyOverride] = TRUE;
	DMT_1208.aivar[AIV_EnemyOverride] = TRUE;
	DMT_1209.aivar[AIV_EnemyOverride] = TRUE;
	DMT_1210.aivar[AIV_EnemyOverride] = TRUE;
	DMT_1211.aivar[AIV_EnemyOverride] = TRUE;

	B_StartOtherRoutine (DMT_1201 ,"AfterRitual");
	B_StartOtherRoutine	(DMT_1202 ,"AfterRitual");
	B_StartOtherRoutine	(DMT_1203 ,"AfterRitual");
	B_StartOtherRoutine	(DMT_1204 ,"AfterRitual");
	B_StartOtherRoutine	(DMT_1205 ,"AfterRitual");
	B_StartOtherRoutine	(DMT_1206 ,"AfterRitual");
	B_StartOtherRoutine	(DMT_1207 ,"AfterRitual");
	B_StartOtherRoutine	(DMT_1208 ,"AfterRitual");
	B_StartOtherRoutine	(DMT_1209 ,"AfterRitual");
	B_StartOtherRoutine	(DMT_1210 ,"AfterRitual");
	B_StartOtherRoutine	(DMT_1211 ,"AfterRitual");
};
///////////////////////////////////////////////////////////////////////
//	Info PermKap3
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_RitualInnosEyeRepair		(C_INFO)
{
	npc		 = 	KDW_439_Vatras;
	nr		 = 	33;
	condition	 = 	DIA_Vatras_RitualInnosEyeRepair_Condition;
	information	 = 	DIA_Vatras_RitualInnosEyeRepair_Info;
	permanent	 = 	TRUE;

	description	 = 	"How are things with the Eye of Innos?";
};

func int DIA_Vatras_RitualInnosEyeRepair_Condition ()
{
	if (MIS_RitualInnosEyeRepair == LOG_RUNNING)
		&& (Kapitel == 3)
		{
			return TRUE;
		};	
};

func void DIA_Vatras_RitualInnosEyeRepair_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_RitualInnosEyeRepair_15_00"); //How are things with the Eye of Innos?
	AI_Output			(self, other, "DIA_Vatras_RitualInnosEyeRepair_05_01"); //Remember: only a ritual of reversal at the Circle of the Sun together with Xardas and Pyrokar will restore the Eye.
	AI_Output			(self, other, "DIA_Vatras_RitualInnosEyeRepair_05_02"); //And don't forget to bring the Eye, with its setting repaired.
};

///////////////////////////////////////////////////////////////////////
//	Info Beginn
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_BEGINN		(C_INFO)
{
	npc		 = 	KDW_439_Vatras;
	nr		 = 	31;
	condition	 = 	DIA_Vatras_BEGINN_Condition;
	information	 = 	DIA_Vatras_BEGINN_Info;

	description	 = 	"I did everything you told me to do.";
};

func int DIA_Vatras_BEGINN_Condition ()
{
	if (Kapitel == 3)
		&& (Npc_GetDistToWP(self,		"NW_TROLLAREA_RITUAL_02")<2000) 
		&& (Npc_GetDistToWP(Xardas,		"NW_TROLLAREA_RITUAL_02")<2000) 
		&& (Npc_GetDistToWP(Pyrokar,	"NW_TROLLAREA_RITUAL_02")<2000) 
		&& (Npc_HasItems (other,ItMi_InnosEye_Broken_MIS))
		&& (MIS_Bennet_InnosEyeRepairedSetting == LOG_SUCCESS)
		{
				return TRUE;
		};
};

func void DIA_Vatras_BEGINN_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_BEGINN_15_00"); //I did everything you told me to do. Here's the repaired Eye.
	B_GivePlayerXP (XP_RitualInnosEyeRuns);

	B_GiveInvItems 		(other, self, ItMi_InnosEye_Broken_MIS, 1);
	Npc_RemoveInvItem 	(self, ItMi_InnosEye_Broken_MIS);

	AI_Output			(self, other, "DIA_Vatras_BEGINN_05_01"); //Indeed, there is nothing missing now for the performance of the ritual.
	AI_Output			(other, self, "DIA_Vatras_BEGINN_15_02"); //What about the swampweed?
	
	AI_Output			(self, other, "DIA_Vatras_BEGINN_05_03"); //Ah, yes. Do you have 3 swampweed plants, then?
	
	if (B_GiveInvItems (other, self, ItPL_SwampHerb,3))
	{
		AI_Output			(other, self, "DIA_Vatras_BEGINN_15_04"); //Ahem. Yes. Here are the 3 plants.
		AI_Output			(self, other, "DIA_Vatras_BEGINN_05_05"); //Excellent.
		B_GivePlayerXP (XP_Ambient);
	}
	else
	{
		AI_Output			(other, self, "DIA_Vatras_BEGINN_15_06"); //No. Alas not.
		AI_Output			(self, other, "DIA_Vatras_BEGINN_05_07"); //All right. Then we shall have to make do without.
	};
	
	AI_Output			(self, other, "DIA_Vatras_BEGINN_05_08"); //You have done well, but now step aside so that we may begin the ceremony. May our spirits unite.
 	
	Info_ClearChoices	(DIA_Vatras_BEGINN);
	Info_AddChoice	(DIA_Vatras_BEGINN, DIALOG_ENDE, DIA_Vatras_BEGINN_los );

};
func void DIA_Vatras_BEGINN_los ()
{
	AI_StopProcessInfos (self);
 	
 	Npc_ExchangeRoutine	(self,"RITUALINNOSEYE");
	B_StartOtherRoutine   (Xardas,"RITUALINNOSEYE");
	B_StartOtherRoutine   (Pyrokar,"RITUALINNOSEYE");
	Npc_SetRefuseTalk (self,60);

	RitualInnosEyeRuns = LOG_RUNNING;
};


///////////////////////////////////////////////////////////////////////
//	Info augeGeheilt
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_AUGEGEHEILT		(C_INFO)
{
	npc		 = 	KDW_439_Vatras;
	nr		 = 	33;
	condition	 = 	DIA_Vatras_AUGEGEHEILT_Condition;
	information	 = 	DIA_Vatras_AUGEGEHEILT_Info;
	important	 = 	TRUE;
};

func int DIA_Vatras_AUGEGEHEILT_Condition ()
{
	if (Kapitel == 3)
		&& (RitualInnosEyeRuns == LOG_RUNNING)
		&& (Npc_RefuseTalk(self) == FALSE)
		{
			return TRUE;
		};
};

func void DIA_Vatras_AUGEGEHEILT_Info ()
{
	AI_Output			(self, other, "DIA_Vatras_AUGEGEHEILT_05_00"); //It is finished. We have succeeded in thwarting the enemy's plan and restoring the Eye.
	AI_Output			(self, other, "DIA_Vatras_AUGEGEHEILT_05_01"); //Let Pyrokar explain to you how to use its power.
	AI_Output			(self, other, "DIA_Vatras_AUGEGEHEILT_05_02"); //I hope that I shall see you again, once you have accomplished your mission. Farewell.
 	
 	B_LogEntry (TOPIC_INNOSEYE, "The Eye has been healed. Pyrokar will hand it to me, and then it's off dragon hunting.");
	AI_StopProcessInfos (self);
 
 	RitualInnosEyeRuns = LOG_SUCCESS;
 	MIS_RitualInnosEyeRepair = LOG_SUCCESS;	
 
	B_StartOtherRoutine   (Pyrokar,"RitualInnosEyeRepair");
	B_StartOtherRoutine   (Xardas, "RitualInnosEyeRepair");
	
	B_StartOtherRoutine  (VLK_455_Buerger,"START");
	B_StartOtherRoutine  (VLK_454_Buerger,"START");
	B_StartOtherRoutine  (VLK_428_Buergerin,"START");
	B_StartOtherRoutine  (VLK_450_Buerger,"START");
	B_StartOtherRoutine  (VLK_426_Buergerin,"START");
	B_StartOtherRoutine  (VLK_421_Valentino,"START");
};



///////////////////////////////////////////////////////////////////////
//	Info PermKap3
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_PERMKAP3		(C_INFO)
{
	npc		 = 	KDW_439_Vatras;
	nr		 = 	33;
	condition	 = 	DIA_Vatras_PERMKAP3_Condition;
	information	 = 	DIA_Vatras_PERMKAP3_Info;

	description	 = 	"Thank you for helping to heal the Eye of Innos.";
};

func int DIA_Vatras_PERMKAP3_Condition ()
{
	if (MIS_RitualInnosEyeRepair == LOG_SUCCESS)
		{
			return TRUE;
		};	
};

func void DIA_Vatras_PERMKAP3_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_PERMKAP3_15_00"); //Thank you for helping to heal the Eye of Innos.
	AI_Output			(self, other, "DIA_Vatras_PERMKAP3_05_01"); //Do not be so lavish with your thanks. Your greatest task yet lies before you.

	if (MIS_ReadyforChapter4 == FALSE)
	{
		AI_Output			(self, other, "DIA_Vatras_PERMKAP3_05_02"); //Speak to Pyrokar, he will explain everything else to you.
	};

	AI_Output			(self, other, "DIA_Vatras_PERMKAP3_05_03"); //I hope to see you again in one piece, my son.

};

///////////////////////////////////////////////////////////////////////
//	Info HildaKrank
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_HILDAKRANK		(C_INFO)
{
	npc		 = 	KDW_439_Vatras;
	nr		 = 	34;
	condition	 = 	DIA_Vatras_HILDAKRANK_Condition;
	information	 = 	DIA_Vatras_HILDAKRANK_Info;

	description	 = 	"Lobart's wife Hilda is sick.";
};

func int DIA_Vatras_HILDAKRANK_Condition ()
{
	if (MIS_HealHilda == LOG_RUNNING)
	&& (Npc_KnowsInfo(other, DIA_Vatras_GREET))
		{
				return TRUE;
		};
};

func void DIA_Vatras_HILDAKRANK_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_HILDAKRANK_15_00"); //Lobart's wife Hilda is sick.
	AI_Output			(self, other, "DIA_Vatras_HILDAKRANK_05_01"); //What? Again? The good woman should take better care of herself.
	AI_Output			(self, other, "DIA_Vatras_HILDAKRANK_05_02"); //One hard winter, and she won't be with us anymore. All right, I will give her a medicine to reduce the fever.
	AI_Output			(self, other, "DIA_Vatras_HILDAKRANK_05_03"); //Oh, you know, while you're at it, you might as well drop it off with her.
	CreateInvItems (self, ItPo_HealHilda_MIS, 1);									
	B_GiveInvItems (self, other, ItPo_HealHilda_MIS, 1);					
};

///////////////////////////////////////////////////////////////////////
//	Info Obsession
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_OBSESSION		(C_INFO)
{
	npc		 = 	KDW_439_Vatras;
	nr		 = 	35;
	condition	 = 	DIA_Vatras_OBSESSION_Condition;
	information	 = 	DIA_Vatras_OBSESSION_Info;

	description	 = 	"I've got this feeling of trepidation.";
};

func int DIA_Vatras_OBSESSION_Condition ()
{
	if (SC_IsObsessed == TRUE)
	&& (SC_ObsessionTimes < 1)
		{
				return TRUE;
		};
};

func void DIA_Vatras_OBSESSION_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_OBSESSION_15_00"); //I've got this feeling of trepidation.
	AI_Output			(self, other, "DIA_Vatras_OBSESSION_05_01"); //You don't look well either. You were subjected to the black look of the Seekers for too long.
	AI_Output			(self, other, "DIA_Vatras_OBSESSION_05_02"); //All I can heal is your body, but only the monastery can purify your soul. Speak to Pyrokar. He will help you.
};


//#####################################################################
//##
//##
//##							KAPITEL 5
//##
//##
//#####################################################################


// ************************************************************
// 	  				   Ich habe alle Drachen getötet. (Perm Kap 5)
// ************************************************************

INSTANCE DIA_Vatras_AllDragonsDead(C_INFO)
{
	npc			= KDW_439_Vatras;
	nr			= 59;
	condition	= DIA_Vatras_AllDragonsDead_Condition;
	information	= DIA_Vatras_AllDragonsDead_Info;
	description = "The dragons will wreak no more havoc.";
};                       
FUNC INT DIA_Vatras_AllDragonsDead_Condition()
{
	if (Kapitel == 5)	
	{
		return TRUE;
	};
};
FUNC VOID DIA_Vatras_AllDragonsDead_Info()
{	
	AI_Output (other,self ,"DIA_Vatras_AllDragonsDead_15_00"); //The dragons will wreak no more havoc.
	AI_Output (self ,other,"DIA_Vatras_AllDragonsDead_05_01"); //I knew that you would return safe and sound. However, you have yet to take your greatest hurdle.
	AI_Output (other,self ,"DIA_Vatras_AllDragonsDead_15_02"); //I know.
	AI_Output (self ,other,"DIA_Vatras_AllDragonsDead_05_03"); //Then equip yourself well and come to me if you need help. Always carry the Eye of Innos with you, do you hear? Adanos bless you.
};

///////////////////////////////////////////////////////////////////////
//	Ich weiss wo der Feind ist.
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_KnowWhereEnemy		(C_INFO)
{
	npc			 = 	KDW_439_Vatras;
	nr			 = 	55;
	condition	 = 	DIA_Vatras_KnowWhereEnemy_Condition;
	information	 = 	DIA_Vatras_KnowWhereEnemy_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"I know where our enemy is located.";
};
func int DIA_Vatras_KnowWhereEnemy_Condition ()
{	
	if (MIS_SCKnowsWayToIrdorath == TRUE)
	&& (Vatras_IsOnBoard == FALSE) 
	{
		return TRUE;
	};
};
func void DIA_Vatras_KnowWhereEnemy_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_KnowWhereEnemy_15_00"); //I know where our enemy is located.
	AI_Output			(self, other, "DIA_Vatras_KnowWhereEnemy_05_01"); //Then let us waste no time and seek him out before he comes to us.
	AI_Output			(other, self, "DIA_Vatras_KnowWhereEnemy_15_02"); //You want to accompany me?
	AI_Output			(self, other, "DIA_Vatras_KnowWhereEnemy_05_03"); //I have thought long about this and have never been so sure of my business, my friend.
		
	Log_CreateTopic (TOPIC_Crew, LOG_MISSION);                                                                                        	                    	
	Log_SetTopicStatus(TOPIC_Crew, LOG_RUNNING); 	                                                                                  	                    	
	B_LogEntry (TOPIC_Crew,"Surprisingly, Vatras has offered to accompany me on my journey. A man of his skill and experience could be very valuable to me.");	
		
	if (crewmember_count >= Max_Crew)
	{
		AI_Output			(other,self , "DIA_Vatras_KnowWhereEnemy_15_04"); //I've got too many on my list already. I'm afraid there will be no more room for you.
		AI_Output			(self, other, "DIA_Vatras_KnowWhereEnemy_05_05"); //Then make room. You will need me.
	}
	else 
	{
		Info_ClearChoices (DIA_Vatras_KnowWhereEnemy);
		Info_AddChoice (DIA_Vatras_KnowWhereEnemy,"I'm going to think about it some more.",DIA_Vatras_KnowWhereEnemy_No);
		Info_AddChoice (DIA_Vatras_KnowWhereEnemy,"I consider it an honor to have you by my side.",DIA_Vatras_KnowWhereEnemy_Yes);
	};
};

FUNC VOID DIA_Vatras_KnowWhereEnemy_Yes ()
{
	AI_Output (other,self ,"DIA_Vatras_KnowWhereEnemy_Yes_15_00"); //I consider it an honor to have you by my side. We'll meet you at the harbor.
	AI_Output (self ,other,"DIA_Vatras_KnowWhereEnemy_Yes_05_01"); //Don't take too much time. The enemy does not sleep, my friend.
	
	B_GivePlayerXP (XP_Crewmember_Success);                                                                    
	                                                                                                           
	
	self.flags 		 = NPC_FLAG_IMMORTAL;
	Vatras_IsOnBoard	 = LOG_SUCCESS;
	crewmember_Count = (Crewmember_Count +1);
	
	if (MIS_ReadyforChapter6 == TRUE)
		{
			Npc_ExchangeRoutine (self,"SHIP"); 
		}
		else
		{
			Npc_ExchangeRoutine (self,"WAITFORSHIP"); 
		};

	// ------ Zuhörer weg -------
	B_Vatras_GeheWeg (lang);
	
	Info_ClearChoices (DIA_Vatras_KnowWhereEnemy);
};

FUNC VOID DIA_Vatras_KnowWhereEnemy_No ()
{
	AI_Output (other,self ,"DIA_Vatras_KnowWhereEnemy_No_15_00"); //I'm going to think about it some more.
	AI_Output (self ,other,"DIA_Vatras_KnowWhereEnemy_No_05_01"); //Suit yourself. Come back to me if you change your mind.

	Vatras_IsOnBoard	 = LOG_OBSOLETE;
	Info_ClearChoices (DIA_Vatras_KnowWhereEnemy);
};

///////////////////////////////////////////////////////////////////////
//	I kann dich doch nicht gebrauchen!
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_LeaveMyShip		(C_INFO)
{
	npc			 = 	KDW_439_Vatras;
	nr			 = 	55;
	condition	 = 	DIA_Vatras_LeaveMyShip_Condition;
	information	 = 	DIA_Vatras_LeaveMyShip_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"You had better stay here. The city needs you.";
};
func int DIA_Vatras_LeaveMyShip_Condition ()
{	
	if (Vatras_IsOnBOard == LOG_SUCCESS)
	&& (MIS_ReadyforChapter6 == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Vatras_LeaveMyShip_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_LeaveMyShip_15_00"); //You had better stay here. The city needs you.
	AI_Output			(self, other, "DIA_Vatras_LeaveMyShip_05_01"); //Perhaps you are right. And yet, I shall accompany you if you wish. You know that.
	
	Vatras_IsOnBoard	 = LOG_OBSOLETE;				//Log_Obsolete ->der Sc kann ihn wiederholen, Log_Failed ->hat die Schnauze voll, kommt nicht mehr mit! 
	crewmember_Count = (Crewmember_Count -1);
	
	Npc_ExchangeRoutine (self,"PRAY"); 
};

///////////////////////////////////////////////////////////////////////
//	Ich habs mir überlegt!
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_StillNeedYou		(C_INFO)
{
	npc			 = 	KDW_439_Vatras;
	nr			 = 	55;
	condition	 = 	DIA_Vatras_StillNeedYou_Condition;
	information	 = 	DIA_Vatras_StillNeedYou_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"Come with me to the enemy's island.";
};

func int DIA_Vatras_StillNeedYou_Condition ()
{	
	if ((Vatras_IsOnBOard == LOG_OBSOLETE)	
	|| (Vatras_IsOnBOard == LOG_FAILED))
	&& (crewmember_count < Max_Crew)
	{
		return TRUE;
	};
};

func void DIA_Vatras_StillNeedYou_Info ()
{
	AI_Output	(other, self, "DIA_Vatras_StillNeedYou_15_00"); //Come with me to the enemy's island.
	AI_Output	(self, other, "DIA_Vatras_StillNeedYou_05_01"); //A wise decision. I hope you are going to stick with it now.
		
	self.flags 		 = NPC_FLAG_IMMORTAL;
	Vatras_IsOnBoard	 = LOG_SUCCESS;
	crewmember_Count = (Crewmember_Count +1);

	// ------ Zuhörer weg -------
	B_Vatras_GeheWeg (lang);
	
	AI_StopProcessInfos (self);

	if (MIS_ReadyforChapter6 == TRUE)
	{
		Npc_ExchangeRoutine (self,"SHIP"); 
	}
	else
	{
		Npc_ExchangeRoutine (self,"WAITFORSHIP"); 
	};
};

///////////////////////////////////////////////////////////////////////
//	Info PISSOFFFOREVVER
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Vatras_PISSOFFFOREVVER		(C_INFO)
{
	npc		 = 	KDW_439_Vatras;
	nr		 = 	1;
	condition	 = 	DIA_Addon_Vatras_PISSOFFFOREVVER_Condition;
	information	 = 	DIA_Addon_Vatras_PISSOFFFOREVVER_Info;
	important	 = 	TRUE;
	permanent	 = 	TRUE;
};

func int DIA_Addon_Vatras_PISSOFFFOREVVER_Condition ()
{
	if (VatrasPissedOffForever == TRUE)
	&& (Kapitel >= 5)
		{
			return TRUE;
		};
};

func void DIA_Addon_Vatras_PISSOFFFOREVVER_Info ()
{
	B_VatrasPissedOff ();
	AI_StopProcessInfos (self);
};


