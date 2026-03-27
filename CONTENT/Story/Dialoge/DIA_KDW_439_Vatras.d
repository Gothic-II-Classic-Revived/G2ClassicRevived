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
	AI_Output	(self, other, "DIA_Addon_Vatras_KillerWarning_ADD_05_00"); //Es gibt zahlreiche Gerüchte über dich in Khorinis.
	AI_Output	(self, other, "DIA_Addon_Vatras_KillerWarning_ADD_05_01"); //Demnach sollst du an der Ermordung unschuldiger Menschen beteiligt gewesen sein.
	AI_Output	(self, other, "DIA_Addon_Vatras_KillerWarning_ADD_05_02"); //Sollte dem wirklich so ist, kann ich dich nur warnen, mein Sohn. 
	AI_Output	(self, other, "DIA_Addon_Vatras_KillerWarning_ADD_05_03"); //Verlasse nicht den Pfad des Gleichgewichts und dem Erhalt dieser Welt, sonst wird es weitreichende Konsequenzen für dich haben.
	AI_Output	(self, other, "DIA_Addon_Vatras_KillerWarning_ADD_05_04"); //Sprich. Womit kann ich dir helfen?
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
	AI_Output	(self, other, "DIA_Addon_Vatras_LastWarning_ADD_05_06"); //Was hast du dazu zu sagen?

	Info_ClearChoices	(DIA_Addon_Vatras_LastWarning);
	Info_AddChoice	(DIA_Addon_Vatras_LastWarning, "Du kannst mich mal.", DIA_Addon_Vatras_LastWarning_Arsch );	 
	Info_AddChoice	(DIA_Addon_Vatras_LastWarning, "Tut mir leid. Ich wusste nicht, was ich tat.", DIA_Addon_Vatras_LastWarning_Reue );	 
};
func void DIA_Addon_Vatras_LastWarning_Arsch ()
{
	AI_Output	(other, self, "DIA_Addon_Vatras_LastWarning_Arsch_ADD_15_00"); //Du kannst mich mal.
	AI_Output	(self, other, "DIA_Addon_Vatras_LastWarning_Arsch_ADD_05_00"); //In deinen Worten ist kein Funken Reue.
	AI_Output	(self, other, "DIA_Addon_Vatras_LastWarning_Arsch_ADD_05_01"); //Du lässt mir keine andere Wahl.
	Info_ClearChoices	(DIA_Addon_Vatras_LastWarning);
	B_VatrasPissedOff ();
};

