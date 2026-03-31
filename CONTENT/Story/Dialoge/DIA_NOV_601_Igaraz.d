//**************************************************************************
//	Info EXIT 
//**************************************************************************
INSTANCE DIA_Igaranz_Kap1_EXIT   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 999;
	condition   = DIA_Igaraz_Kap1_EXIT_Condition;
	information = DIA_Igaraz_Kap1_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Igaraz_Kap1_EXIT_Condition ()
{
	if (kapitel == 1)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_Kap1_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
//**************************************************************************
//	ABSCHNITT 1  IM KLOSTER, SPIELER IST NOVIZE 
//**************************************************************************

//**************************************************************************
//	Info Hello
//**************************************************************************
INSTANCE DIA_Igaranz_Hello   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 2;
	condition   = DIA_Igaraz_Hello_Condition;
	information = DIA_Igaraz_Hello_Info;
	permanent   = FALSE;
	important	= TRUE;
};
FUNC INT DIA_Igaraz_Hello_Condition()
{
	if (Npc_IsInState (self, ZS_Talk))
	&& (self.aivar[AIV_TalkedToPlayer] == FALSE)
	&& (KNOWS_FIRE_CONTEST == FALSE)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_Hello_Info()
{
	if (other.guild == GIL_NOV)
	{
		AI_Output (self ,other,"DIA_Igaranz_Hello_13_00"); //Was kann ich für dich tun, Bruder?
	}
	else
	{
		AI_Output (self ,other,"DIA_Igaranz_Hello_13_01"); //Was kann ich für dich tun?
	};	
};
// *************************************************************************
// 							Wurst verteilen
// *************************************************************************
INSTANCE DIA_Igaraz_Wurst(C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr			= 2;
	condition	= DIA_Igaraz_Wurst_Condition;
	information	= DIA_Igaraz_Wurst_Info;
	permanent	= FALSE;
	description = "Ich verteile gerade Würste.";
};                       

FUNC INT DIA_Igaraz_Wurst_Condition()
{
	if (Kapitel == 1)
	&& (MIS_GoraxEssen == LOG_RUNNING)
	&& (Npc_HasItems (self, ItFo_SchafsWurst ) == 0)
	&& (Npc_HasItems (other, ItFo_SchafsWurst ) >= 1)
	{
		return TRUE;
	};
};

FUNC VOID DIA_Igaraz_Wurst_Info()
{	
	AI_Output (other, self, "DIA_Igaraz_Wurst_15_00"); //Ich verteile gerade Würste.
	AI_Output (self, other, "DIA_Igaraz_Wurst_13_01"); //So, dann arbeitest du für Gorax, was? Nun, dann gib mal her die Wurst.
	
	B_GiveInvItems (other, self, ItFo_SchafsWurst, 1);
	Wurst_Gegeben = (Wurst_Gegeben +1);
	
	CreateInvItems (self, ITFO_Sausage,1);
	B_UseItem (self, ITFO_Sausage);
	
	var string NovizeText;
	var string NovizeLeft;
	NovizeLeft = IntToString (13 - Wurst_Gegeben);
	NovizeText = ConcatStrings(NovizeLeft, PRINT_NovizenLeft);
	AI_PrintScreen	(NovizeText, -1, YPOS_GOLDGIVEN, FONT_ScreenSmall, 2);
};
///////////////////////////////////////////////////////////////////////
//Wieso arbeitest Du nicht?
///////////////////////////////////////////////////////////////////////	
INSTANCE DIA_Igaranz_NotWork   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 3;
	condition   = DIA_Igaraz_NotWork_Condition;
	information = DIA_Igaraz_NotWork_Info;
	permanent   = FALSE;
	description	= "Warum arbeitest du nicht?";
};
FUNC INT DIA_Igaraz_NotWork_Condition()
{	
	if (Npc_GetDistToWP (self, "NW_MONASTERY_GRASS_01") <= 500)
	&& (KNOWS_FIRE_CONTEST == FALSE)
	&& (other.guild == GIL_NOV)
	{
			return TRUE;	
	};
};
FUNC VOID DIA_Igaraz_NotWork_Info()
{
	AI_Output (other,self ,"DIA_Igaranz_NotWork_15_00"); //Warum arbeitest du nicht?
	AI_Output (self ,other,"DIA_Igaranz_NotWork_13_01"); //Es ist mir gestattet, die Lehren Innos' zu studieren. Ich suche die Weisheit in seinen Worten.
	AI_Output (self ,other,"DIA_Igaranz_NotWork_13_02"); //Eines Tages wird er mich erwählen - und dann werde ich die Prüfung der Magie bestehen und in den Kreis des Feuers eintreten.
};
///////////////////////////////////////////////////////////////////////
//Wer sind die Erwählten?
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Igaranz_Choosen   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 2;
	condition   = DIA_Igaraz_Choosen_Condition;
	information = DIA_Igaraz_Choosen_Info;
	permanent   = TRUE;
	description	= "Wer sind die Erwählten?";
};

