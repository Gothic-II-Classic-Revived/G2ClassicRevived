///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Gorax_Kap1_EXIT   (C_INFO)
{
	npc         = KDF_508_Gorax;
	nr          = 999;
	condition   = DIA_Gorax_Kap1_EXIT_Condition;
	information = DIA_Gorax_KAp1_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Gorax_Kap1_EXIT_Condition()
{
	if (Kapitel == 1)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Gorax_Kap1_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Gorax_PICKPOCKET (C_INFO)
{
	npc			= KDF_508_Gorax;
	nr			= 888;
	condition	= DIA_Gorax_PICKPOCKET_Condition;
	information	= DIA_Gorax_PICKPOCKET_Info;
	permanent	= TRUE;
	description = "(Es wäre schwierig seinen Schlüssel zu stehlen)";
};                       

FUNC INT DIA_Gorax_PICKPOCKET_Condition()
{
	if (self.aivar[AIV_PlayerHasPickedMyPocket] == FALSE)
	&& (Npc_GetTalentSkill (other,NPC_TALENT_PICKPOCKET) == TRUE)
	&& (other.attribute[ATR_DEXTERITY] >= (80 - TheftDiff))
	{
		return 1;
	};
};
FUNC VOID DIA_Gorax_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Gorax_PICKPOCKET);
	Info_AddChoice		(DIA_Gorax_PICKPOCKET, DIALOG_BACK 		,DIA_Gorax_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Gorax_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Gorax_PICKPOCKET_DoIt);
};

func void DIA_Gorax_PICKPOCKET_DoIt()
{
	if (other.attribute[ATR_DEXTERITY] >= 80)
	{
		CreateInvItems (self,ItKe_KlosterSchatz,1);
		B_GiveInvItems (self, other, ItKe_KlosterSchatz, 1);
		self.aivar[AIV_PlayerHasPickedMyPocket] = TRUE;
		B_GiveThiefXP ();	
		Info_ClearChoices (DIA_Gorax_PICKPOCKET);
	}
	else
	{
		B_ResetThiefLevel();
		AI_StopProcessInfos	(self);
		B_Attack (self, other, AR_Theft, 1); //reagiert trotz IGNORE_Theft mit NEWS
	};
};
	
func void DIA_Gorax_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Gorax_PICKPOCKET);
};
///////////////////////////////////////////////////////////////////////
//	Info HELP
///////////////////////////////////////////////////////////////////////
instance DIA_Gorax_HELP		(C_INFO)
{
	npc			 = 	KDF_508_Gorax;
	nr			 = 	2;
	condition	 = 	DIA_Gorax_HELP_Condition;
	information	 = 	DIA_Gorax_HELP_Info;
	permanent	 =  FALSE;
	important	 = 	TRUE;
};
func int DIA_Gorax_HELP_Condition ()
{
	if Npc_IsInState (self, ZS_Talk)
	{
		return TRUE;
	};
};
func void DIA_Gorax_HELP_Info ()
{
	AI_Output (self, other, "DIA_Gorax_HELP_14_00"); //Kann ich dir behilflich sein?
};
///////////////////////////////////////////////////////////////////////
//	Info GOLD
///////////////////////////////////////////////////////////////////////
instance DIA_Gorax_GOLD		(C_INFO)
{
	npc			 = 	KDF_508_Gorax;
	nr			 =  2;
	condition	 = 	DIA_Gorax_GOLD_Condition;
	information	 = 	DIA_Gorax_GOLD_Info;
	permanent	 = 	TRUE;
	description	 = 	"Ich hab einen Haufen Gold mitgebracht";
};
//-----------------------------------
var int DIA_Gorax_GOLD_perm;
//-----------------------------------
func int DIA_Gorax_GOLD_Condition ()
{	
	if (other.guild == GIL_NOV)
	&& (DIA_Gorax_GOLD_perm == FALSE) 
	&& (MiltenORPedro_LostInnosStatue_Daron == FALSE)//ADDON
	{
		return TRUE;
	};
};
func void DIA_Gorax_GOLD_Info ()
{
	AI_Output (other, self, "DIA_Gorax_GOLD_15_00"); //Ich hab einen Haufen Gold mitgebracht
	
	if (Npc_HasItems (other, ItMi_Gold) >= Summe_Kloster)
	{
		AI_Output (self, other, "DIA_Gorax_GOLD_14_01"); //(freudige Erwartung) Ah - du bringst mir deine Gabe für Innos. So ist es recht, mein Sohn.
		AI_Output (self, other, "DIA_Gorax_GOLD_14_02"); //Ich werde deine Gabe für das Wohl des Klosters einsetzen, so wie es Innos gefällt.
	
		DIA_Gorax_GOLD_perm = TRUE; //WICHTIG
		B_GiveInvItems (other, self, ItMi_Gold, Summe_Kloster);
	}
	else
	{
		AI_Output (self, other, "DIA_Gorax_Orlan_14_02"); //Was hast du mit dem Gold gemacht? Hast du es ausgegeben? Hol es und komm wieder!
	};
	
};