func void DIA_Addon_Vatras_LastWarning_Reue ()
{
	AI_Output	(other, self, "DIA_Addon_Vatras_LastWarning_Reue_ADD_15_00"); //Tut mir leid. Ich wusste nicht, was ich tat.
	AI_Output	(self, other, "DIA_Addon_Vatras_LastWarning_Reue_ADD_05_00"); //Ich will für dich beten und hoffen, dass du du wieder zur Besinnung zurück findest.
	AI_Output	(self, other, "DIA_Addon_Vatras_LastWarning_Reue_ADD_05_01"); //Wehe dir, wenn ich noch einmal von einem Mord zu hören bekomme, den du zu verantworten hast.
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
	AI_Output	(self, other, "DIA_Addon_Vatras_PissedOff_ADD_05_00"); //Deine Worte sind so falsch wie deine Taten.
	AI_Output	(self, other, "DIA_Addon_Vatras_PissedOff_ADD_05_01"); //Dein sinnloses Morden will einfach nicht enden.
	AI_Output	(self, other, "DIA_Addon_Vatras_PissedOff_ADD_05_02"); //Du lässt mir keine andere Wahl. 
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
	AI_Output (self, other, "DIA_Vatras_GREET_05_00"); //Adanos sei mit dir.
	AI_Output (other, self, "DIA_Vatras_GREET_15_01"); //Wer bist du?
	AI_Output (self, other, "DIA_Vatras_GREET_05_02"); //Ich bin Vatras, ein Diener des Adanos, des Behüters des göttlichen und weltlichen Gleichgewichts.
	AI_Output (self, other, "DIA_Vatras_GREET_05_03"); //Was kann ich für dich tun?
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
	description	 = 	"Ich bitte um deinen Segen.";
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
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_15_00"); //Ich bitte um deinen Segen.
	AI_Output (self, other, "DIA_Vatras_INFLUENCE_05_01"); //Für was soll ich dir meinen Segen geben, Fremder?
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_15_02"); //Ich will als Lehrling bei einem der Meister in der Unterstadt anfangen.
	//AI_Output (self, other, "DIA_Vatras_INFLUENCE_05_04"); //But I know nothing about you at all...
	AI_Output (self, other, "DIA_Vatras_INFLUENCE_05_03"); //Ich will dich wohl segnen, Fremder, aber ich kenne dich nicht. Erzähle mir was über dich.
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_15_04"); //Was willst du wissen?
	AI_Output (self, other, "DIA_Vatras_INFLUENCE_05_05"); //Nun, du könntest mit erzählen, wo du herkommst und warum du in die Stadt gekommen bist.
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_15_06"); //Ich komme mit einer wichtigen Botschaft für den Anführer der Paladine.
	AI_Output (self, other, "DIA_Vatras_INFLUENCE_05_07"); //Wie lautet diese Botschaft?
		
	Info_ClearChoices   (DIA_Vatras_INFLUENCE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Es sind Drachen gekommen...",DIA_Vatras_INFLUENCE_FIRST_TRUTH);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Es werden bald schreckliche Dinge passieren.",DIA_Vatras_INFLUENCE_FIRST_LIE);
};
FUNC VOID DIA_Vatras_INFLUENCE_FIRST_TRUTH()
{
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_FIRST_TRUTH_15_00"); //Während wir reden, sammelt sich eine große Armee unter der Führung von Drachen, um das Land zu erobern.
	
	if (Vatras_First == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_FIRST_TRUTH_05_01"); //Wenn das tatsächlich wahr ist, wird das Gleichgewicht der Erde gestört. Wer hat dir das erzählt?
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_FIRST_TRUTH_05_02"); //(überlegt) Drachen? Du sprichst von Wesen, die bisher nur in Sagen Erwähnung finden. Woher weißt du das?
	};
	Info_ClearChoices   (DIA_Vatras_INFLUENCE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Das habe ich irgendwo aufgeschnappt...",DIA_Vatras_INFLUENCE_SECOND_LIE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Xardas, der Magier hat es mir erzählt...",DIA_Vatras_INFLUENCE_SECOND_TRUTH);
	
	Vatras_First = TRUE;
};
FUNC VOID DIA_Vatras_INFLUENCE_FIRST_LIE()
{
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_FIRST_LIE_15_00"); //Es werden bald schreckliche Dinge passieren.
	
	if (Vatras_First == 2)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_FIRST_LIE_05_01"); //(verärgert) Aha. Und wer hat dir das erzählt?
	}
	else 
 	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_FIRST_LIE_05_02"); //Schreckliche Dinge also, hm ... woher weißt du das?
	};
	Info_ClearChoices   (DIA_Vatras_INFLUENCE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Das habe ich irgendwo aufgeschnappt...",DIA_Vatras_INFLUENCE_SECOND_LIE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Xardas, der Magier hat es mir erzählt...",DIA_Vatras_INFLUENCE_SECOND_TRUTH);
	
	Vatras_First = 2;
};
FUNC VOID DIA_Vatras_INFLUENCE_SECOND_TRUTH()
{
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_SECOND_TRUTH_15_00"); //Xardas, der Magier, hat es mir erzählt. Er hat mich geschickt, die Paladine zu warnen.
	
	if (Vatras_Second == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_SECOND_TRUTH_05_01"); //Ich kenne diesen Mann als mächtigen und weisen Meister der Magie. Und wo kommst du her?
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_SECOND_TRUTH_05_02"); //Der Dämonenbeschwörer ... Er lebt also ... (überlegt) und er hat dich losgeschickt? Wer bist du eigentlich?
	};
	Info_ClearChoices   (DIA_Vatras_INFLUENCE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Ich bin nur ein Abenteurer aus dem Süden...",DIA_Vatras_INFLUENCE_THIRD_LIE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Ich bin ein ehemaliger Gefangener...",DIA_Vatras_INFLUENCE_THIRD_TRUTH);
	
	Vatras_Second = TRUE;
};
FUNC VOID DIA_Vatras_INFLUENCE_SECOND_LIE()
{
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_SECOND_LIE_15_00"); //Das habe ich irgendwo aufgeschnappt...
	
	if (Vatras_Second == 2)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_SECOND_LIE_05_01"); //(ärgerlich) Weißt du wenigstens noch, wo du herkommst?
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_SECOND_LIE_05_02"); //Aha. Und deshalb hast du dich auf den Weg gemacht. Wer bist du eigentlich?
	};
	Info_ClearChoices   (DIA_Vatras_INFLUENCE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Ich bin ein Abenteurer aus dem Süden...",DIA_Vatras_INFLUENCE_THIRD_LIE);
	Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Ich bin ein ehemaliger Gefangener...",DIA_Vatras_INFLUENCE_THIRD_TRUTH);
	
	Vatras_Second = 2;
};
func VOID B_Vatras_INFLUENCE_REPEAT()
{
	//RAUS wegen ADDON
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_REPEAT_15_00"); //Und wirst du mir jetzt deinen Segen geben?
	AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_01"); //Gut, fassen wir zusammen...
	
	if (Vatras_Third == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_02"); //Du bist ein ehemaliger Gefangener, ...
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_03"); //Du bist also ein Abenteurer aus dem Süden ...
	};
	if (Vatras_Second  == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_04"); //... der von Xardas, dem Dämonenbeschwörer, erzählt bekommen hat, ...
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_05"); //... der irgendwo aufgeschnappt hat ...
	};
	if (Vatras_First  == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_06"); //... dass Drachen gekommen sind, um das Land zu erobern.
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_07"); //... dass bald schreckliche Dinge geschehen werden.
	};
		
	AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_08"); //Und du bist gekommen, um den Paladinen davon zu berichten ...
	if (Vatras_First   == TRUE)
	&& (Vatras_Second  == TRUE)
	&& (Vatras_Third   == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_09"); //Das hört sich alles sehr abenteuerlich an, aber ich kann nicht erkennen, dass du mich anlügst.
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_10"); //Daher muss ich annehmen, dass deine Beweggründe ehrlich sind.
		
		AI_Output (self, other, "DIA_Vatras_INFLUENCE_REPEAT_05_11"); //Gehe mit dem Segen Adanos, mein Sohn!
		Snd_Play ("LevelUp");
		B_GivePlayerXP (XP_VatrasTruth);
		Vatras_Segen = TRUE;
		B_LogEntry (TOPIC_Thorben,"Vatras, der Wassermagier, hat mich gesegnet.");
		
		Info_ClearChoices  (DIA_Vatras_INFLUENCE);
	}
	else if(Vatras_Chance == FALSE)
	{
		AI_Output (self, other, "DIA_Vatras_Add_05_00"); //Ich glaube du verschweigst mir etwas.
		AI_Output (self, other, "DIA_Vatras_Add_05_01"); //Falls du Sorge haben solltest, daß ich das, was du mir erzählst weitergebe, so kann ich dich beruhigen.
		AI_Output (self, other, "DIA_Vatras_Add_05_02"); //Ich habe geschworen, alle Geheimnisse, die mir anvertraut wurden, für mich zu behalten.
		if (Wld_IsTime(05,05,20,10))
		{
			AI_Output (other, self, "DIA_Vatras_Add_15_03"); //Und was ist mit den ganzen Leuten hier?
			AI_Output (self, other, "DIA_Vatras_Add_05_04"); //Sie verstehen nur die Hälfte von dem, was ich ihnen PREDIGE. Mach dir also keine Sorgen.
		};
		AI_Output (self, other, "DIA_Vatras_Add_05_05"); //Fangen wir also noch einmal von vorne an. Was ist das für eine Botschaft?
		
		//ADDON - SC kann nicht mehr versagen!
		Vatras_Chance = TRUE; 
		Info_ClearChoices   (DIA_Vatras_INFLUENCE);
		Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Es sind Drachen gekommen...",DIA_Vatras_INFLUENCE_FIRST_TRUTH);
		Info_AddChoice 		(DIA_Vatras_INFLUENCE,"Es werden bald schreckliche Dinge passieren.",DIA_Vatras_INFLUENCE_FIRST_LIE);
	}
	else if(Vatras_Chance == TRUE)
	{
		AI_Output(self,other,"DIA_Vatras_INFLUENCE_REPEAT_05_13");	//Ich habe dir nun zwei Chancen gegeben, mir die Wahrheit zu sagen, aber du willst es offenbar nicht. Ich werde dir meinen Segen nicht geben!
		
		B_LogEntry (TOPIC_Thorben,"Vatras, der Wassermagier, traut mir nicht und hat beschlossen, mir seinen Segen nicht zu erteilen. Jetzt wird Thorben mich bei den anderen Meistern nicht empfehlen.");
		MIS_Thorben_GetBlessings = LOG_FAILED;

		Info_ClearChoices  (DIA_Vatras_INFLUENCE);
	};
};
FUNC VOID DIA_Vatras_INFLUENCE_THIRD_TRUTH()
{
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_THIRD_TRUTH_15_00"); //Ich bin ein ehemaliger Gefangener der Strafkolonie von Khorinis.
	Vatras_Third = TRUE;
	
	B_Vatras_INFLUENCE_REPEAT();
};
FUNC VOID DIA_Vatras_INFLUENCE_THIRD_LIE()
{
	AI_Output (other, self, "DIA_Vatras_INFLUENCE_THIRD_LIE_15_00"); //Ich bin ein Abenteurer aus dem Süden...
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
	description	 = 	"Wo finde ich einen Geweihten Innos'?";		
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
	AI_Output (other, self, "DIA_Vatras_WoKdF_15_00"); //Wo finde ich einen Geweihten Innos'?
	AI_Output (self, other, "DIA_Vatras_WoKdF_05_01"); //Am besten schaust du mal am Marktplatz vorbei. Dort wirst du einen Abgesandten des Klosters finden.

	AI_Output	(self, other, "DIA_Addon_Vatras_GuildHelp_05_08"); //Mir ist zugetragen worden, dass er nicht nur in der Stadt ist, um Spenden zu sammeln.
	AI_Output	(self, other, "DIA_Addon_Vatras_GuildHelp_05_09"); //Mir hat er von einer Statuette berichtet, die ihm gestohlen wurde.
	MIS_Addon_Vatras_Go2Daron = LOG_RUNNING;
	
	Log_CreateTopic (TOPIC_Revived_DaronStatuette, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Revived_DaronStatuette, LOG_RUNNING);
	B_LogEntry (TOPIC_Revived_DaronStatuette,"Daron, der Feuermagier auf dem Marktplatz, hat eine Art Statuette verloren.");
};