FUNC INT DIA_Igaraz_Choosen_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Igaranz_NotWork))
	&& (Npc_GetDistToWP (self, "NW_MONASTERY_GRASS_01") <= 500)
	&& (KNOWS_FIRE_CONTEST == FALSE)
	&& (hero.guild == GIL_NOV)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_Choosen_Info()
{
	AI_Output (other,self ,"DIA_Igaranz_Choosen_15_00"); //Wer sind die Erwählten?
	AI_Output (self ,other,"DIA_Igaranz_Choosen_13_01"); //Die Novizen, die Innos dazu bestimmt hat, die Prüfung der Magie abzulegen.
	AI_Output (self ,other,"DIA_Igaranz_Choosen_13_02"); //Derjenige, der sie besteht, wird in die Reihen der Feuermagier aufgenommen.
	
	Info_ClearChoices (DIA_Igaranz_Choosen);
	Info_AddChoice 	(DIA_Igaranz_Choosen,Dialog_Back,DIA_Igaranz_Choosen_back);
	Info_AddChoice	(DIA_Igaranz_Choosen,"Was ist die Prüfung der Magie?",DIA_Igaranz_Choosen_TestOfMagic);
	Info_AddChoice	(DIA_Igaranz_Choosen,"Wie werde ich erwählt?",DIA_Igaranz_Choosen_HowChoosen);
};	

FUNC VOID DIA_Igaranz_Choosen_back ()
{
	Info_ClearChoices (DIA_Igaranz_Choosen);
};

FUNC VOID DIA_Igaranz_Choosen_TestOfMagic ()
{
	AI_Output (other,self ,"DIA_Igaranz_Choosen_TestOfMagic_15_00"); //Was ist die Prüfung der Magie?
	AI_Output (self ,other,"DIA_Igaranz_Choosen_TestOfMagic_13_01"); //Eine Prüfung, die allen erwählten Novizen vom hohen Rat verkündet wird.
	AI_Output (self ,other,"DIA_Igaranz_Choosen_TestOfMagic_13_02"); //Es ist eine Aufgabe, bei der Glaube und Klugheit auf die Probe gestellt werden.
	AI_Output (self ,other,"DIA_Igaranz_Choosen_TestOfMagic_13_03"); //Alle erwählten Novizen nehmen daran teil - aber nur einem ist es möglich, sie erfolgreich abzulegen.
};

FUNC VOID DIA_Igaranz_Choosen_HowChoosen ()
{
	AI_Output (other,self ,"DIA_Igaranz_Choosen_HowChoosen_15_00"); //Wie werde ich erwählt?
	AI_Output (self ,other,"DIA_Igaranz_Choosen_HowChoosen_13_01"); //Darauf hast du keinen Einfluss. Innos alleine wählt seine Novizen, und der hohe Rat verkündet seinen Willen.
};
///////////////////////////////////////////////////////////////////////
//	Erzähl mir was über Innos Lehren
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Igaranz_StudyInnos   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 2;
	condition   = DIA_Igaraz_StudyInnos_Condition;
	information = DIA_Igaraz_StudyInnos_Info;
	permanent   = FALSE;
	description	= "Wie kann ich die Schriften studieren?";
};