///////////////////////////////////////////////////////////////////////
//	Info DaronsStatue
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Gorax_DaronsStatue		(C_INFO)
{
	npc		 = 	KDF_508_Gorax;
	nr		 = 	2;
	condition	 = 	DIA_Addon_Gorax_DaronsStatue_Condition;
	information	 = 	DIA_Addon_Gorax_DaronsStatue_Info;
	permanent	 = 	TRUE;

	description	 = 	"Ich habe hier die Statuette, die Daron ins Kloster bringen sollte.";
};

func int DIA_Addon_Gorax_DaronsStatue_Condition ()
{
	if (MiltenORPedro_LostInnosStatue_Daron == FALSE)
	&& (MIS_Addon_Daron_GetStatue == LOG_RUNNING)
	&& (DIA_Gorax_GOLD_perm == FALSE)
	&& ((NOV_Aufnahme == TRUE) || (MiltenNW_GivesMonasteryKey == TRUE))
	{
		return TRUE;
	};
};

func void DIA_Addon_Gorax_DaronsStatue_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Gorax_DaronsStatue_15_00"); //Ich habe hier die Statuette, die Daron zum Kloster bringen sollte.
	
	if (Npc_HasItems (other,ItMi_LostInnosStatue_Daron))
	{
		if (other.guild == GIL_NOV)
		{
			AI_Output	(self, other, "DIA_Addon_Gorax_DaronsStatue_14_01"); //(seufz) Es ist schon sehr beschämend, dass ein solch wertvolles Stück von einem Novizenanwärter seinen Weg zu uns findet.
			AI_Output	(self, other, "DIA_Addon_Gorax_DaronsStatue_14_02"); //Nichtsdestotrotz zeugt das von deiner Entschlossenheit, Innos zu dienen.
		
			AI_Output	(self, other, "DIA_Addon_Gorax_DaronsStatue_14_03"); //Sei dir meines Dankes gewiss, junger Novize.
		};

		//-----------PATCH M.F.----------------------
		if B_GiveInvItems (other, self, ItMi_LostInnosStatue_Daron,1)
		{
			Npc_RemoveInvItems (self, ItMi_LostInnosStatue_Daron,1);
		};
		
		MIS_Addon_Daron_GetStatue = LOG_SUCCESS;
		B_GivePlayerXP (XP_Addon_ReturnedLostInnosStatue_Daron);
		B_LogEntry (TOPIC_Revived_DaronStatuette, "Ich habe die Statuette Gorax zurückgegeben. Ich sollte zu Daron zurückkehren, um ihm die gute Nachricht zu überbringen."); 
		Log_SetTopicStatus(TOPIC_Revived_DaronStatuette, LOG_SUCCESS);
		DIA_Gorax_GOLD_perm = TRUE; //WICHTIG
	}
	else
	{
		AI_Output	(self, other, "DIA_Addon_Gorax_DaronsStatue_14_04"); //Statuette? Ich sehe keine Statuette. Bring sie mir, dann glaube ich dir deine kleine Geschichte.
	};
};