// ************************************************************
// 		Tell Me About RING 		(Trigger fr MIS_Waffenhndler)
// ************************************************************
instance DIA_Addon_Vatras_TellMe (C_INFO)
{
	npc		 	= KDW_439_Vatras;
	nr		 	= 1;
	condition	= DIA_Addon_Vatras_TellMe_Condition;
	information	= DIA_Addon_Vatras_TellMe_Info;
	permanent	= TRUE;

	description	= "Was genau tut ihr eigentlich?";
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
	AI_Output (other, self, "DIA_Addon_Vatras_TellMe_Philo_15_00"); //Was genau tut ihr eigentlich?
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Philo_05_01"); //Wir stehen zwischen der Ordnung Innos' und dem Chaos Beliars.
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Philo_05_02"); //Wenn eine der beiden Parteien die Überhand gewinnt, dann bedeutet das den Verlust der Freiheit auf der einen Seite oder das todbringende Chaos auf der anderen.
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Philo_05_03"); //Und so sorgen wir dafür, dass Gleichgewicht herrscht zwischen ihnen. Nur so ist ein Leben auf dieser Welt überhaupt möglich.

	AI_Output (other, self, "DIA_Addon_Vatras_TellMe_Konkret_15_00"); //(stirnrunzelnd) Geht's auch etwas konkreter?
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Konkret_05_01"); //Der Fall der Barriere hat viele Bedrohungen hervorgerufen.
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Konkret_05_02"); //Die wohl offensichtlichste stellen die Banditen dar.
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Konkret_05_03"); //Nicht nur, dass es fast unmöglich geworden ist, die Insel zu bereisen, ohne angegriffen zu werden ...
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Konkret_05_04"); //... es gibt auch noch jemanden in dieser Stadt, der die Banditen unterstützt!
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Add_05_00"); //Wir haben herausgefunden, daß die Banditen regelmäßig von einem Waffenhändler aus Khorinis versorgt werden. 
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Konkret_05_05"); //Wir kümmern uns beispielsweise darum, solche Männer zu finden und sie daran zu hindern, die Stadt zu gefährden.
	AI_Output (self, other, "DIA_Addon_Vatras_TellMe_Konkret_05_06"); //Wenn du etwas über die Sache rausfinden kannst, lass es mich wissen.
	
	MIS_Vatras_FindTheBanditTrader = LOG_RUNNING;
	Vatras_ToMartin = TRUE;
	Log_CreateTopic (TOPIC_Addon_BanditTrader, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_BanditTrader, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_BanditTrader,"Es gibt einen Waffenhändler in Khorinis, der die Banditen unterstützt. Vatras will, dass ich der Sache nachgehe."); 
	B_LogEntry (TOPIC_Addon_BanditTrader,"Martin der Proviantmeister der Paladine kümmert sich um die Sache mit dem Waffenhändler. Ich finde ihn am Hafen, wo die Paladine ihren Proviant lagern."); 


		//ADDON ----- FERNANDO BANDIT TRADER QUEST
			//Beim ersten Hndlerberfall
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
// 			  				Waffenhndler
// ************************************************************
instance DIA_Addon_Vatras_Waffen (C_INFO)
{
	npc			= KDW_439_Vatras;
	nr		 	= 2;
	condition	= DIA_Addon_Vatras_Waffen_Condition;
	information	= DIA_Addon_Vatras_Waffen_Info;
	permanent 	= TRUE;
	description = "Wegen dieses Waffenhändlers...";
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
	AI_Output (other, self, "DIA_Addon_Vatras_Waffen_15_00"); //Wegen dieses Waffenhändlers...
	
	Info_ClearChoices (DIA_Addon_Vatras_Waffen);
	Info_AddChoice (DIA_Addon_Vatras_Waffen, DIALOG_BACK, DIA_Addon_Vatras_Waffen_BACK);
	if (Fernando_ImKnast == TRUE)
	|| (Fernando_HatsZugegeben == TRUE)
	{
		Info_AddChoice (DIA_Addon_Vatras_Waffen, "Ich kenne den Händler, der den Banditen die Waffen liefert!", DIA_Addon_Vatras_Waffen_Success);
	}
	else
	{
		Info_AddChoice (DIA_Addon_Vatras_Waffen, "Was wißt ihr schon über den Waffenhändler?", DIA_Addon_Vatras_Waffen_ToMartin);
	};
};
func void DIA_Addon_Vatras_Waffen_BACK()
{
	Info_ClearChoices (DIA_Addon_Vatras_Waffen);
};
func void DIA_Addon_Vatras_Waffen_ToMartin()
{
	AI_Output (other, self, "DIA_Addon_Vatras_Waffen_ToMartin_15_00"); //Was wisst ihr schon über den Waffenhändler?
	AI_Output (self, other, "DIA_Addon_Vatras_Waffen_ToMartin_05_01"); //Sprich mit Martin dem Proviantmeister der Paladine darüber. Er kann dir sicher mehr dazu sagen.
	AI_Output (self, other, "DIA_Addon_Vatras_Waffen_ToMartin_05_02"); //Er ist mit der Aufgabe betraut worden, den Waffenhändler zu entlarven.
	AI_Output (self, other, "DIA_Addon_Vatras_Waffen_ToMartin_05_03"); //Du findest Martin im Hafenviertel. Wenn du eine Ansammlung von Kisten, Proviant und Paladinen siehst, ist Martin nicht weit.
		
	Vatras_ToMartin = TRUE;
};

func void DIA_Addon_Vatras_Waffen_Success ()
{
	AI_Output (other, self, "DIA_Addon_Vatras_Waffen_Success_15_00"); //Ich kenne den Händler, der den Banditen die Waffen liefert!
	AI_Output (other, self, "DIA_Addon_Vatras_Waffen_Success_15_01"); //Sein Name ist Fernando.
	AI_Output (self, other, "DIA_Addon_Vatras_Waffen_Success_05_02"); //Sehr gut. Hat Martin schon die nötigen Schritte eingeleitet, damit er keine Lieferungen mehr tätigen kann?
	if (Fernando_ImKnast == TRUE)
	{
		AI_Output	(other, self, "DIA_Addon_Vatras_Waffen_Success_15_03"); //Ja. Martin wird dafür sorgen, dass er den Kerker so bald nicht mehr verlässt.
		AI_Output	(self, other, "DIA_Addon_Vatras_Waffen_Success_05_04"); //Das hast du gut gemacht, mein Sohn.
		
		AI_Output (self, other, "DIA_Addon_Vatras_Waffen_Success_05_07"); //Möge Adanos deinen Weg erleuchten.
		
		MIS_Vatras_FindTheBanditTrader = LOG_SUCCESS;
		B_GivePlayerXP (XP_Addon_Vatras_FindTheBanditTrader);
	}
	else
	{
		AI_Output	(other, self, "DIA_Addon_Vatras_CaughtFernando_15_09"); //Bis jetzt noch nicht.
		AI_Output	(self, other, "DIA_Addon_Vatras_CaughtFernando_05_10"); //Dann beeil dich und berichte ihm davon. Das muss unverzüglich aufhören.
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
	description	 = 	"Ich will Adanos etwas spenden!";
};

func int DIA_Vatras_Spende_Condition ()
{	
	return TRUE;
};
func void DIA_Vatras_Spende_Info ()
{
	AI_Output (other, self, "DIA_Vatras_Spende_15_00"); //Ich will Adanos etwas spenden!
	AI_Output (self, other, "DIA_Vatras_Spende_05_01"); //Eine Spende an die Kirche Adanos würde einen Teil der Sünden, die du bis jetzt auf dich geladen haben magst, mindern, mein Sohn.
	AI_Output (self, other, "DIA_Vatras_Spende_05_02"); //Wie viel kannst du geben?
	
	Info_ClearChoices   (DIA_Vatras_Spende);
	Info_AddChoice 		(DIA_Vatras_Spende, "Ich habe zur Zeit nichts übrig...", DIA_Vatras_Spende_BACK);
	if (Npc_HasItems(other,itmi_gold) >= 50)
	{
		Info_AddChoice 		(DIA_Vatras_Spende, "Ich habe 50 Goldstücke.", DIA_Vatras_Spende_50);
	};
	if (Npc_HasItems(other,itmi_gold) >= 100)
	{
		Info_AddChoice 		(DIA_Vatras_Spende, "Ich habe 100 Goldstücke.",	DIA_Vatras_Spende_100);
	};
};

func void DIA_Vatras_Spende_BACK()
{
	AI_Output (other, self, "DIA_Vatras_Spende_BACK_15_00"); //Ich habe zur Zeit nichts übrig...
	AI_Output (self, other, "DIA_Vatras_Spende_BACK_05_01"); //Das ist nicht schlimm, du kannst deinen guten Willen auch später noch in die Tat umsetzen, mein Sohn.
	Info_ClearChoices   (DIA_Vatras_Spende);
};

func void DIA_Vatras_Spende_50()
{
	AI_Output (other, self, "DIA_Vatras_Spende_50_15_00"); //Ich habe 50 Goldstücke.
	AI_Output (self, other, "DIA_Vatras_Spende_50_05_01"); //Ich danke dir im Namen Adanos, mein Sohn. Dein Gold wird unter den Bedürftigen verteilt werden.
	B_GiveInvItems (other, self, Itmi_Gold, 50);
	Info_ClearChoices   (DIA_Vatras_Spende);
};
	
func void DIA_Vatras_Spende_100()
{
	AI_Output (other, self, "DIA_Vatras_Spende_100_15_00"); //Ich habe 100 Goldstücke.
	Snd_Play ("LevelUp");
	if(Vatras_Chance == TRUE)
	{
		AI_Output (self, other, "DIA_Vatras_Spende_100_05_02"); //Möge der Weg, den du einschlägst, unter dem Segen Adanos stehen!
	}
	else
	{
		AI_Output (self, other, "DIA_Vatras_Spende_100_05_01"); //Ich segne dich im Namen Adanos für diese großzügige Tat!
		Vatras_Segen = TRUE;
		if (MIS_Thorben_GetBlessings == LOG_RUNNING)
		{
			B_LogEntry (TOPIC_Thorben,"Vatras, der Wassermagier, hat mich gesegnet.");
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
	description	 = 	"Kannst du mir etwas über die Magie beibringen?";
};

func int DIA_Vatras_CanTeach_Condition ()
{	
	return TRUE;
};
func void DIA_Vatras_CanTeach_Info ()
{
	AI_Output (other, self, "DIA_Vatras_CanTeach_15_00"); //Kannst du mir etwas über die Magie beibringen?
	AI_Output (self, other, "DIA_Vatras_CanTeach_05_01"); //Nur den Erwählten Innos und den Erwählten Adanos ist es gestattet, Runenmagie zu wirken.
	AI_Output (self, other, "DIA_Vatras_CanTeach_05_02"); //Aber auch gewöhnliche Sterbliche können Magie mit Hilfe von Spruchrollen wirken.
	AI_Output (self, other, "DIA_Vatras_CanTeach_05_03"); //Ich kann dir zeigen, wie du deine magischen Kräfte kanalisieren und erweitern kannst.
	
	Vatras_TeachMANA = TRUE;
	Log_CreateTopic (Topic_CityTeacher,LOG_NOTE);
	B_LogEntry (Topic_CityTeacher,"Vatras der Wassermagier, kann mir dabei helfen, meine magische Energie zu steigern.");
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
	description	 = 	"Ich will meine magische Kraft steigern.";
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
	AI_Output (other, self, "DIA_Vatras_Teach_15_00"); //Ich will meine magische Kraft steigern.
	
	Info_ClearChoices   (DIA_Vatras_Teach);
	Info_AddChoice 		(DIA_Vatras_Teach, DIALOG_BACK, DIA_Vatras_Teach_BACK);
	Info_AddChoice		(DIA_Vatras_Teach, B_BuildLearnString(PRINT_LearnMANA1	, B_GetLearnCostAttribute(other, ATR_MANA_MAX))		,DIA_Vatras_Teach_1);
	Info_AddChoice		(DIA_Vatras_Teach, B_BuildLearnString(PRINT_LearnMANA5	, B_GetLearnCostAttribute(other, ATR_MANA_MAX)*5)	,DIA_Vatras_Teach_5);
	
};
func void DIA_Vatras_Teach_BACK()
{
	if (other.attribute[ATR_MANA_MAX] >= T_HIGH)
	{
		AI_Output (self, other, "DIA_Vatras_Teach_05_00"); //Deine magische Kraft ist über mein Lehrverständnis hinausgewachsen.
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
	nr          = 	98;	//Joly: bracuht ne hohe Nummer, denn wird in den spteren Kapiteln auch verwendet.
	condition	 = 	DIA_Vatras_GODS_Condition;
	information	 = 	DIA_Vatras_GODS_Info;
	permanent	 =  TRUE;
	description	 = 	"Erzähl mir über die Götter";
};

func int DIA_Vatras_GODS_Condition ()
{	
	return TRUE;
};
func void DIA_Vatras_GODS_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_GODS_15_00"); //Erzähl mir über die Götter
	AI_Output			(self, other, "DIA_Vatras_GODS_05_01"); //Was genau möchtest du wissen?
	
	Info_ClearChoices (DIA_Vatras_GODS); 
	Info_AddChoice	  (DIA_Vatras_GODS,DIALOG_BACK             ,DIA_Vatras_GODS_BACK);
	Info_AddChoice	  (DIA_Vatras_GODS,"Erzähl mir von Innos.",DIA_Vatras_GODS_INNOS); 		 
	Info_AddChoice	  (DIA_Vatras_GODS,"Erzähl mir über Adanos",DIA_Vatras_GODS_ADANOS); 		 
	Info_AddChoice	  (DIA_Vatras_GODS,"Erzähl mir über Beliar",DIA_Vatras_GODS_BELIAR); 		 
	 		 
};
FUNC VOID DIA_Vatras_GODS_BACK()
{
	Info_ClearChoices (DIA_Vatras_GODS); 
};
FUNC VOID DIA_Vatras_GODS_INNOS()
{
	AI_Output			(other, self, "DIA_Vatras_GODS_INNOS_15_00"); //Erzähl mir von Innos.
	AI_Output			(self, other, "DIA_Vatras_GODS_INNOS_05_01"); //Also gut. (predigt) Innos ist der erste und oberste Gott. Er schuf die Sonne und die Welt.
	AI_Output			(self, other, "DIA_Vatras_GODS_INNOS_05_02"); //Er gebietet über Licht und Feuer, die seine Geschenke an die Menschen sind. Er ist Gesetz und Gerichtsbarkeit.
	AI_Output			(self, other, "DIA_Vatras_GODS_INNOS_05_03"); //Seine Priester sind die Magier des Feuers, die Paladine seine Streiter.
	
	Info_ClearChoices (DIA_Vatras_GODS); 
	Info_AddChoice	  (DIA_Vatras_GODS,DIALOG_BACK             ,DIA_Vatras_GODS_BACK); 
	Info_AddChoice	  (DIA_Vatras_GODS,"Erzähl mir von Innos.",DIA_Vatras_GODS_INNOS); 
	Info_AddChoice	  (DIA_Vatras_GODS,"Erzähl mir über Adanos",DIA_Vatras_GODS_ADANOS); 		 
	Info_AddChoice	  (DIA_Vatras_GODS,"Erzähl mir über Beliar",DIA_Vatras_GODS_BELIAR); 	
	
};
FUNC VOID DIA_Vatras_GODS_ADANOS()
{
	AI_Output			(other, self, "DIA_Vatras_GODS_ADANOS_15_00"); //Erzähl mir über Adanos
	AI_Output			(self, other, "DIA_Vatras_GODS_ADANOS_05_01"); //Adanos ist der Gott der Mitte. Er ist die Waagschale der Gerechtigkeit, der Hüter des Gleichgewichts zwischen Innos und Beliar.
	AI_Output			(self, other, "DIA_Vatras_GODS_ADANOS_05_02"); //Er gebietet über die Kraft der Veränderung, sein Geschenk ist das Wasser in allen Meeren, Flüssen und Seen.
	AI_Output			(self, other, "DIA_Vatras_GODS_ADANOS_05_03"); //Seine Priester sind die Magier des Wassers, so wie auch ich ein Diener und Priester von Adanos bin.
	
	Info_ClearChoices (DIA_Vatras_GODS); 
	Info_AddChoice	  (DIA_Vatras_GODS,DIALOG_BACK             ,DIA_Vatras_GODS_BACK); 	
	Info_AddChoice	  (DIA_Vatras_GODS,"Erzähl mir von Innos.",DIA_Vatras_GODS_INNOS); 		 
	Info_AddChoice	  (DIA_Vatras_GODS,"Erzähl mir über Adanos",DIA_Vatras_GODS_ADANOS);
	Info_AddChoice	  (DIA_Vatras_GODS,"Erzähl mir über Beliar",DIA_Vatras_GODS_BELIAR); 	

};
FUNC VOID DIA_Vatras_GODS_BELIAR()
{
	AI_Output			(other, self, "DIA_Vatras_GODS_BELIAR_15_00"); //Erzähl mir über Beliar
	AI_Output			(self, other, "DIA_Vatras_GODS_BELIAR_05_01"); //Beliar ist der finstere Gott des Todes, der Zerstörung und alles Widernatürlichen.
	AI_Output			(self, other, "DIA_Vatras_GODS_BELIAR_05_02"); //Er liegt im ewigen Kampf mit Innos, doch Adanos bewahrt das Gleichgewicht zwischen den beiden.
	AI_Output			(self, other, "DIA_Vatras_GODS_BELIAR_05_03"); //Nur wenige Menschen folgen Beliars Ruf - doch denen, die es tun, verleiht er große Stärke.
	
	Info_ClearChoices (DIA_Vatras_GODS); 
	Info_AddChoice	  (DIA_Vatras_GODS,DIALOG_BACK             ,DIA_Vatras_GODS_BACK); 
	Info_AddChoice	  (DIA_Vatras_GODS,"Erzähl mir von Innos.",DIA_Vatras_GODS_INNOS); 		 
	Info_AddChoice	  (DIA_Vatras_GODS,"Erzähl mir über Adanos",DIA_Vatras_GODS_ADANOS); 
	Info_AddChoice	  (DIA_Vatras_GODS,"Erzähl mir über Beliar",DIA_Vatras_GODS_BELIAR); 			 
	
};
///////////////////////////////////////////////////////////////////////
//	Info HEAL
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_HEAL		(C_INFO)
{
	npc			 = 	KDW_439_Vatras;
	nr          = 	99;	//Joly: bracuht ne hohe Nummer, denn wird in den spteren Kapiteln auch verwendet.
	condition	 = 	DIA_Vatras_HEAL_Condition;
	information	 = 	DIA_Vatras_HEAL_Info;
	permanent	 = 	TRUE;
	description	 = 	"Kannst du mich heilen?";
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
	AI_Output			(other, self, "DIA_Vatras_HEAL_15_00"); //Kannst du mich heilen?
	AI_Output			(self, other, "DIA_Vatras_HEAL_05_01"); //(andächtig) Adanos segne diesen Körper. Befreie ihn von seinen Wunden und stärke ihn mit neuem Leben.
		hero.attribute [ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
		PrintScreen (PRINT_FullyHealed, - 1, - 1, FONT_Screen, 2);   
};

// ********************************************************************
// 							Isgaroth Mission
// ********************************************************************
///////////////////////////////////////////////////////////////////////
//	Info MISSION
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_MISSION		(C_INFO)
{
	npc		 	= KDW_439_Vatras;
	nr 			= 1; 
	condition	= DIA_Vatras_MISSION_Condition;
	information	= DIA_Vatras_MISSION_Info;
	
	important	= TRUE;
};
func int DIA_Vatras_MISSION_Condition ()
{	
	if (Npc_IsInState (self, ZS_Talk))
	&& (Kapitel >= 2)
	
	{
		return TRUE;
	};
};
func void DIA_Vatras_MISSION_Info ()
{
	AI_Output (self, other, "DIA_Vatras_Add_05_10"); //Ich habe eine Botschaft für Meister Isgaroth. Er ist der Wächter des Schreins vor dem Kloster.
	AI_Output (self, other, "DIA_Vatras_MISSION_05_01"); //Wenn du diesen Weg für mich gehst, kannst du deine Belohnung selber wählen.
	
	Info_ClearChoices   (DIA_Vatras_MISSION);
	Info_AddChoice 		(DIA_Vatras_MISSION,"Jetzt nicht.",DIA_Vatras_MISSION_NO);
	Info_AddChoice 		(DIA_Vatras_MISSION,"Ja.",DIA_Vatras_MISSION_YES);
};
FUNC VOID B_SayVatrasGo()
{
	AI_Output (self, other, "DIA_Vatras_Add_05_13"); //Gut. Dann mache dich nun auf den Weg zu Meister Isgaroth.
};
func VOID DIA_Vatras_MISSION_YES()
{
	AI_Output (other, self, "DIA_Vatras_MISSION_YES_15_00"); //Ich mach's.
	AI_Output (self, other, "DIA_Vatras_Add_05_11"); //Gut, dann nimm die Botschaft und wähle eine dieser Spruchrollen.
	AI_Output (self, other, "DIA_Vatras_Add_05_12"); //Wenn du die Botschaft überbracht hast, werde ich dich angemessen entlohnen.
	
	B_GiveInvItems (self, hero, ItWr_VatrasMessage,1); 
	MIS_Vatras_Message = LOG_RUNNING;
	
	Log_CreateTopic (TOPIC_Botschaft,LOG_MISSION);
	Log_SetTopicStatus (TOPIC_Botschaft,LOG_RUNNING);
	B_LogEntry (TOPIC_Botschaft,"Vatras hat mir eine Botschaft für Meister Isgaroth gegeben. Er wacht am Schrein vor dem Kloster.");
	
	Info_ClearChoices 	(DIA_Vatras_MISSION);
	Info_AddChoice 		(DIA_Vatras_MISSION,"Ich nehme den Lichtzauber",DIA_Vatras_MISSION_LIGHT);
	Info_AddChoice 		(DIA_Vatras_MISSION,"Ich wähle die Heilung",DIA_Vatras_MISSION_HEAL);	
	Info_AddChoice 		(DIA_Vatras_MISSION,"Gib mir den Eispfeil",DIA_Vatras_MISSION_ICE);	
};
FUNC VOID DIA_Vatras_MISSION_NO ()
{	
	//AI_Output	(other, self, "DIA_Vatras_MISSION_NO_15_00"); //Such dir einen anderen Laufburschen, alter Mann!
	AI_Output (other, self, "DIA_ADDON_Vatras_MISSION_NO_15_00"); //Nicht jetzt!
	AI_Output (self, other, "DIA_ADDON_Vatras_MISSION_NO_05_01"); //Kein Problem. Ich werde jemand anderen schicken.
	MIS_Vatras_Message = LOG_OBSOLETE;
	Info_ClearChoices 	(DIA_Vatras_MISSION);
};
FUNC VOID DIA_Vatras_MISSION_HEAL()
{
	AI_Output			(other, self, "DIA_Vatras_MISSION_HEAL_15_00"); //Ich wähle die Heilung
	 B_SayVatrasGo();
	 
	B_GiveInvItems (self, hero,ItSc_LightHeal ,1);
	Info_ClearChoices 	(DIA_Vatras_MISSION);
};
FUNC VOID DIA_Vatras_MISSION_ICE()
{
	AI_Output			(other, self, "DIA_Vatras_MISSION_ICE_15_00"); //Gib mir den Eispfeil
	B_SayVatrasGo();
	
	B_GiveInvItems (self, hero,ItSc_Icebolt ,1);
	Info_ClearChoices 	(DIA_Vatras_MISSION);
};
FUNC VOID DIA_Vatras_MISSION_LIGHT()
{
	AI_Output			(other, self, "DIA_Vatras_MISSION_LIGHT_15_00"); //Ich nehme den Lichtzauber
	B_SayVatrasGo();
	
	B_GiveInvItems (self, hero,ItSc_Light ,1);
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
	
	description	= "Ich habe die Botschaft überbracht";
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
	AI_Output (other, self, "DIA_Vatras_MESSAGE_SUCCESS_15_00"); //Ich habe die Botschaft überbracht
	AI_Output (self, other, "DIA_Vatras_Add_05_14"); //Sei bedankt dafür. Dann wähle nun deinen Lohn.
	
	MIS_Vatras_Message = LOG_SUCCESS;
	B_GivePlayerXP(XP_Vatras_Message);
	
	Info_ClearChoices (DIA_Vatras_MESSAGE_SUCCESS);
	Info_AddChoice 	  (DIA_Vatras_MESSAGE_SUCCESS,"1 Pflanze Kronstöckl",DIA_Vatras_MESSAGE_SUCCESS_Plant);
	Info_AddChoice 	  (DIA_Vatras_MESSAGE_SUCCESS,"Ring der Gewandtheit",DIA_Vatras_MESSAGE_SUCCESS_Ring);	
	Info_AddChoice 	  (DIA_Vatras_MESSAGE_SUCCESS,"1 Erzbrocken",DIA_Vatras_MESSAGE_SUCCESS_Ore);
};
FUNC VOID DIA_Vatras_MESSAGE_SUCCESS_Plant()
{
	B_GiveInvItems (self, hero,ItPl_Perm_Herb ,1);
	Info_ClearChoices 	(DIA_Vatras_MESSAGE_SUCCESS);
};
FUNC VOID DIA_Vatras_MESSAGE_SUCCESS_Ring()
{
	B_GiveInvItems (self, hero,ITRI_REVIVED_DEX_01 ,1);
	Info_ClearChoices 	(DIA_Vatras_MESSAGE_SUCCESS);
};
FUNC VOID DIA_Vatras_MESSAGE_SUCCESS_Ore()
{
	B_GiveInvItems (self, hero,ItMI_Nugget ,1);
	Info_ClearChoices 	(DIA_Vatras_MESSAGE_SUCCESS);
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
		
		AI_Output (self, other, "DIA_Vatras_Add_05_06"); //Hört zu, Leute! Ich werde woanders gebraucht.
		if (dauer == kurz)
		{
			AI_Output (self, other, "DIA_Vatras_Add_05_07"); //Es wird nicht lange dauern. Sobald ich zurückkehre, werde ich euch die Geschichte weitererzählen.
		}
		else //lang
		{
			AI_Output (self, other, "DIA_Vatras_Add_05_08"); //Ich weiß nicht, ob ich zurückkommen werde. Wenn ihr wissen wollt, wie die Geschichte ausgeht, lest es in den alten Schriften nach.
			
			Vatras_einmalLangWeg = TRUE;
		};
		AI_Output (self, other, "DIA_Vatras_Add_05_09"); //Möge Adanos mit euch sein!
		
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

	description	 = 	"Das Auge Innos ist zerbrochen.";
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
		AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_15_00"); //Pyrokar schickt mich.
	}
	else if (MIS_Xardas_GoToVatrasInnoseye == LOG_RUNNING)
	{
		AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_15_01"); //Xardas schickt mich.
	};

	MIS_SCKnowsInnosEyeIsBroken  = TRUE;
	B_GivePlayerXP (XP_Ambient);

	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_15_02"); //Das Auge Innos ist zerbrochen.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_05_03"); //Ich weiß. Ich habe es schon von einigen aufgebrachten Novizen erfahren.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_05_04"); //Die Suchenden haben den Sonnenkreis der Feuermagier dazu benutzt, um das Auge Innos zu zerstören.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_05_05"); //Einen gelungenen Schachzug des Gegners würde ich das nennen.

	Info_ClearChoices	(DIA_Vatras_INNOSEYEKAPUTT);
	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Nachrichten verbreiten sich schnell in dieser Stadt.", DIA_Vatras_INNOSEYEKAPUTT_schnelleNachrichten );

	if (hero.guild == GIL_KDF)
	&& (MIS_Pyrokar_GoToVatrasInnoseye == LOG_RUNNING)
	{
		Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Warum hat mich Pyrokar gerade zu dir geschickt?", DIA_Vatras_INNOSEYEKAPUTT_warumdu );
	};
	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Was soll nun mit dem Auge geschehen?", DIA_Vatras_INNOSEYEKAPUTT_Auge );

};
func void DIA_Vatras_INNOSEYEKAPUTT_Auge ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_Auge_15_00"); //Was soll nun mit dem Auge geschehen?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_05_01"); //Wir müssen es wieder zusammenfügen. Aber das ist keine leichte Aufgabe, fürchte ich.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_05_02"); //Die Fassung ist in zwei Teile zerbrochen. Dies vermag ein geschickter Schmied wieder zu richten.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_05_03"); //Aber das ist eigentlich nicht die Schwierigkeit dabei. Vielmehr macht mir der eingelassene Edelstein Sorgen.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_05_04"); //Er ist matt und kraftlos. Der Feind scheint genau gewusst zu haben, wie man ihn schwächt.

	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Wo finde ich einen Schmied, der die Fassung reparieren kann?", DIA_Vatras_INNOSEYEKAPUTT_Auge_schmied );
	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Wie erhält der Edelstein seine Kraft zurück?", DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein );
};
func void DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_15_00"); //Wie erhält der Edelstein seine Kraft zurück?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_05_01"); //Ich sehe nur einen Weg. Eine Vereinigung der drei herrschenden Gottheiten sollte den gewünschten Effekt erzielen.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_05_02"); //Ein gut vorbereites Umkehrritual an dem Ort seiner Zerstörung wird dem Edelstein wieder Feuer geben.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_05_03"); //Das Problem dabei ist allerdings, dass du jeweils einen irdischen Vertreter von jedem der drei Götter zu diesem Ort bringen musst.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_05_04"); //Des weiteren bräuchte man eine Menge Sumpfkraut für dieses Ritual. Ich schätze, 3 Krautpflanzen müssten es schon sein.

	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Wer könnten diese drei irdischen Vertreter der Götter sein?", DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer );
	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Wo würde ich dieses Sumpfkraut finden?", DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Kraut );
};
func void DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Kraut ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Kraut_15_00"); //Wo würde ich dieses Sumpfkraut finden?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Kraut_05_01"); //Ich habe da etwas von einer alten Giftmischerin namens Sagitta in den Wäldern gehört. Sie soll angeblich solches Kraut verkaufen.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Kraut_05_02"); //Du könntest dein Glück aber auch unten am Hafen versuchen.
	

};