FUNC INT DIA_Igaraz_StudyInnos_Condition()
{
	if Npc_KnowsInfo (other,DIA_Igaranz_NotWork)
	&& (Npc_GetDistToWP (self, "NW_MONASTERY_GRASS_01") <= 500)
	&& (Parlan_Erlaubnis == FALSE)
	&& (other.guild == GIL_NOV)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_StudyInnos_Info()
{
	AI_Output (other,self ,"DIA_Igaranz_StudyInnos_15_00"); //Wie kann ich die Schriften studieren?
	AI_Output (self ,other,"DIA_Igaranz_StudyInnos_13_01"); //Du musst Zugang zur Bibliothek bekommen.
	AI_Output (self ,other,"DIA_Igaranz_StudyInnos_13_02"); //Doch Meister Parlan wird dir nur den Schlüssel geben, wenn du vorher deine Pflichten erledigt hast.
};
//**************************************************************************
//	ABSCHNITT 2  DIE PRÜFUNG DER MAGIE 
//**************************************************************************
///////////////////////////////////////////////////////////////////////
//	Info CHOOSEN
///////////////////////////////////////////////////////////////////////
instance DIA_Igaraz_IMTHEMAN		(C_INFO)
{
	npc			 = 	Nov_601_Igaraz;
	nr			 = 	2;
	condition	 = 	DIA_Igaraz_IMTHEMAN_Condition;
	information	 = 	DIA_Igaraz_IMTHEMAN_Info;
	important	 = 	TRUE;
};
func int DIA_Igaraz_IMTHEMAN_Condition ()
{	
	if (Npc_GetDistToWP (self, "NW_TAVERNE_TROLLAREA_05") <= 3500) 
	&& (Npc_IsInState 	(self, ZS_Talk))
	&& (other.guild == GIL_NOV) 
	{
		return TRUE;
	};
};
func void DIA_Igaraz_IMTHEMAN_Info ()
{
	AI_Output (self, other, "DIA_Igaraz_IMTHEMAN_13_00"); //(stolz) Es ist geschehen. Innos hat mich erwählt und ich nehme teil an der Prüfung der Magie.
};
///////////////////////////////////////////////////////////////////////
//	Info METOO
///////////////////////////////////////////////////////////////////////
instance DIA_Igaraz_METOO		(C_INFO)
{
	npc			 = 	Nov_601_Igaraz;
	nr			 = 	19;
	condition	 = 	DIA_Igaraz_METOO_Condition;
	information	 = 	DIA_Igaraz_METOO_Info;
	permanent	 =  FALSE;
	description	 = 	"Ich bin mit von der Partie...";
};
var int DIA_Igaraz_METOO_NOPERM ;

func int DIA_Igaraz_METOO_Condition ()
{	
	if (Npc_GetDistToWP (self, "NW_TAVERNE_TROLLAREA_05") <= 3500)
	//&&  Npc_KnowsInfo (hero,DIA_Igaraz_IMTHEMAN)
	&& (other.guild == GIL_NOV)
	{
		return TRUE;
	};
};
func void DIA_Igaraz_METOO_Info ()
{
	AI_Output (other, self, "DIA_Igaraz_METOO_15_00"); //Ich bin mit von der Partie - ich habe die Prüfung des Feuers gefordert.
	AI_Output (self, other, "DIA_Igaraz_METOO_13_01"); //Du hast WAS getan? Also entweder bist du ein Liebling von Innos oder völlig verrückt.
	AI_Output (other, self, "DIA_Igaraz_METOO_15_02"); //Ich habe schon 'ne Menge verrückter Sachen gemacht, dann werde ich das wohl auch schaffen ...
	AI_Output (self, other, "DIA_Igaraz_METOO_13_03"); //Innos hält seine Hand über mich - deshalb werde ich diese Prüfung bestehen.
	

	Info_ClearChoices	 (DIA_Igaraz_METOO);
	Info_AddChoice 		 (DIA_Igaraz_METOO,DIALOG_BACK,DIA_Igaraz_METOO_BACK);
	Info_AddChoice 		 (DIA_Igaraz_METOO,"Vielleicht können wir zusammenarbeiten...",DIA_Igaraz_METOO_HELP);
	Info_AddChoice 		 (DIA_Igaraz_METOO,"Und, schon was rausgefunden?",DIA_Igaraz_METOO_TELL);
	Info_AddChoice 		 (DIA_Igaraz_METOO,"Hast du Agon oder Ulf gesehen?",DIA_Igaraz_METOO_AGON);
};
FUNC VOID DIA_Igaraz_METOO_BACK()
{
	Info_ClearChoices	 (DIA_Igaraz_METOO);
};
FUNC VOID DIA_Igaraz_METOO_TELL ()
{
	AI_Output (other, self, "DIA_Igaraz_METOO_TELL_15_00"); //Und, schon was herausgefunden?
	AI_Output (self, other, "DIA_Igaraz_METOO_TELL_13_01"); //Da du es sowieso nicht schaffen wirst, kann ich es dir auch sagen:
	AI_Output (self, other, "DIA_Igaraz_METOO_TELL_13_02"); //Spare dir deine Suche bei den Bauernhöfen - dort gibt es nichts, was dich weiterbringt.
};
FUNC VOID DIA_Igaraz_METOO_HELP ()
{
	AI_Output (other, self, "DIA_Igaraz_METOO_HELP_15_00"); //Vielleicht können wir zusammenarbeiten...
	AI_Output (self, other, "DIA_Igaraz_METOO_HELP_13_01"); //Vergiss es. Diese Mission werde ich alleine schaffen. Du wärst mir nur ein Klotz am Bein.
};
FUNC VOID DIA_Igaraz_METOO_AGON ()
{
	AI_Output (other, self, "DIA_Igaraz_METOO_AGON_15_00"); //Hast du Agon oder Ulf gesehen?
	AI_Output (self, other, "DIA_Igaraz_METOO_AGON_13_01"); //Wir haben uns an der Herberge getrennt. Ich bin zu den Bauernhöfen gegangen und die beiden sind zusammen losgezogen - aber wohin, weiß ich nicht.
};
///////////////////////////////////////////////////////////////////////
//	Info ADD
///////////////////////////////////////////////////////////////////////
instance DIA_Igaraz_ADD		(C_INFO)
{
	npc			 = 	Nov_601_Igaraz;
	nr			 = 	23;
	condition	 = 	DIA_Igaraz_ADD_Condition;
	information	 = 	DIA_Igaraz_ADD_Info;
	permanent	 =  FALSE;
	description	 = 	"Weißt du etwas von einem 'lebenden Fels'?";
};
func int DIA_Igaraz_ADD_Condition ()
{	
	if (Npc_GetDistToWP (self, "NW_TAVERNE_TROLLAREA_05") <= 3500) 
	&& (MIS_GOLEM == LOG_RUNNING) 
	&& (Npc_IsDead (Magic_Golem) == FALSE)
	&& (Npc_KnowsInfo (other,DIA_Igaraz_Stein) == FALSE)
	&& Npc_KnowsInfo (other,DIA_Igaraz_METOO)
	{
		return TRUE;
	};
};
func void DIA_Igaraz_ADD_Info ()
{
	AI_Output (other, self, "DIA_Igaraz_Add_15_00"); //Weißt du etwas von einem 'lebenden Fels'?
	AI_Output (self, other, "DIA_Igaraz_Add_13_01"); //(lacht hämisch) Nein! Hat dir Serpentes diese Prüfung gegeben?
	AI_Output (other, self, "DIA_Igaraz_Add_15_02"); //Ja, warum?
	AI_Output (self, other, "DIA_Igaraz_Add_13_03"); //Ich könnte mir vorstellen, was er meint...
	AI_Output (self, other, "DIA_Igaraz_Add_13_04"); //Du wärst nicht der erste, der an dieser Prüfung gescheitert ist...
	AI_Output (other, self, "DIA_Igaraz_Add_15_05"); //Wo genau finde ich diesen lebenden Fels?
	AI_Output (self, other, "DIA_Igaraz_Add_13_06"); //Folge einfach immer diesem Weg. Es ist ein ganzes Stück, dann kommst du an einem Fluß vorbei.
	AI_Output (self, other, "DIA_Igaraz_Add_13_07"); //Geh einfach den Weg weiter den Berg hoch. Da oben muß es irgendwo sein.
	AI_Output (self, other, "DIA_Igaraz_Add_13_08"); //Wenn du über eine Brücke kommst, bist du zu weit.
	AI_Output (self, other, "DIA_Igaraz_Add_13_09"); //(lacht) WENN Du überhaupt soweit kommst...
	AI_Output (self, other, "DIA_Igaraz_Add_13_10"); //Mehr werde ich dir nicht verraten... (ironisch) schließlich ist es deine Prüfung...
};
///////////////////////////////////////////////////////////////////////
//	Info Perm Prüfung 
///////////////////////////////////////////////////////////////////////
instance DIA_Igaraz_Pruefung		(C_INFO)
{
	npc			 = 	Nov_601_Igaraz;
	nr			 = 	22;
	condition	 = 	DIA_Igaraz_Pruefung_Condition;
	information	 = 	DIA_Igaraz_Pruefung_Info;
	description	 =  "Hast du was Neues rausgefunden?";
};
func int DIA_Igaraz_Pruefung_Condition ()
{	
	if (other.guild == GIL_NOV) 
	&& (Npc_HasItems (other, ItMi_Runeblank) < 1)
	&& (Npc_KnowsInfo (other,DIA_Igaraz_METOO))
	{
		return TRUE;
	};
};
func void DIA_Igaraz_Pruefung_Info ()
{
	AI_Output (other, self, "DIA_Igaraz_Pruefung_15_00"); //Hast du was Neues rausgefunden?
	AI_Output (self, other, "DIA_Igaraz_Pruefung_13_01"); //Bisher noch nicht, aber ich suche weiter.
	
	AI_StopProcessInfos (self); 
	
	if (Igaraz_Wait == FALSE) 
	{
		AI_StopProcessInfos (self);
		Npc_ExchangeRoutine (self,"CONTESTWAIT");
		Igaraz_Wait = TRUE;
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info Stein
///////////////////////////////////////////////////////////////////////
instance DIA_Igaraz_Stein		(C_INFO)
{
	npc			 = 	Nov_601_Igaraz;
	nr			 = 	1;
	condition	 = 	DIA_Igaraz_Stein_Condition;
	information	 = 	DIA_Igaraz_Stein_Info;
	important	 = 	TRUE;
	permanent 	 =  FALSE; 
};
func int DIA_Igaraz_Stein_Condition ()
{	
	if (Npc_GetDistToWP (self, "NW_TAVERNE_TROLLAREA_66") <= 3500) 
	&& (other.guild == GIL_NOV) 
	&& (Npc_HasItems (other, ItMi_Runeblank) >= 1)
	{
		return TRUE;
	};
};
func void DIA_Igaraz_Stein_Info ()
{
	AI_Output (self, other, "DIA_Igaraz_Seufz_13_00"); //Hey, warte mal. Wir müssen reden ...
	AI_Output (other, self, "DIA_Igaraz_Seufz_15_01"); //Das glaube ich jetzt nicht ...
	AI_Output (self, other, "DIA_Igaraz_Seufz_13_02"); //Ich habe jahrelang auf diese Prüfung gewartet. Innos ist bei mir und ich MUSS diese Prüfung bestehen.
	
	if Npc_KnowsInfo (other, DIA_Ulf_Abrechnung)
	{
		AI_Output (other, self, "DIA_Igaraz_Seufz_15_03"); //Das kommt mir bekannt vor.
	}
	else
	{
		AI_Output (other, self, "DIA_Igaraz_Seufz_15_04"); //Da bist du nicht der Einzige.
	};
	AI_Output (self, other, "DIA_Igaraz_Seufz_13_05"); //Genug gequatscht. Ich brauche das, was du gefunden hast. Also, Zeit für dich, zu sterben!
	
	
	AI_StopProcessInfos (self);
	B_Attack (self, other, AR_KILL,0);
};


//################################################
//##
//##	Kapitel 2
//##
//################################################

//**************************************************************************
//	Info EXIT 
//**************************************************************************
INSTANCE DIA_Igaranz_Kap2_EXIT   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 999;
	condition   = DIA_Igaraz_Kap2_EXIT_Condition;
	information = DIA_Igaraz_Kap2_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Igaraz_Kap2_EXIT_Condition()
{
	if (kapitel == 2)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_Kap2_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//################################################
//##
//##	Kapitel 3
//##
//################################################

//**************************************************************************
//	Info EXIT 
//**************************************************************************
INSTANCE DIA_Igaranz_Kap3_EXIT   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 999;
	condition   = DIA_Igaraz_Kap3_EXIT_Condition;
	information = DIA_Igaraz_Kap3_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Igaraz_Kap3_EXIT_Condition()
{
	if (kapitel == 3)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_Kap3_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//**************************************************************************
//	Info TalkAboutBabo
//**************************************************************************
INSTANCE DIA_Igaranz_TalkAboutBabo   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 31;
	condition   = DIA_Igaraz_TalkAboutBabo_Condition;
	information = DIA_Igaraz_TalkAboutBabo_Info;
	permanent   = FALSE;
	description = "Wir müssen uns mal über Babo unterhalten.";
};
FUNC INT DIA_Igaraz_TalkAboutBabo_Condition()
{
	if (MIS_BabosDocs == LOG_RUNNING)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_TalkAboutBabo_Info()
{
	AI_Output (other,self ,"DIA_Igaranz_TalkAboutBabo_15_00"); //Wir müssen uns mal über Babo unterhalten.
	AI_Output (self ,other,"DIA_Igaranz_TalkAboutBabo_13_01"); //(reserviert) Ja, was ist denn los?
};

//**************************************************************************
//	Du hast etwas was Babo gehört
//**************************************************************************
INSTANCE DIA_Igaranz_BabosBelongings   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 31;
	condition   = DIA_Igaraz_BabosBelongings_Condition;
	information = DIA_Igaraz_BabosBelongings_Info;
	permanent   = FALSE;
	description = "Du hast etwas, was Babo gehört.";
};
FUNC INT DIA_Igaraz_BabosBelongings_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Igaranz_TalkAboutBabo))
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_BabosBelongings_Info()
{
	AI_Output (other,self ,"DIA_Igaranz_BabosBelongings_15_00"); //Du hast etwas, was Babo gehört.
	AI_Output (self ,other,"DIA_Igaranz_BabosBelongings_13_01"); //Was soll das sein?
	AI_Output (other,self ,"DIA_Igaranz_BabosBelongings_15_02"); //Ein paar Papiere und Babo hätte sie gerne zurück.
	AI_Output (self ,other,"DIA_Igaranz_BabosBelongings_13_03"); //(spöttisch) So, hätte er das. Das kann ich mir denken. Leider würde ich sie gerne behalten, was uns irgendwie in eine Zwickmühle bringt.
};

//**************************************************************************
//	Wo hast du die Papiere?
//**************************************************************************
INSTANCE DIA_Igaranz_WhereDocs   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 31;
	condition   = DIA_Igaraz_WhereDocs_Condition;
	information = DIA_Igaraz_WhereDocs_Info;
	permanent   = FALSE;
	description = "Wo hast du die Papiere?";
};
FUNC INT DIA_Igaraz_WhereDocs_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Igaranz_BabosBelongings))
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_WhereDocs_Info()
{
	AI_Output (other,self ,"DIA_Igaranz_WhereDocs_15_00"); //Wo hast du die Papiere?
	AI_Output (self ,other,"DIA_Igaranz_WhereDocs_13_01"); //(selbstgefällig) Nun, ich habe sie natürlich nicht bei mir. Ich fürchte, ich kann dir da nicht weiterhelfen.
	AI_Output (other,self ,"DIA_Igaranz_WhereDocs_15_02"); //Wo sind sie?
	AI_Output (self ,other,"DIA_Igaranz_WhereDocs_13_03"); //Ich habe sie sicher eingeschlossen. Und den Schlüssel wirst du nicht von mir bekommen.
};