///////////////////////////////////////////////////////////////////////
//	Info SLEEP
///////////////////////////////////////////////////////////////////////
instance DIA_Gorax_SLEEP		(C_INFO)
{
	npc			 = 	KDF_508_Gorax;
	nr			 =  4;
	condition	 = 	DIA_Gorax_SLEEP_Condition;
	information	 = 	DIA_Gorax_SLEEP_Info;
	description	 = 	"Ich suche einen Platz zum Schlafen.";
};
func int DIA_Gorax_SLEEP_Condition ()
{
	if (DIA_Gorax_GOLD_perm == TRUE)
	&& (other.guild == GIL_NOV) 
	{
		return TRUE;
	};
};
func void DIA_Gorax_SLEEP_Info ()
{
	AI_Output (other, self, "DIA_Gorax_SLEEP_15_00"); //Ich suche einen Platz zum Schlafen.
	AI_Output (self, other, "DIA_Gorax_SLEEP_14_01"); //Direkt nebenan ist noch ein Bett frei. Das erste auf der rechten Seite, neben dem Eingang. Dort kannst du schlafen.
	AI_Output (self, other, "DIA_Gorax_SLEEP_14_02"); //Deine Habseligkeiten kannst du in einer der unbenutzten Truhen verstauen.
	AI_Output (self, other, "DIA_Gorax_SLEEP_14_03"); //Und denk daran - in den Schlafräumen der Magier hast du nichts zu suchen. Ebenso ist es dir nicht gestattet, die Bibliothek zu betreten, solange du keine Erlaubnis dafür besitzt.
};
///////////////////////////////////////////////////////////////////////
//	Info Aufgabe
///////////////////////////////////////////////////////////////////////
instance DIA_Gorax_Aufgabe		(C_INFO)
{
	npc			 = 	KDF_508_Gorax;
	nr			 =  3;
	condition	 = 	DIA_Gorax_Aufgabe_Condition;
	information	 = 	DIA_Gorax_Aufgabe_Info;
	permanent	 =  FALSE;
	description	 = 	"Hast du eine Aufgabe für mich?";
};
func int DIA_Gorax_Aufgabe_Condition ()
{
	if (MIS_KlosterArbeit == LOG_RUNNING)
	{
		return TRUE;
	};
};
func void DIA_Gorax_Aufgabe_Info ()
{
	AI_Output (other, self, "DIA_Gorax_Aufgabe_15_00"); //Hast du eine Aufgabe für mich?
	AI_Output (self, other, "DIA_Gorax_Aufgabe_14_01"); //Ihr Novizen habt in den letzten Tagen viel gearbeitet. Und wer viel arbeitet, soll auch essen.
	AI_Output (self, other, "DIA_Gorax_Aufgabe_14_02"); //Ich gebe dir den Schlüssel zur Vorratskammer. Dort findest du Schafswürste. Verteile diese an die Novizen - aber verteile sie gerecht!
	AI_Output (self, other, "DIA_Gorax_Aufgabe_14_03"); //Wenn du das getan hast, darfst du dich wieder bei mir melden.
	 
	CreateInvItems (self, ItKe_KlosterStore,1); 
	B_GiveInvItems (self, other, ItKe_KlosterStore,1);
	MIS_GoraxEssen = LOG_RUNNING; 
	
	Log_CreateTopic (Topic_GoraxEssen,LOG_MISSION);
	Log_SetTopicStatus (Topic_GoraxEssen,LOG_RUNNING);
	B_LogEntry (Topic_GoraxEssen,"Meister Gorax wünscht, das ich die Schafswürste aus der Vorratskammer gerecht unter allen Novizen aufteile. Außer mir sind noch dreizehn weitere Novizen im Kloster.");
};
///////////////////////////////////////////////////////////////////////
//	Info Würste verteilt
///////////////////////////////////////////////////////////////////////
instance DIA_Gorax_Wurst		(C_INFO)
{
	npc			 = 	KDF_508_Gorax;
	nr			 =  2;
	condition	 = 	DIA_Gorax_Wurst_Condition;
	information	 = 	DIA_Gorax_Wurst_Info;
	permanent	 =  TRUE;
	description	 = 	"Ich habe die Würste verteilt. (Aufgabe beenden)";
};
func int DIA_Gorax_Wurst_Condition ()
{
	if (MIS_GoraxEssen == LOG_RUNNING)
	&& (Mob_HasItems ("WURSTTRUHE",ItFo_SchafsWurst) == 0)
	{
		return TRUE;
	};
};
func void DIA_Gorax_Wurst_Info ()
{
	AI_Output (other, self, "DIA_Gorax_Wurst_15_00"); //Ich habe die Würste verteilt.
	
	if (Wurst_Gegeben >= 13)
	{
		AI_Output (self, other, "DIA_Gorax_Wurst_14_01"); //Und du hast es gerecht getan. Nimm diese Spruchrollen der Heilung - und verrichte weiterhin deine Arbeiten.
		
		MIS_GoraxEssen = LOG_SUCCESS; 
		B_GivePlayerXP (XP_GoraxEssen);
		B_GiveInvItems (self, other, ItSc_LightHeal,2);
	}
	else 
	{
		AI_Output (self, other, "DIA_Gorax_Wurst_14_02"); //Ach ja? Dann bist du bei deiner Aufgabe aber nicht sehr gründlich gewesen.
		AI_Output (self, other, "DIA_Gorax_Wurst_14_03"); //Also entweder hast du die Würste selber gegessen oder hast irgendjemandem mehr gegeben.
		AI_Output (self, other, "DIA_Gorax_Wurst_14_04"); //Hör zu, weil du neu bist - und nur, weil du neu bist, lass ich dir das durchgehen. Merk dir das, Novize!
		
		MIS_GoraxEssen = LOG_FAILED; 
	};
};
///////////////////////////////////////////////////////////////////////
//	Info Aufgabe 2
///////////////////////////////////////////////////////////////////////
instance DIA_Gorax_Aufgabe2		(C_INFO)
{
	npc			 = 	KDF_508_Gorax;
	nr			 =  3;
	condition	 = 	DIA_Gorax_Aufgabe2_Condition;
	information	 = 	DIA_Gorax_Aufgabe2_Info;
	permanent	 =  FALSE;
	description	 = 	"Hast du noch eine Aufgabe für mich?";
};
func int DIA_Gorax_Aufgabe2_Condition ()
{
	if ((MIS_GoraxEssen == LOG_SUCCESS)
	|| (MIS_GoraxEssen == LOG_FAILED))
	&& (Npc_IsDead (Orlan) == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Gorax_Aufgabe2_Info ()
{
	AI_Output (other, self, "DIA_Gorax_Aufgabe2_15_00"); //Hast du noch eine Aufgabe für mich?
	AI_Output (self, other, "DIA_Gorax_Aufgabe2_14_01"); //Ja. Wie du weißt, keltern wir hier einen hervorragenden Wein, den wir auch verkaufen.
	AI_Output (self, other, "DIA_Gorax_Aufgabe2_14_02"); //Orlan, der Wirt der Herberge 'Zur Toten Harpie', hat eine Lieferung bestellt. Ausgemacht sind 240 Goldstücke für die Flaschen.
	AI_Output (self, other, "DIA_Gorax_Aufgabe2_14_03"); //Bring ihm diese Flaschen - aber lass dich nicht von ihm über's Ohr hauen.
	 
	B_GiveInvItems (self, other, ItFo_Wine,12);
	MIS_GoraxWein = LOG_RUNNING; 
	
	Log_CreateTopic (Topic_GoraxWein,LOG_MISSION);
	Log_SetTopicStatus (Topic_GoraxWein,LOG_RUNNING);
	B_LogEntry (Topic_GoraxWein,"Meister Gorax wünscht, das ich Orlan, dem Wirt der Herberge, eine Lieferung von zwölf Flaschen Wein bringe. Der Preis dafür beträgt 240 Goldstücke.");
};
///////////////////////////////////////////////////////////////////////
//	Info Orlan
///////////////////////////////////////////////////////////////////////
instance DIA_Gorax_Orlan		(C_INFO)
{
	npc			 = 	KDF_508_Gorax;
	nr			 =  3;
	condition	 = 	DIA_Gorax_Orlan_Condition;
	information	 = 	DIA_Gorax_Orlan_Info;
	permanent	 =  TRUE;
	description	 = 	"Ich war bei Orlan.";
};
//----------------------------------
var int DIA_Gorax_Orlan_permanent;
//-----------------------------------
func int DIA_Gorax_Orlan_Condition ()
{
	if (MIS_GoraxWein == LOG_RUNNING)
	&& Npc_KnowsInfo (other, DIA_Orlan_Wein)
	&& (DIA_Gorax_Orlan_permanent == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Gorax_Orlan_Info ()
{
	if (Npc_HasItems (other, ItmI_Gold) >= 100)
	{
		AI_Output (other, self, "DIA_Gorax_Orlan_15_00"); //Ich war bei Orlan.
		AI_Output (self, other, "DIA_Gorax_Orlan_14_01"); //Und, hast du die 240 Goldstück bekommen?
	
		DIA_Gorax_Orlan_permanent = TRUE;
		Info_ClearChoices (DIA_Gorax_Orlan);
	
		Info_AddChoice (DIA_Gorax_Orlan,"Er hat mich über's Ohr gehauen! (100 Gold geben)",DIA_Gorax_Orlan_100);
		Info_AddChoice (DIA_Gorax_Orlan,"Ich habe das Gold bekommen. (240 Gold geben)",DIA_Gorax_Orlan_240);
	}
	else
	{
		AI_Output (self, other, "DIA_Gorax_Orlan_14_02"); //Was hast du mit dem Gold gemacht? Hast du es ausgegeben? Hol es und komm wieder!
		
	};
};
FUNC VOID DIA_Gorax_Orlan_100 ()
{
	AI_Output (other, self, "DIA_Gorax_Orlan_100_15_00"); //Er hat mich über's Ohr gehauen!
	AI_Output (self, other, "DIA_Gorax_Orlan_100_14_01"); //Du hast es ihm billiger verkauft? Oh nein, warum habe ich auch ausgerechnet DICH damit beauftragt?
	AI_Output (self, other, "DIA_Gorax_Orlan_100_14_02"); //Du bist wirklich zu gar nichts zu gebrauchen. Jetzt geh mir aus den Augen!
	
	B_GiveInvItems (other, self, ItMI_Gold, 100);
	
	MIS_GoraxWein = LOG_FAILED;
	 
	Info_ClearChoices (DIA_Gorax_Orlan);
	AI_StopProcessInfos (self);
};
FUNC VOID DIA_Gorax_Orlan_240 ()
{
	AI_Output (other, self, "DIA_Gorax_Orlan_240_15_00"); //Ich habe das Gold bekommen.
	
	if B_GiveInvItems (other, self, ItMI_Gold, 240)	
	{
		AI_Output (self, other, "DIA_Gorax_Orlan_240_14_01"); //Ausgezeichnet. Du bist zu gebrauchen. Nimm diese Spruchrolle der Heilung als Belohnung. Und nun geh und widme dich anderen Arbeiten.
		MIS_GoraxWein = LOG_SUCCESS;
		B_GivePlayerXP (XP_Goraxwein);			
	}
	else
	{
		AI_Output (self, other, "DIA_Gorax_Orlan_240_14_02"); //Aber einen Teil des Goldes hast du wohl schon ausgegeben, wie? Du bist zu nichts zu gebrauchen - jetzt verschwinde!
		MIS_GoraxWein = LOG_FAILED; 
		B_GiveInvItems (other, self, ItMI_Gold, Npc_HasItems (other, ItmI_Gold));
	};
	
	Info_ClearChoices (DIA_Gorax_Orlan);
};
///////////////////////////////////////////////////////////////////////
//	Info JOB
///////////////////////////////////////////////////////////////////////
instance DIA_Gorax_JOB		(C_INFO)
{
	npc			 = 	KDF_508_Gorax;
	nr			 =  35;
	condition	 = 	DIA_Gorax_JOB_Condition;
	information	 = 	DIA_Gorax_JOB_Info;
	permanent	 =  FALSE;
	description	 = 	"Was machst du hier?";
};
func int DIA_Gorax_JOB_Condition ()
{
	return TRUE;
};
func void DIA_Gorax_JOB_Info ()
{
	AI_Output (other, self, "DIA_Gorax_JOB_15_00"); //Was ist deine Aufgabe hier?
	AI_Output (self, other, "DIA_Gorax_JOB_14_01"); //Meine Aufgaben sind sehr vielseitig. Ich führe nicht nur das Amt des Verwalters, sondern auch das des Schatzmeisters.
	AI_Output (self, other, "DIA_Gorax_JOB_14_02"); //Zudem organisiere ich die Weinkellerei und überwache die Vorräte des Klosters.
	AI_Output (self, other, "DIA_Gorax_JOB_14_03"); //Also, wenn du etwas benötigst, bei mir kannst du dich mit allem versorgen - natürlich nur gegen eine angemessene Spende.
	
	Log_CreateTopic (Topic_KlosterTrader,LOG_NOTE);
	B_LogEntry (Topic_KlosterTrader,"Meister Gorax kann mich im Kloster mit allem versorgen, was ich benötige.");
};
///////////////////////////////////////////////////////////////////////
//	Info TRADE
///////////////////////////////////////////////////////////////////////
instance DIA_Gorax_TRADE		(C_INFO)
{
	npc			 = 	KDF_508_Gorax;
	nr			 =  99;
	condition	 = 	DIA_Gorax_TRADE_Condition;
	information	 = 	DIA_Gorax_TRADE_Info;
	permanent	 = 	TRUE;
	trade		 =  TRUE;
	description	 = 	"Ich könnte ein paar Sachen gebrauchen";
};
func int DIA_Gorax_TRADE_Condition ()
{
	if Npc_KnowsInfo (hero,DIA_Gorax_JOB)
	{
		return TRUE;
	};
};
func void DIA_Gorax_TRADE_Info ()
{
	B_GiveTradeInv (self);
	AI_Output			(other, self, "DIA_Gorax_TRADE_15_00"); //Ich könnte ein paar Sachen gebrauchen
};
///////////////////////////////////////////////////////////////////////
//	Info SLEEP für KDF
///////////////////////////////////////////////////////////////////////
instance DIA_Gorax_KDF		(C_INFO)
{
	npc			 = 	KDF_508_Gorax;
	nr			 =  5;
	condition	 = 	DIA_Gorax_KDF_Condition;
	information	 = 	DIA_Gorax_KDF_Info;
	permanent 	 =  FALSE;
	description	 = 	"Ich brauche einen neuen Schlafplatz.";
};
func int DIA_Gorax_KDF_Condition ()
{
	if (other.guild == GIL_KDF) 
	{
		return TRUE;
	};
};
func void DIA_Gorax_KDF_Info ()
{
	AI_Output (other, self, "DIA_Gorax_KDF_15_00"); //Ich brauche einen neuen Schlafplatz.
	AI_Output (self, other, "DIA_Gorax_KDF_14_01"); //Hier auf der rechten Seite ist noch ein Gemach frei. Nimm den Schlüssel, du wirst dort alles finden, was du benötigst.
	
	B_GiveInvItems (self, other,ItKe_KDFPlayer,1);
	Wld_InsertItem (ITPO_REVIVED_BOOST_MANA_03,"FP_ITEM_KDFPLAYER");
};
//########################################################################
//##
//##		Kapitel 2
//##
//########################################################################

///////////////////////////////////////////////////////////////////////
//	Info EXIT Kap2 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Gorax_Kap2_EXIT   (C_INFO)
{
	npc         = KDF_508_Gorax;
	nr          = 999;
	condition   = DIA_Gorax_Kap2_EXIT_Condition;
	information = DIA_Gorax_Kap2_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Gorax_Kap2_EXIT_Condition()
{
	if (kapitel == 2)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Gorax_Kap2_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//########################################################################
//##
//##		Kapitel 3
//##
//########################################################################

///////////////////////////////////////////////////////////////////////
//	Info EXIT Kap3
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Gorax_Kap3_EXIT   (C_INFO)
{
	npc         = KDF_508_Gorax;
	nr          = 999;
	condition   = DIA_Gorax_Kap3_EXIT_Condition;
	information = DIA_Gorax_Kap3_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Gorax_Kap3_EXIT_Condition()
{
	if (kapitel == 3)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Gorax_Kap3_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info KillPedro
///////////////////////////////////////////////////////////////////////
instance DIA_Gorax_KILLPEDRO		(C_INFO)
{
	npc		 = 	KDF_508_Gorax;
	nr		 = 	3;
	condition	 = 	DIA_Gorax_KILLPEDRO_Condition;
	information	 = 	DIA_Gorax_KILLPEDRO_Info;
	important	 = 	TRUE;
};

func int DIA_Gorax_KILLPEDRO_Condition ()
{
	if (Pedro_Traitor == TRUE)
	&& ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG))
		{
				return TRUE;
		};
};

func void DIA_Gorax_KILLPEDRO_Info ()
{
	AI_Output			(self, other, "DIA_Gorax_KILLPEDRO_14_00"); //Halte ein, Söldner. Ich hab mit dir zu reden.
	AI_Output			(other, self, "DIA_Gorax_KILLPEDRO_15_01"); //Was willst du?
	AI_Output			(self, other, "DIA_Gorax_KILLPEDRO_14_02"); //Es ist eine höchst delikate Situation hier im Kloster.
	AI_Output			(self, other, "DIA_Gorax_KILLPEDRO_14_03"); //Jeder scheint hier momentan jedem zu misstrauen. Und dann noch dieser Vorfall mit Pedro, das ist äußerst ... (schluckt)
	AI_Output			(self, other, "DIA_Gorax_KILLPEDRO_14_04"); //Ich habe einen Auftrag von höchster Stelle für dich. Du bist kein Mitglied der Gemeinschaft des Feuers und bist deshalb der einzige hier, der diese Angelegenheit für uns regeln kann.
	AI_Output			(self, other, "DIA_Gorax_KILLPEDRO_14_05"); //Aber ich muss dich warnen. Wenn ich dir diesen Auftrag erteile, hast du ihn auch auszuführen. Du wirst keine Wahl haben, wenn du weißt, worum es geht, verstanden?
	
	Info_ClearChoices	(DIA_Gorax_KILLPEDRO);
	Info_AddChoice	(DIA_Gorax_KILLPEDRO, "Vergiss es. Das ist mir zu riskant.", DIA_Gorax_KILLPEDRO_nein );
	Info_AddChoice	(DIA_Gorax_KILLPEDRO, "Sag mir, was du willst.", DIA_Gorax_KILLPEDRO_ja );
};
func void DIA_Gorax_KILLPEDRO_nein ()
{
	AI_Output			(other, self, "DIA_Gorax_KILLPEDRO_nein_15_00"); //Vergiss es. Das ist mir zu riskant.
	AI_Output			(self, other, "DIA_Gorax_KILLPEDRO_nein_14_01"); //Gut. Dann habe ich nichts gesagt.
	AI_StopProcessInfos (self);
};

func void DIA_Gorax_KILLPEDRO_ja ()
{
	AI_Output			(other, self, "DIA_Gorax_KILLPEDRO_ja_15_00"); //Sag mir, was du willst.
	AI_Output			(self, other, "DIA_Gorax_KILLPEDRO_ja_14_01"); //Gut. Dann höre genau zu, denn ich sage es nur ein einziges Mal.
	AI_Output			(self, other, "DIA_Gorax_KILLPEDRO_ja_14_02"); //Serpentes will, dass du Pedro für seinen Verrat tötest, wenn er dir in die Hände fällt.
	AI_Output			(self, other, "DIA_Gorax_KILLPEDRO_ja_14_03"); //Bezahlung erhältst du, sobald der Auftrag erledigt ist.
	AI_Output			(self, other, "DIA_Gorax_KILLPEDRO_ja_14_04"); //Das habe ich nicht gesagt. Und du hast auch nichts gehört, verstanden?

 	B_LogEntry (TOPIC_TraitorPedro, "Gorax verriet mir, dass Serpentes will, dass ich Pedro für seinen Verrat töte, wenn Pedro mir in die Hände fällt.");
	
	B_GivePlayerXP (XP_Gorax_KILLPEDRO_GotMission);
	MIS_Gorax_KillPedro = LOG_RUNNING;
	AI_StopProcessInfos (self);
};

//########################################################################
//##
//##		Kapitel 4
//##
//########################################################################

///////////////////////////////////////////////////////////////////////
//	Info EXIT Kap4 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Gorax_Kap4_EXIT   (C_INFO)
{
	npc         = KDF_508_Gorax;
	nr          = 999;
	condition   = DIA_Gorax_Kap4_EXIT_Condition;
	information = DIA_Gorax_Kap4_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Gorax_Kap4_EXIT_Condition()
{
	if (kapitel == 4)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Gorax_Kap4_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
//########################################################################
//##
//##		Kapitel 5
//##
//########################################################################

///////////////////////////////////////////////////////////////////////
//	Info EXIT Kap5
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Gorax_Kap5_EXIT   (C_INFO)
{
	npc         = KDF_508_Gorax;
	nr          = 999;
	condition   = DIA_Gorax_Kap5_EXIT_Condition;
	information = DIA_Gorax_Kap5_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Gorax_Kap5_EXIT_Condition()
{
	if (kapitel == 5)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Gorax_Kap5_EXIT_Info()
{
	AI_StopProcessInfos (self);
};




 






