func void DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_15_00"); //Wer könnten diese drei irdischen Vertreter der Götter sein?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_05_01"); //Für den Gott Adanos werde ich mich zur Verfügung stellen.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_05_02"); //Pyrokar, der oberste Feuermagier, wäre der Richtige, um den Gott Innos zu vertreten.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_05_03"); //Aber für Beliar fällt mir kein geeigneter Bewerber ein. Es müsste jemand sein, der die schwarze Magie beherrscht.

	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Schwarze Magie? Was ist mit Xardas?", DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas );

};
func void DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas_15_00"); //Schwarze Magie? Was ist mit Xardas?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas_05_01"); //Das ist es. Das könnte funktionieren.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas_05_02"); //Doch frage ich mich, wie du uns alle drei zusammenbringen willst.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas_05_03"); //Ich sehe doch jetzt schon Pyrokars Gesicht, wenn er hört, dass er mit Xardas an einem Strang ziehen soll.

	Info_AddChoice	(DIA_Vatras_INNOSEYEKAPUTT, "Ich muss gehen.", DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas_weiter );
};

func void DIA_Vatras_INNOSEYEKAPUTT_Auge_schmied ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_Auge_schmied_15_00"); //Wo finde ich einen Schmied, der die Fassung des Auges reparieren kann?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_Auge_schmied_05_01"); //Frage in den umliegenden Gebieten nach einem, der sich auf das Reparieren von Kleinoden versteht.
};