//**************************************************************************
//	Was soll Babo für dich tun?
//**************************************************************************
INSTANCE DIA_Igaranz_BabosJob   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 31;
	condition   = DIA_Igaraz_BabosJob_Condition;
	information = DIA_Igaraz_BabosJob_Info;
	permanent   = FALSE;
	description = "Was sollte Babo für dich tun?";
};
FUNC INT DIA_Igaraz_BabosJob_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Igaranz_BabosBelongings))
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_BabosJob_Info()
{
	AI_Output (other,self ,"DIA_Igaranz_BabosJob_15_00"); //Was sollte Babo für dich tun?
	AI_Output (self ,other,"DIA_Igaranz_BabosJob_13_01"); //Wenn ich gewusst hätte, dass ich der Kleine wegen ein paar Sumpfkrautpflanzen gleich in die Hose macht, hätte ich dafür gesorgt, dass jemand anderer den Klostergarten pflegt.
	AI_Output (other,self ,"DIA_Igaranz_BabosJob_15_02"); //Er soll Sumpfkraut anpflanzen?
	AI_Output (self ,other,"DIA_Igaranz_BabosJob_13_03"); //Natürlich. Seitdem kein Zeugs mehr aus der Barriere kommt, ist der Preis in der Stadt um das Dreifache gestiegen.
	AI_Output (self ,other,"DIA_Igaranz_BabosJob_13_04"); //Es wäre für alle Beteiligten ein gutes Geschäft gewesen. Aber Babo wollte nicht mitspielen.
};

