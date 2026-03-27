///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Addon_Farim_EXIT   (C_INFO)
{
	npc         = VLK_4301_Farim;
	nr          = 999;
	condition   = DIA_Addon_Farim_EXIT_Condition;
	information = DIA_Addon_Farim_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Addon_Farim_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Addon_Farim_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Addon_Farim_PICKPOCKET (C_INFO)
{
	npc			= VLK_4301_Farim;
	nr			= 900;
	condition	= DIA_Addon_Farim_PICKPOCKET_Condition;
	information	= DIA_Addon_Farim_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_20;
};                       

FUNC INT DIA_Addon_Farim_PICKPOCKET_Condition()
{
	C_Beklauen (20, 11);
};
 
FUNC VOID DIA_Addon_Farim_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Addon_Farim_PICKPOCKET);
	Info_AddChoice		(DIA_Addon_Farim_PICKPOCKET, DIALOG_BACK 		,DIA_Addon_Farim_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Addon_Farim_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Addon_Farim_PICKPOCKET_DoIt);
};

func void DIA_Addon_Farim_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Addon_Farim_PICKPOCKET);
};
	
func void DIA_Addon_Farim_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Addon_Farim_PICKPOCKET);
};
///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Farim_Hallo		(C_INFO)
{
	npc		 = 	VLK_4301_Farim;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Farim_Hallo_Condition;
	information	 = 	DIA_Addon_Farim_Hallo_Info;

	description	 = 	"Du bist Fischer?";
};

func int DIA_Addon_Farim_Hallo_Condition ()
{
	return TRUE;
};

func void DIA_Addon_Farim_Hallo_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Farim_Hallo_15_00"); //Du bist Fischer?
	AI_Output	(self, other, "DIA_Addon_Farim_Hallo_11_01"); //(zynisch) Wie hast du das bloß erraten?
	AI_Output	(self, other, "DIA_Addon_Farim_Hallo_11_02"); //Kannst du mich nicht einfach in Ruhe lassen?
	if (hero.guild == GIL_MIL)
	{
		AI_Output (self, other, "DIA_Addon_Farim_Landstreicher_Add_11_02"); //Nimm's mir nicht übel, aber in letzter Zeit bin ich nicht sehr gut auf die Miliz zu sprechen.
	}
	else
	{
		AI_Output (self, other, "DIA_Addon_Farim_Landstreicher_Add_11_03"); //Nimm's mir nicht übel, aber in letzter Zeit bin ich nicht so gut drauf. Ärger mit der Miliz...
	};
};

///////////////////////////////////////////////////////////////////////
//	Info MilizProbs
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Farim_MilizProbs		(C_INFO)
{
	npc		 = 	VLK_4301_Farim;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Farim_MilizProbs_Condition;
	information	 = 	DIA_Addon_Farim_MilizProbs_Info;

	description	 = 	"Ärger mit der Miliz?";
};

func int DIA_Addon_Farim_MilizProbs_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Farim_Hallo))
		{
			return TRUE;
		};
};