func void DIA_Vatras_INNOSEYEKAPUTT_warumdu ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_warumdu_15_00"); //Warum hat mich Pyrokar gerade zu dir geschickt?
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_warumdu_05_01"); //Ich habe geahnt, dass so etwas früher oder später geschehen würde.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_warumdu_05_02"); //Pyrokar fühlt sich immer so unverletzbar und erhaben, dass es schon fast an Leichtsinn grenzt.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_warumdu_05_03"); //Daher waren seine Vorsichtsmaßnahmen, das Auge zu schützen, auch so nachlässig.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_warumdu_05_04"); //Ich denke einfach, dass er sich unterbewusst auf meine Fähigkeiten verlässt, die mir Adanos Macht verleiht.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_warumdu_05_05"); //Gar nicht auszudenken, was passieren würde, wenn ich jetzt nicht zur Stelle wäre.

};

func void DIA_Vatras_INNOSEYEKAPUTT_schnelleNachrichten ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_schnelleNachrichten_15_00"); //Nachrichten verbreiten sich schnell in dieser Stadt.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_schnelleNachrichten_05_01"); //Das ist auch gut so. Der Feind wird genauso wenig schlafen.

};

func void DIA_Vatras_INNOSEYEKAPUTT_Auge_Stein_Wer_Xardas_weiter ()
{
	AI_Output			(other, self, "DIA_Vatras_INNOSEYEKAPUTT_weiter_15_00"); //Ich muss gehen.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_weiter_05_01"); //Ich werde ebenfalls aufbrechen und am Sonnenkreis die Zeremonie vorbereiten.
	AI_Output			(self, other, "DIA_Vatras_INNOSEYEKAPUTT_weiter_05_02"); //Schicke Xardas und Pyrokar dorthin. Und vergiss nicht, das Sumpfkraut mitzubringen. Ich verlass mich auf dich.
	
	B_LogEntry (TOPIC_INNOSEYE, "Vatras will ein Ritual am Sonnenkreis abhalten um das Auge wieder zu heilen. Ich muss Xardas und Pyrokar überzeugen, daran teilzunehmen. Ausserdem muss ich einen Schmied finden, der mir die zerbrochene Fassung des Amuletts repariert.");

	MIS_RitualInnosEyeRepair = LOG_RUNNING;
	Info_ClearChoices	(DIA_Vatras_INNOSEYEKAPUTT);
	Npc_ExchangeRoutine	(self,"RITUALINNOSEYEREPAIR");

	
	// ------ Zuhrer weg -------
		B_Vatras_Geheweg (kurz);
	// --------------------------
	
	//Joly: Weg mit den Ritualdementoren!!!!!

	DMT_1201.aivar[AIV_EnemyOverride] = TRUE;	//Joly: Damit sie erstmal nicht die Welt entvlkern, ohne Zutun des Spielers!!!!!
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

	description	 = 	"Wie steht's ums Auge Innos'?";
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
	AI_Output			(other, self, "DIA_Vatras_RitualInnosEyeRepair_15_00"); //Wie steht's ums Auge Innos'?
	AI_Output			(self, other, "DIA_Vatras_RitualInnosEyeRepair_05_01"); //Denke daran: Nur ein Umkehrritual am Sonnenkreis zusammen mit Xardas und Pyrokar wird das Auge wieder heilen.
	AI_Output			(self, other, "DIA_Vatras_RitualInnosEyeRepair_05_02"); //Und vergiss nicht, das Auge mit der reparierten Fassung mitzubringen.
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

	description	 = 	"Ich habe alles erledigt, was du mir aufgetragen hast.";
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
	AI_Output			(other, self, "DIA_Vatras_BEGINN_15_00"); //Ich habe alles erledigt, was du mir aufgetragen hast. Hier hast du das reparierte Auge.
	B_GivePlayerXP (XP_RitualInnosEyeRuns);

	B_GiveInvItems 		(other, self, ItMi_InnosEye_Broken_MIS, 1);
	Npc_RemoveInvItem 	(self, ItMi_InnosEye_Broken_MIS);

	AI_Output			(self, other, "DIA_Vatras_BEGINN_05_01"); //Tatsächlich fehlt nun nichts mehr, um das Umkehrritual zu vollziehen.
	AI_Output			(other, self, "DIA_Vatras_BEGINN_15_02"); //Was ist mit dem Sumpfkraut?
	
	AI_Output			(self, other, "DIA_Vatras_BEGINN_05_03"); //Ach ja. Hast du denn 3 Sumpfkrautpflanzen dabei?
	
	if (B_GiveInvItems (other, self, ItPL_SwampHerb,3))
	{
		AI_Output			(other, self, "DIA_Vatras_BEGINN_15_04"); //Ähm. Ja. Hier hast du die 3 Pflanzen.
		AI_Output			(self, other, "DIA_Vatras_BEGINN_05_05"); //Ausgezeichnet.
		B_GivePlayerXP (XP_Ambient);
	}
	else
	{
		AI_Output			(other, self, "DIA_Vatras_BEGINN_15_06"); //Nein. Leider nicht.
		AI_Output			(self, other, "DIA_Vatras_BEGINN_05_07"); //Na schön. Dann muss es eben ohne gehen.
	};
	
	AI_Output			(self, other, "DIA_Vatras_BEGINN_05_08"); //Das hast du gut gemacht, doch trete nun beiseite, damit wir mit der Zeremonie beginnen können. Möge sich unser Geist vereinen.
 	
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
	AI_Output			(self, other, "DIA_Vatras_AUGEGEHEILT_05_00"); //Es ist vollbracht. Es ist uns gelungen, den Plan des Feindes zu vereiteln und das Auge wieder zu heilen.
	AI_Output			(self, other, "DIA_Vatras_AUGEGEHEILT_05_01"); //Lass dir den Umgang mit seiner Macht von Pyrokar erklären.
	AI_Output			(self, other, "DIA_Vatras_AUGEGEHEILT_05_02"); //Ich hoffe, ich werde dich wiedersehen, wenn du deine Aufgabe erledigt hast. Leb wohl.
 	
 	B_LogEntry (TOPIC_INNOSEYE, "Das Auge ist geheilt. Pyrokar wird es mir überreichen und dann auf zur Drachenjagd.");
	AI_StopProcessInfos (self);
 
 	RitualInnosEyeRuns = LOG_SUCCESS;
 	MIS_RitualInnosEyeRepair = LOG_SUCCESS;	
 
	B_StartOtherRoutine   (Pyrokar,"RitualInnosEyeRepair");
	B_StartOtherRoutine   (Xardas, "RitualInnosEyeRepair");
	
	B_StartOtherRoutine  (VLK_455_Buerger,"Start");
	B_StartOtherRoutine  (VLK_454_Buerger,"Start");
	B_StartOtherRoutine  (VLK_428_Buergerin,"Start");
	B_StartOtherRoutine  (VLK_450_Buerger,"Start");
	B_StartOtherRoutine  (VLK_426_Buergerin,"Start");
	B_StartOtherRoutine  (VLK_421_Valentino,"Start");
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

	description	 = 	"Danke für deine Hilfe, das Auge Innos' zu heilen.";
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
	AI_Output			(other, self, "DIA_Vatras_PERMKAP3_15_00"); //Danke für deine Hilfe, das Auge Innos' zu heilen.
	AI_Output			(self, other, "DIA_Vatras_PERMKAP3_05_01"); //Sei nicht so verschwenderisch mit deinem Dank. Deine größte Aufgabe liegt noch vor dir.

	if (MIS_ReadyforChapter4 == FALSE)
	{
		AI_Output			(self, other, "DIA_Vatras_PERMKAP3_05_02"); //Sprich mit Pyrokar, er wird dir alles Weitere erklären.
	};

	AI_Output			(self, other, "DIA_Vatras_PERMKAP3_05_03"); //Ich hoffe, ich sehe dich heil wieder, mein Sohn.

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

	description	 = 	"Lobarts Frau Hilda ist krank.";
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
	AI_Output			(other, self, "DIA_Vatras_HILDAKRANK_15_00"); //Lobarts Frau Hilda ist krank.
	AI_Output			(self, other, "DIA_Vatras_HILDAKRANK_05_01"); //Was denn? Schon wieder? Die gute Frau sollte ein bisschen mehr Acht auf sich geben.
	AI_Output			(self, other, "DIA_Vatras_HILDAKRANK_05_02"); //Ein harter Winter und sie weilt nicht mehr bei uns. Na schön, ich werde ihr ein fiebersenkendes Mittel geben.
	AI_Output			(self, other, "DIA_Vatras_HILDAKRANK_05_03"); //Ach, weißt du, da du gerade schon einmal da bist, kannst du es ihr auch vorbeibringen.
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

	description	 = 	"Ich trage so ein beklemmendes Gefühl in mir.";
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
	AI_Output			(other, self, "DIA_Vatras_OBSESSION_15_00"); //Ich trage so ein beklemmendes Gefühl in mir.
	AI_Output			(self, other, "DIA_Vatras_OBSESSION_05_01"); //Du siehst auch nicht gesund aus. Du bist dem schwarzen Blick der Suchenden zu lange ausgesetzt gewesen.
	AI_Output			(self, other, "DIA_Vatras_OBSESSION_05_02"); //Ich bin kann nur dein Fleisch heilen, doch deine Seele kann dir nur das Kloster reinigen. Sprich mit Pyrokar. Er wird dir helfen.
};