//**************************************************************************
//	Wieviel willst du für die Papiere haben?
//**************************************************************************
INSTANCE DIA_Igaranz_Price   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 31;
	condition   = DIA_Igaraz_Price_Condition;
	information = DIA_Igaraz_Price_Info;
	permanent   = FALSE;
	description = "Wieviel willst du für Babos Papiere haben?";
};
FUNC INT DIA_Igaraz_Price_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Igaranz_BabosBelongings))
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_Price_Info()
{
	AI_Output (other,self ,"DIA_Igaranz_Price_15_00"); //Wieviel willst du für Babos Papiere haben?
	AI_Output (self ,other,"DIA_Igaranz_Price_13_01"); //(lacht) Ha, eigentlich sind sie fast nicht zu bezahlen. So was bekommt man hier echt selten zu Gesicht.
	AI_Output (self ,other,"DIA_Igaranz_Price_13_02"); //Aber ich hab keine Lust, wegen so ein paar Goldstücken meine Zukunft aufs Spiel zu setzen.
	AI_Output (self ,other,"DIA_Igaranz_Price_13_03"); //300 Goldstücke und du kannst mit den Papieren machen, was du willst.
};

//**************************************************************************
//	Ich will die Papiere kaufen.
//**************************************************************************
INSTANCE DIA_Igaranz_BuyIt   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 31;
	condition   = DIA_Igaraz_BuyIt_Condition;
	information = DIA_Igaraz_BuyIt_Info;
	permanent   = FALSE;
	description = "Ich will die Papiere kaufen.";
};
FUNC INT DIA_Igaraz_BuyIt_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Igaranz_Price))
	&& (Npc_HasItems (other,ItMi_Gold)>=300)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_BuyIt_Info()
{
	AI_Output (other,self ,"DIA_Igaranz_BuyIt_15_00"); //Ich will die Papiere kaufen.
	AI_Output (self ,other,"DIA_Igaranz_BuyIt_13_01"); //Pass auf, ich kann hier jetzt nicht weg. Ich gebe dir den Schlüssel zu meiner Truhe, da ist sowieso nichts anderes drin.
	
	B_GiveInvItems (other,self,ItMi_Gold,300);
	B_GiveInvItems (self,other,ItKe_IgarazChest_mis,1);
};