func void DIA_Addon_Farim_MilizProbs_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Farim_MilizProbs_15_00"); //Ärger mit der Miliz?
	if (((hero.guild == GIL_MIL)||(hero.guild == GIL_PAL)) == FALSE)
	{
		AI_Output	(self, other, "DIA_Addon_Farim_MilizProbs_11_01"); //Die Mistkerle kommen ständig her und nehmen sich einfach, was sie wollen.
	};
	AI_Output	(self, other, "DIA_Addon_Farim_MilizProbs_11_02"); //Letzte Woche haben sie meinen gesamten Fang mitgenommen. 'Ist für die gute Sache', haben sie gesagt.
	AI_Output	(self, other, "DIA_Addon_Farim_MilizProbs_11_03"); //Ich weiß ja, dass jeder sehen muss, wo er bleibt, seit die Bauern ihren Handel eingestellt haben.
	AI_Output	(self, other, "DIA_Addon_Farim_MilizProbs_11_04"); //Da kommt es schon mal vor, dass der eine oder andere Kohldampf schieben muss. Kein Wunder, dass sie mir den Fisch vor der Nase wegSCHNAPPEN.
	AI_Output	(self, other, "DIA_Addon_Farim_MilizProbs_11_05"); //Aber wenn das so weiter geht, hab ich nicht mal genug, um mich selbst zu ernähren.
	
	Info_ClearChoices	(DIA_Addon_Farim_MilizProbs);
	Info_AddChoice	(DIA_Addon_Farim_MilizProbs, "Gib mir all deine Fische.", DIA_Addon_Farim_MilizProbs_klauen );
	Info_AddChoice	(DIA_Addon_Farim_MilizProbs, "Vielleicht kann ich dir helfen", DIA_Addon_Farim_MilizProbs_helfen );
	Info_AddChoice	(DIA_Addon_Farim_MilizProbs, "Hast du mit den Paladinen schon mal darüber gesprochen?", DIA_Addon_Farim_MilizProbs_paladine );
};
func void DIA_Addon_Farim_MilizProbs_paladine ()
{
	AI_Output			(other, self, "DIA_Addon_Farim_MilizProbs_paladine_15_00"); //Hast du mit den Paladinen schon mal darüber gesprochen?
	AI_Output			(self, other, "DIA_Addon_Farim_MilizProbs_paladine_11_01"); //(lacht) Machst du Witze? Was interessiert das die Kerle, wenn ein armer Schlucker wie ich Probleme mit der Miliz hat?
};
var int Farim_PissedOff;
func void DIA_Addon_Farim_MilizProbs_klauen ()
{
	AI_Output			(other, self, "DIA_Addon_Farim_MilizProbs_klauen_15_00"); //Gib mir all deine Fische.
	AI_Output			(self, other, "DIA_Addon_Farim_MilizProbs_klauen_11_01"); //(böse) Hab ich's doch gewusst. Noch so ein Mistkerl.
	
	if (other.guild == GIL_MIL)
	|| (other.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Addon_Farim_MilizProbs_klauen_11_02"); //Da bist du leider zu spät gekommen. Deine Freunde haben schon gestern alles mitgenommen.
	};
	
	AI_Output			(self, other, "DIA_Addon_Farim_MilizProbs_klauen_11_04"); //Tja. Ich glaube, es ist besser, wenn du jetzt gehst.
	Farim_PissedOff = TRUE;
	Info_ClearChoices	(DIA_Addon_Farim_MilizProbs);
};
func void DIA_Addon_Farim_MilizProbs_helfen ()
{
	AI_Output			(other, self, "DIA_Addon_Farim_MilizProbs_helfen_15_00"); //Vielleicht kann ich dir helfen
	AI_Output			(self, other, "DIA_Addon_Farim_MilizProbs_helfen_11_02"); //Ich weiß nicht. Du müsstest schon jemanden von der Miliz kennen, der 'nen guten Draht zu den Paladinen hat ...
	AI_Output			(self, other, "DIA_Addon_Farim_MilizProbs_helfen_11_03"); //Die Paladine werden mir den Fisch wohl kaum abkaufen.
	AI_Output			(other, self, "DIA_Addon_Farim_MilizProbs_helfen_15_04"); //Ich werde sehen, was ich machen kann.
	Info_ClearChoices	(DIA_Addon_Farim_MilizProbs);
	
	Log_CreateTopic (TOPIC_Addon_FarimsFish, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_FarimsFish, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_FarimsFish,"Farim der Fischer hat ein Problem mit der Miliz. Sie nehmen ihm mehr Fische ab, als er zum Leben braucht. Ich soll jemanden bei der Miliz finden, der Einfluss auf die Paladine hat, der ihm helfen kann."); 
		
	MIS_Addon_Farim_PaladinFisch = LOG_RUNNING;
};