//#####################################################################
//##
//##
//##							KAPITEL 5
//##
//##
//#####################################################################


// ************************************************************
// 	  				   Ich habe alle Drachen gettet. (Perm Kap 5)
// ************************************************************

INSTANCE DIA_Vatras_AllDragonsDead(C_INFO)
{
	npc			= KDW_439_Vatras;
	nr			= 59;
	condition	= DIA_Vatras_AllDragonsDead_Condition;
	information	= DIA_Vatras_AllDragonsDead_Info;
	description = "Die Drachen werden keinen Schaden mehr anrichten.";
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
	AI_Output (other,self ,"DIA_Vatras_AllDragonsDead_15_00"); //Die Drachen werden keinen Schaden mehr anrichten.
	AI_Output (self ,other,"DIA_Vatras_AllDragonsDead_05_01"); //Ich wusste, dass du heil zurückkehren würdest. Doch die größte Hürde wirst du noch nehmen müssen.
	AI_Output (other,self ,"DIA_Vatras_AllDragonsDead_15_02"); //Ich weiß.
	AI_Output (self ,other,"DIA_Vatras_AllDragonsDead_05_03"); //Dann rüste dich gut und komm zu mir, wenn du Hilfe brauchst. Trage das Auge Innos immer bei dir, hörst du? Adanos segne dich.
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
	description	 = 	"Ich kenne den Standort unseres Feindes.";
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
	AI_Output			(other, self, "DIA_Vatras_KnowWhereEnemy_15_00"); //Ich kenne den Standort unseres Feindes.
	AI_Output			(self, other, "DIA_Vatras_KnowWhereEnemy_05_01"); //Dann lass uns keine Zeit verlieren und ihn aufsuchen, bevor er zu uns kommt.
	AI_Output			(other, self, "DIA_Vatras_KnowWhereEnemy_15_02"); //Du willst mich begleiten?
	AI_Output			(self, other, "DIA_Vatras_KnowWhereEnemy_05_03"); //Ich habe lange darüber nachgedacht und bin mir meiner Sache noch nie so sicher gewesen, mein Freund.
		
	Log_CreateTopic (TOPIC_Crew, LOG_MISSION);                                                                                        	                    	
	Log_SetTopicStatus(TOPIC_Crew, LOG_RUNNING); 	                                                                                  	                    	
	B_LogEntry (TOPIC_Crew,"Vatras hat überraschend angeboten mich auf meiner Reise zu begleiten. Ein Mann mit seiner Erfahrung und seinen Fähigkeiten könnte sehr wertvoll für mein Unternehmen sein.");	
		
	if (crewmember_count >= Max_Crew)
	{
		AI_Output			(other,self , "DIA_Vatras_KnowWhereEnemy_15_04"); //Ich habe schon zu viel auf meiner Liste. Ich fürchte, ich habe keinen Platz mehr für dich.
		AI_Output			(self, other, "DIA_Vatras_KnowWhereEnemy_05_05"); //Dann schaffe Platz. Du wirst mich brauchen.
	}
	else 
	{
		Info_ClearChoices (DIA_Vatras_KnowWhereEnemy);
		Info_AddChoice (DIA_Vatras_KnowWhereEnemy,"Ich werde mir das noch mal überlegen.",DIA_Vatras_KnowWhereEnemy_No);
		Info_AddChoice (DIA_Vatras_KnowWhereEnemy,"Es ist mir eine Ehre, dich an meiner Seite zu wissen.",DIA_Vatras_KnowWhereEnemy_Yes);
	};
};