//****************************************************
//	Taschendiebstahl
//***************************************************

INSTANCE DIA_Igaraz_PICKPOCKET (C_INFO)
{
	npc			= Nov_601_Igaraz;
	nr			= 900;
	condition	= DIA_Igaraz_PICKPOCKET_Condition;
	information	= DIA_Igaraz_PICKPOCKET_Info;
	permanent	= TRUE;
	description = "(Es wäre einfach seinen Schlüssel zu stehlen)";
};                       

FUNC INT DIA_Igaraz_PICKPOCKET_Condition()
{
	if (MIS_BaBosDocs == LOG_RUNNING) 
	&& (Npc_GetTalentSkill (other,NPC_TALENT_PICKPOCKET) == 1) 
	&& (self.aivar[AIV_PlayerHasPickedMyPocket] == FALSE)
	&& (Npc_HasItems (self, ItKe_IgarazChest_mis) >= 1)
	&& (other.attribute[ATR_DEXTERITY] >= (40 - Theftdiff))
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Igaraz_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Igaraz_PICKPOCKET);
	Info_AddChoice		(DIA_Igaraz_PICKPOCKET, DIALOG_BACK 		,DIA_Igaraz_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Igaraz_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Igaraz_PICKPOCKET_DoIt);
};

func void DIA_Igaraz_PICKPOCKET_DoIt()
{
	if (other.attribute[ATR_DEXTERITY] >= 40)
	{
		B_GiveInvItems (self,other , ItKe_IgarazChest_mis, 1);
		self.aivar[AIV_PlayerHasPickedMyPocket] = TRUE;
		B_GiveThiefXP ();
		Info_ClearChoices (DIA_Igaraz_PICKPOCKET);
	}
	else
	{
		B_ResetThiefLevel();
		AI_StopProcessInfos	(self);
		B_Attack (self, other, AR_Theft, 1); //AR_Theft führt zu NEWS!
	};
};
	
