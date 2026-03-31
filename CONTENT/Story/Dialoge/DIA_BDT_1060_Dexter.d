// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Dexter_EXIT   (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 999;
	condition   = DIA_Dexter_EXIT_Condition;
	information = DIA_Dexter_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Dexter_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Dexter_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
// ************************************************************
// 			  Hallo
// ************************************************************
INSTANCE DIA_Dexter_Hallo   (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 1;
	condition   = DIA_Dexter_Hallo_Condition;
	information = DIA_Dexter_Hallo_Info;
	permanent   = FALSE;
	important 	= TRUE;
};
FUNC INT DIA_Dexter_Hallo_Condition()
{	
	if (Knows_Dexter == TRUE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Dexter_Hallo_Info()
{
	AI_Output (self, other, "DIA_Dexter_Hallo_09_00");//Sieh an, wer da ist. Der groﬂe Befreier. Na du Held - was suchst du hier?
	//AI_Output (other, self, "DIA_Dexter_Hallo_15_01");//I'm looking for a few answers.
	
	if (MIS_Steckbriefe == LOG_RUNNING)//ADDON
	{
		AI_Output (other, self, "DIA_Dexter_Hallo_15_02");//Irgendjemand verteilt Zettel mit meinem Gesicht drauf. Irgendjemand meint, dass du das w‰rst.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_03");//Irgendjemand redet zuviel.
		
		AI_Output (self, other, "DIA_Addon_Dexter_Hallo_09_04");//Aber du hast Recht. Ich habe die Steckbriefe verteilt. Und siehe da, du bist hier.
		
		MIS_Steckbriefe = LOG_SUCCESS;
		B_GivePlayerXP (XP_Ambient);
	}
	else // (Bdt13_Dexter_verraten == TRUE) //Gothic2
	{
		//ADDON>
		AI_Output (self, other, "DIA_Addon_Dexter_Hallo_09_00");//Ich hatte nicht damit gerechnet, dass du freiwillig hierher kommst.
		AI_Output (other, self, "DIA_Addon_Dexter_Hallo_15_01");//Was soll das heiﬂen?
		AI_Output (self, other, "DIA_Addon_Dexter_Hallo_09_02");//Das soll heiﬂen, dass ich dich hab suchen lassen. Noch keinen von meinen Steckbriefen gesehen?
		AI_Output (self, other, "DIA_Addon_Dexter_Hallo_09_03");//DEINE Visage ist da drauf. Ja ... du bist ein begehrter Mann. Hast du das nicht gewusst?
		//ADDON<
	};

	AI_Output (other, self, "DIA_Addon_Dexter_Hallo_15_05");//Was willst du denn von mir?
	AI_Output (self, other, "DIA_Addon_Dexter_Hallo_09_06");//Ich? Gar nichts. Aber mein Boss, der ist ganz heiﬂ drauf, dich zu tˆten.
	AI_Output (self, other, "DIA_Addon_Dexter_Hallo_09_07");//Deswegen soll ich dich finden und deinen Kopf zu ihm bringen.
};

///////////////////////////////////////////////////////////////////////
//	Info Boss
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Dexter_Boss		(C_INFO)
{
	npc		 = 	BDT_1060_Dexter;
	nr		 = 	3;
	condition	 = 	DIA_Addon_Dexter_Boss_Condition;
	information	 = 	DIA_Addon_Dexter_Boss_Info;

	description	 = 	"Dein Boss? Wer soll das sein?";
};

func int DIA_Addon_Dexter_Boss_Condition ()
{
	if (Npc_KnowsInfo (other,DIA_Dexter_Hallo) == TRUE)
	{
		return TRUE;
	};
};

func void DIA_Addon_Dexter_Boss_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Dexter_Boss_15_00"); //Dein Boss? Wer soll das sein?
	AI_Output	(self, other, "DIA_Addon_Dexter_Boss_09_01"); //(lacht) Das mˆchtest du gerne wissen, was? Ja, das kann ich mir vorstellen.
	//AI_Output	(self, other, "DIA_Addon_Dexter_Boss_09_02"); //(serious) I don't see any reason why I should tell you.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_04");//Aber es stimmt. Ich habe meinen Jungs die Steckbriefe gegeben. Ich hatte keine andere Wahl.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_05");//Als ich versuchte, aus dem Minental zu entfliehen, entdeckten mich die Soldaten und trieben mich in eine Falle.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_06");//Ich dachte, ich w‰re erledigt, aber dann tauchte plˆtzlich diese Ö Gestalt aus der Dunkelheit auf.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_07");//Er trug eine schwarze Robe mit Kapuze und eine Maske ¸berm Gesicht. Und er sprach mit einer Stimme, die alles andere als menschlich war.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_08");//Aber er bot mir seine Hilfe an. Er brachte mich aus dem Tal und bot mir eintausend Goldst¸cke f¸r deinen Kopf.
		AI_Output (self, other, "DIA_Dexter_Hallo_09_09");//Hey, was h‰tte ich denn tun sollen? Wenn ich ihn abgewiesen h‰tte, h‰tte er mich umgebracht.

		B_LogEntry (Topic_Bandits,"Dexter hat die Steckbriefe verteilt. Typen mit schwarzen Kapuzen hatten ihm das befohlen.");
};


// ************************************************************
// 			Wo
// ************************************************************
INSTANCE DIA_Dexter_Wo   (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 3;
	condition   = DIA_Dexter_Wo_Condition;
	information = DIA_Dexter_Wo_Info;
	permanent   = FALSE;
	description = "Wo finde ich diesen Mann?";
};
FUNC INT DIA_Dexter_Wo_Condition()
{	
	if (Npc_KnowsInfo (other,DIA_Addon_Dexter_Boss) == TRUE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Dexter_Wo_Info()
{
	AI_Output (other, self, "DIA_Dexter_Wo_15_00");//Wo finde ich diesen Mann?
	
	if (Kapitel < 3)
	{
		AI_Output (self, other, "DIA_Dexter_Wo_09_01");//Ich glaube, der sitzt irgendwo im Minental.
	}
	else
	{
		AI_Output (self, other, "DIA_Dexter_Wo_09_02");//Der Typ ist hier! Und er ist nicht allein. Da ist eine ganze Horde dieser Jungs unterwegs, ¸berall! Und sie suchen dich.
		
		Wld_InsertNpc		(CastlemineDMT01, "FP_STAND_DEMENTOR_DEXTER_001");
		Wld_InsertNpc		(CastlemineDMT02, "FP_STAND_DEMENTOR_DEXTER_002");
		Wld_InsertNpc		(CastlemineDMT03, "FP_STAND_DEMENTOR_DEXTER_003");
		Wld_InsertNpc		(CastlemineDMT04, "FP_STAND_DEMENTOR_DEXTER_004");
	};
};

// ************************************************************
// 			Glaube 
// ************************************************************
INSTANCE DIA_Dexter_Glaube   (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 5;
	condition   = DIA_Dexter_Glaube_Condition;
	information = DIA_Dexter_Glaube_Info;
	permanent   = FALSE;
	description = "Ich glaube dir kein Wort.";
};
FUNC INT DIA_Dexter_Glaube_Condition()
{	
	if (Npc_KnowsInfo (other, DIA_Dexter_Wo) == TRUE)
	&& (Kapitel < 3)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Dexter_Glaube_Info()
{
	AI_Output (other, self, "DIA_Dexter_Glaube_15_00");//Ich glaube dir kein Wort.
	AI_Output (self, other, "DIA_Dexter_Glaube_09_01");//Hey, es ist wahr. Ich schwˆre beim Grab meiner Mutter!
};

// ************************************************************
// 			Vor 
// ************************************************************
INSTANCE DIA_Dexter_Vor   (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 5;
	condition   = DIA_Dexter_Vor_Condition;
	information = DIA_Dexter_Vor_Info;
	permanent   = FALSE;
	description = "Und was hast du jetzt vor?";
};
FUNC INT DIA_Dexter_Vor_Condition()
{	
	if (Npc_KnowsInfo (other,DIA_Addon_Dexter_Boss) == TRUE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Dexter_Vor_Info()
{
	AI_Output (other, self, "DIA_Dexter_Vor_15_00");//Und was hast du jetzt vor?
	AI_Output (self, other, "DIA_Dexter_Vor_09_01");//Ja. Aber du hast uns alle befreit. Deshalb gebe ich dir noch eine Chance. Hau ab - verschwinde, mach dich unsichtbar. Geh und lauf mir nie wieder ¸bern Weg.
	AI_Output (self, other, "DIA_Addon_Dexter_Vor_09_02");//(droht) Es ist besser f¸r dich, wenn du jetzt gehst.
	AI_Output (self, other, "DIA_Dexter_Vor_09_02");//L‰sst du dich hier noch mal blicken, werde nicht zˆgern, dich zu tˆten.
	Dexter_NoMoreSmallTalk = TRUE;
	AI_StopProcessInfos (self);
};
// ************************************************************
// 			Kill
// ************************************************************
INSTANCE DIA_Dexter_Kill   (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 2;
	condition   = DIA_Dexter_Kill_Condition;
	information = DIA_Dexter_Kill_Info;
	permanent   = FALSE;
	important	= TRUE;
};
FUNC INT DIA_Dexter_Kill_Condition()
{	
	if Npc_IsInState (self, ZS_Talk)
	&& ((Dexter_NoMoreSmallTalk == TRUE)
	|| (Knows_Dexter == FALSE)) 
	{
		return TRUE;
	};
};
FUNC VOID DIA_Dexter_Kill_Info()
{
	if (Knows_Dexter == TRUE)
	{
		AI_Output (self, other, "DIA_Addon_Dexter_Add_09_02"); //(greift an) Du hast es nicht anders gewollt...
	}
	else
	{
		AI_Output (self, other, "DIA_Dexter_Kill_09_01");//Oh Mann, du w‰rst hier besser nicht aufgetaucht. Du bist der falsche Mann am falschen Ort.
	};
	
	MIS_Steckbriefe = LOG_OBSOLETE;
	B_CheckLog();
	Info_ClearChoices	(DIA_Dexter_Kill);
	Info_AddChoice	(DIA_Dexter_Kill, DIALOG_ENDE, DIA_Dexter_Kill_ENDE );
};
func void DIA_Dexter_Kill_ENDE ()
{
	AI_StopProcessInfos (self);
	B_Attack (self, other, AR_SuddenEnemyInferno, 1);
};


// ************************************************************
// 			Mein Kopf? 
// ************************************************************
INSTANCE DIA_Dexter_Kopf (C_INFO)
{
	npc         = BDT_1060_Dexter;
	nr          = 5;
	condition   = DIA_Dexter_Kopf_Condition;
	information = DIA_Dexter_Kopf_Info;
	permanent   = FALSE;
	description = "Du willst meinen Kopf? Komm und hol ihn dir!";
};
FUNC INT DIA_Dexter_Kopf_Condition()
{	
	if (Npc_KnowsInfo (other, DIA_Dexter_Vor))
	{
		return TRUE;
	};
};
FUNC VOID DIA_Dexter_Kopf_Info()
{
	AI_Output (other, self, "DIA_Addon_Dexter_Add_15_00"); //Du willst meinen Kopf? Komm und hol ihn dir!
	AI_Output (self, other, "DIA_Addon_Dexter_Add_09_01"); //(greift an) Ganz wie du willst...

	DIA_Dexter_Kill_ENDE();
};


// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Dexter_PICKPOCKET (C_INFO)
{
	npc			= BDT_1060_Dexter;
	nr			= 900;
	condition	= DIA_Dexter_PICKPOCKET_Condition;
	information	= DIA_Dexter_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_100;
};                       

FUNC INT DIA_Dexter_PICKPOCKET_Condition()
{
	C_Beklauen (96, 370);
};
 
FUNC VOID DIA_Dexter_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Dexter_PICKPOCKET);
	Info_AddChoice		(DIA_Dexter_PICKPOCKET, DIALOG_BACK 		,DIA_Dexter_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Dexter_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Dexter_PICKPOCKET_DoIt);
};

func void DIA_Dexter_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Dexter_PICKPOCKET);
};
	
func void DIA_Dexter_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Dexter_PICKPOCKET);
};