///////////////////////////////////////////////////////////////////////
//	Info MartinHelps
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Farim_MartinHelps		(C_INFO)
{
	npc		 = 	VLK_4301_Farim;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Farim_MartinHelps_Condition;
	information	 = 	DIA_Addon_Farim_MartinHelps_Info;

	description	 = 	"Ich hab die Lösung deiner Milizprobleme.";
};

func int DIA_Addon_Farim_MartinHelps_Condition ()
{
	if (MIS_Addon_Farim_PaladinFisch == LOG_RUNNING)
	&& (Martin_KnowsFarim == TRUE)
		{
			return TRUE;
		};
};

func void DIA_Addon_Farim_MartinHelps_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Farim_MartinHelps_15_00"); //Ich hab die Lösung deiner Milizprobleme.
	AI_Output	(self, other, "DIA_Addon_Farim_MartinHelps_11_01"); //Und wie sieht die aus?

	if (hero.guild == GIL_MIL)||(hero.guild == GIL_PAL)
	{
		AI_Output	(other, self, "DIA_Addon_Farim_MartinHelps_15_02"); //Ich bin einfach zu selten hier, um ständig auf deine Fische aufzupassen.
		AI_Output	(other, self, "DIA_Addon_Farim_MartinHelps_15_03"); //Aber ich habe da jemanden, der das kann.
	};
	
	AI_Output	(other, self, "DIA_Addon_Farim_MartinHelps_15_04"); //Martin, der Proviantmeister der Paladine, will sich deine Geschichte von der Miliz und deinen Fischen anhören.
	AI_Output	(self, other, "DIA_Addon_Farim_MartinHelps_11_05"); //Und du meinst, er kann dafür sorgen, dass mich die anderen der Miliz in Ruhe lassen?
	AI_Output	(other, self, "DIA_Addon_Farim_MartinHelps_15_06"); //Hat er zumindest gesagt.
	AI_Output	(self, other, "DIA_Addon_Farim_MartinHelps_11_07"); //Gut. Ich danke dir. Ich kann dir nicht viel geben. Aber warte ...
	AI_Output	(self, other, "DIA_Addon_Farim_MartinHelps_11_08"); //Ich habe diesen seltsamen blauen Stein auf einer der Inseln vor Khorinis gefunden.
	AI_Output	(self, other, "DIA_Addon_Farim_MartinHelps_11_09"); //Ich glaube zwar nicht, dass er viel wert ist, aber jemand wie du kann ihn sicher gebrauchen.
		
	B_GiveInvItems (self, other, ItMi_Aquamarine, 1);		
	
	MIS_Addon_Farim_PaladinFisch = LOG_SUCCESS;
	B_GivePlayerXP (XP_Addon_Farim_PaladinFisch);
};

///////////////////////////////////////////////////////////////////////
//	Info Perm
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Farim_Perm		(C_INFO)
{
	npc		 = 	VLK_4301_Farim;
	nr		 = 	99;
	condition	 = 	DIA_Addon_Farim_Perm_Condition;
	information	 = 	DIA_Addon_Farim_Perm_Info;
	permanent	 = 	TRUE;

	description	 = 	"Und, wie beissen die Fische?";
};

func int DIA_Addon_Farim_Perm_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Farim_Hallo))
		{
			return TRUE;
		};
};

func void DIA_Addon_Farim_Perm_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Farim_Perm_15_00"); //Und, wie beissen die Fische?

	if (Farim_PissedOff == TRUE)
	{
		AI_Output	(self, other, "DIA_Addon_Farim_Perm_11_01"); //Tu doch nicht so, als ob dich das interessiert.
	}
	else
	{
		AI_Output	(self, other, "DIA_Addon_Farim_Perm_11_02"); //War schon mal besser. Zum Leben zu wenig, zum Sterben zuviel.
	};
};