func void DIA_Igaraz_PICKPOCKET_BACK()
{
	Info_ClearChoices	(DIA_Igaraz_PICKPOCKET);
};
	
//################################################
//##
//##	Kapitel 4
//##
//################################################

//**************************************************************************
//	Info EXIT 
//**************************************************************************
INSTANCE DIA_Igaranz_Kap4_EXIT   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 999;
	condition   = DIA_Igaraz_Kap4_EXIT_Condition;
	information = DIA_Igaraz_Kap4_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Igaraz_Kap4_EXIT_Condition()
{
	if (kapitel == 4)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_Kap4_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//################################################
//##
//##	Kapitel 5
//##
//################################################

//**************************************************************************
//	Info EXIT 
//**************************************************************************
INSTANCE DIA_Igaranz_Kap5_EXIT   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 999;
	condition   = DIA_Igaraz_Kap5_EXIT_Condition;
	information = DIA_Igaraz_Kap5_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Igaraz_Kap5_EXIT_Condition()
{
	if (kapitel == 5)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_Kap5_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
//**************************************************************************
//	Info Perm
//**************************************************************************
INSTANCE DIA_Igaranz_Perm   (C_INFO)
{
	npc         = Nov_601_Igaraz;
	nr          = 2;
	condition   = DIA_Igaraz_Perm_Condition;
	information = DIA_Igaraz_Perm_Info;
	permanent   = FALSE;
	description	= "Hast du was interessantes für mich?";
};
FUNC INT DIA_Igaraz_Perm_Condition()
{
	if (Kapitel >= 3)
	&& (other.guild != GIL_KDF)
	&& (MIS_BabosDocs != LOG_RUNNING)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Igaraz_Perm_Info()
{
	AI_Output (other ,self,"DIA_Igaranz_Perm_15_00"); //Hast du was interessantes für mich?
	AI_Output (self ,other,"DIA_Igaranz_Perm_13_01"); //Ähm ... nein.
	
	AI_StopProcessInfos(self); 
		
};