FUNC VOID DIA_Vatras_KnowWhereEnemy_Yes ()
{
	AI_Output (other,self ,"DIA_Vatras_KnowWhereEnemy_Yes_15_00"); //Es ist mir eine Ehre, dich an meiner Seite zu wissen. Wir werden uns im Hafen treffen.
	AI_Output (self ,other,"DIA_Vatras_KnowWhereEnemy_Yes_05_01"); //Lass dir nicht zuviel Zeit. Der Feind schläft nicht, mein Freund.
	
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

	// ------ Zuhrer weg -------
	B_Vatras_GeheWeg (lang);
	
	Info_ClearChoices (DIA_Vatras_KnowWhereEnemy);
};

FUNC VOID DIA_Vatras_KnowWhereEnemy_No ()
{
	AI_Output (other,self ,"DIA_Vatras_KnowWhereEnemy_No_15_00"); //Ich werde mir das noch mal überlegen.
	AI_Output (self ,other,"DIA_Vatras_KnowWhereEnemy_No_05_01"); //Wie du willst. Komm zu mir zurück, wenn dein Sinn sich wandelt.

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
	description	 = 	"Du bleibst besser hier. Die Stadt braucht dich.";
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
	AI_Output			(other, self, "DIA_Vatras_LeaveMyShip_15_00"); //Du bleibst besser hier. Die Stadt braucht dich.
	AI_Output			(self, other, "DIA_Vatras_LeaveMyShip_05_01"); //Vielleicht hast du Recht. Und trotzdem ich werde dich begleiten, wenn du es wünschst. Das weißt du.
	
	Vatras_IsOnBoard	 = LOG_OBSOLETE;				//Log_Obsolete ->der Sc kann ihn wiederholen, Log_Failed ->hat die Schnauze voll, kommt nicht mehr mit! 
	crewmember_Count = (Crewmember_Count -1);
	
	Npc_ExchangeRoutine (self,"Beten"); 
};

///////////////////////////////////////////////////////////////////////
//	Ich habs mir berlegt!
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_StillNeedYou		(C_INFO)
{
	npc			 = 	KDW_439_Vatras;
	nr			 = 	55;
	condition	 = 	DIA_Vatras_StillNeedYou_Condition;
	information	 = 	DIA_Vatras_StillNeedYou_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"Begleite mich zur Insel des Feindes.";
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
	AI_Output	(other, self, "DIA_Vatras_StillNeedYou_15_00"); //Begleite mich zur Insel des Feindes.
	AI_Output	(self, other, "DIA_Vatras_StillNeedYou_05_01"); //Eine weise Entscheidung. Ich hoffe, es bleibt jetzt dabei.
		
	self.flags 		 = NPC_FLAG_IMMORTAL;
	Vatras_IsOnBoard	 = LOG_SUCCESS;
	crewmember_Count = (Crewmember_Count +1);

	// ------ Zuhrer weg -------
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


