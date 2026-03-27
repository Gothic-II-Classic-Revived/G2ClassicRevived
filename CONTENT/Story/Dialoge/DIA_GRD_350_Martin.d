///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Addon_Martin_EXIT   (C_INFO)
{
	npc         = GRD_350_Martin;
	nr          = 999;
	condition   = DIA_Addon_Martin_EXIT_Condition;
	information = DIA_Addon_Martin_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Addon_Martin_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Addon_Martin_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Addon_Martin_PICKPOCKET (C_INFO)
{
	npc			= GRD_350_Martin;
	nr			= 900;
	condition	= DIA_Addon_Martin_PICKPOCKET_Condition;
	information	= DIA_Addon_Martin_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_60;
};                       

FUNC INT DIA_Addon_Martin_PICKPOCKET_Condition()
{
	C_Beklauen (65, 77);
};
 
FUNC VOID DIA_Addon_Martin_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Addon_Martin_PICKPOCKET);
	Info_AddChoice		(DIA_Addon_Martin_PICKPOCKET, DIALOG_BACK 		,DIA_Addon_Martin_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Addon_Martin_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Addon_Martin_PICKPOCKET_DoIt);
};

func void DIA_Addon_Martin_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Addon_Martin_PICKPOCKET);
};
	
func void DIA_Addon_Martin_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Addon_Martin_PICKPOCKET);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_Hallo		(C_INFO)
{
	npc		 = 	GRD_350_Martin;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Martin_Hallo_Condition;
	information	 = 	DIA_Addon_Martin_Hallo_Info;
	
	important	 = 	TRUE;
};

func int DIA_Addon_Martin_Hallo_Condition ()
{
	if (Npc_GetDistToWP(self,"NW_CITY_PALCAMP_15")<1000)
	&& (self.aivar[AIV_TalkedToPlayer] == FALSE)
	&& (other.guild != GIL_MIL)
	&& (other.guild != GIL_PAL)
	{
		return TRUE;
	};
};

func void DIA_Addon_Martin_Hallo_Info ()
{
	AI_Output	(self, other, "DIA_Addon_Martin_Hallo_07_00"); //Hey du. Du hast hier oben nichts zu suchen. Hier haben nur Paladine und wir von der Miliz Zutritt.
};


///////////////////////////////////////////////////////////////////////
//	Info WasMachstDu
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_WasMachstDu		(C_INFO)
{
	npc		 = 	GRD_350_Martin;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Martin_WasMachstDu_Condition;
	information	 = 	DIA_Addon_Martin_WasMachstDu_Info;

	description	 = 	"Was gibt es denn hier oben?";
};

func int DIA_Addon_Martin_WasMachstDu_Condition ()
{
	if (Npc_GetDistToWP(self,"NW_CITY_PALCAMP_15")<1000)
		{
			return TRUE;
		};
};

func void DIA_Addon_Martin_WasMachstDu_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Martin_WasMachstDu_15_00"); //Was gibt es denn hier oben?
	AI_Output	(self, other, "DIA_Addon_Martin_WasMachstDu_07_01"); //Du stehst hier im Proviantlager der königlichen Garde der Paladine.
	
	if (other.guild == GIL_NONE)
	{
		AI_Output	(self, other, "DIA_Addon_Martin_WasMachstDu_07_02"); //Ich bin hier der Proviantmeister und verantwortlich für den Paladinkrempel, dass hier nichts abhanden kommt und du bist hier nicht erwünscht.
		AI_Output	(self, other, "DIA_Addon_Martin_WasMachstDu_07_03"); //Also behalte deine Finger bei dir, sonst hack ich sie dir ab.
	};
};

///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_PreTrade		(C_INFO)
{
	npc		 = 	GRD_350_Martin;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Martin_PreTrade_Condition;
	information	 = 	DIA_Addon_Martin_PreTrade_Info;

	description	 = 	"Kannst du mir etwas von dem Paladinkrempel verkaufen?";
};

func int DIA_Addon_Martin_PreTrade_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Martin_WasMachstDu))
		{
			return TRUE;
		};
};

func void DIA_Addon_Martin_PreTrade_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Martin_PreTrade_15_00"); //Kannst du mir etwas von dem Paladinkrempel verkaufen?
	AI_Output	(self, other, "DIA_Addon_Martin_PreTrade_07_01"); //Du willst was kaufen? Mh. Sagen wir mal so, wenn du mich für den Ärger entschädigen kannst, dass den Paladinen mal wieder was abhanden gekommen ist, kommen wir vielleicht ins Geschäft.
	AI_Output	(other, self, "DIA_Addon_Martin_PreTrade_15_02"); //Passiert das öfter, dass etwas abhanden kommt?
	AI_Output	(self, other, "DIA_Addon_Martin_PreTrade_07_03"); //Solange der Proviantmeister sagt, dass es alles seine Richtigkeit hat, nicht.
	AI_Output	(other, self, "DIA_Addon_Martin_PreTrade_15_04"); //Verstehe.
};

///////////////////////////////////////////////////////////////////////
//	Info Farim
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_Farim		(C_INFO)
{
	npc		 = 	GRD_350_Martin;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Martin_Farim_Condition;
	information	 = 	DIA_Addon_Martin_Farim_Info;

	description	 = 	"Der Fischer Farim hat Probleme mit der Miliz.";
};

func int DIA_Addon_Martin_Farim_Condition ()
{
	if (MIS_Addon_Farim_PaladinFisch == LOG_RUNNING)
	&& (Npc_KnowsInfo (other, DIA_Addon_Martin_PreTrade))
		{
			return TRUE;
		};
};

func void DIA_Addon_Martin_Farim_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Martin_Farim_15_00"); //Der Fischer Farim hat Probleme mit der Miliz. Die Jungs bestehlen ihn ständig.
	AI_Output	(self, other, "DIA_Addon_Martin_Farim_07_01"); //Und was habe ich damit zu tun?
	AI_Output	(other, self, "DIA_Addon_Martin_Farim_15_02"); //Du hast einen gewissen Einfluss hier oben bei den Paladinen.
	AI_Output	(other, self, "DIA_Addon_Martin_Farim_15_03"); //Farim benötigt deinen Schutz. Er will dafür auch einen Teil von seinem Fang an dich abgeben.
	AI_Output	(self, other, "DIA_Addon_Martin_Farim_07_04"); //Verstehe, was du meinst.
	AI_Output	(self, other, "DIA_Addon_Martin_Farim_07_05"); //(abfällig) Fische! Als ob ich nicht schon genug Mist verwalten muss.
	AI_Output	(self, other, "DIA_Addon_Martin_Farim_07_06"); //Sag deinem Kumpel, er soll zu mir kommen und erzählen, wie das genau war mit der Miliz.
	AI_Output	(self, other, "DIA_Addon_Martin_Farim_07_07"); //Ich kümmere mich drum.
	
	B_LogEntry (TOPIC_Addon_FarimsFish,	"Martin der Proviantmeister wird sich der Sache annehmen."); 

	Martin_KnowsFarim = TRUE;
	B_GivePlayerXP (XP_Addon_FarimSchutz);
};

///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_Trade		(C_INFO)
{
	npc		 = 	GRD_350_Martin;
	nr		 = 	80;
	condition	 = 	DIA_Addon_Martin_Trade_Condition;
	information	 = 	DIA_Addon_Martin_Trade_Info;
	Trade		 = 	TRUE;
	permanent	 = 	TRUE;

	description	 = 	"Was hast du anzubieten?";
};

func int DIA_Addon_Martin_Trade_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Martin_PreTrade))
		{
			return TRUE;
		};
};
var int DIA_Addon_Martin_Trade_OneTime;
func void DIA_Addon_Martin_Trade_Info ()
{
	if (DIA_Addon_Martin_Trade_OneTime == FALSE)
	{
		Log_CreateTopic	(TOPIC_CityTrader, LOG_NOTE);
		B_LogEntry (TOPIC_CityTrader, LogText_Addon_MartinTrade); 
		DIA_Addon_Martin_Trade_OneTime = TRUE;
	};
	
	
	AI_Output	(other, self, "DIA_Addon_Martin_Trade_15_00"); //Was hast du anzubieten?
	B_GiveTradeInv (self);
	AI_Output	(self, other, "DIA_Addon_Martin_Trade_07_01"); //Dann pass mal auf.
};

// ********************************************************************
// 							Banditen + Waffen
// ********************************************************************
///////////////////////////////////////////////////////////////////////
//	From Vatras
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_FromVatras (C_INFO)
{
	npc		 	= GRD_350_Martin;
	nr		 	= 5;
	condition	= DIA_Addon_Martin_FromVatras_Condition;
	information	= DIA_Addon_Martin_FromVatras_Info;

	description	= "Du suchst den Mann, der an die Banditen Waffen verkauft?";
};
func int DIA_Addon_Martin_FromVatras_Condition ()
{
	if (Vatras_ToMartin == TRUE)
	{
		return TRUE;
	};
};
func void DIA_Addon_Martin_FromVatras_Info ()
{
	AI_Output (other, self, "DIA_Addon_Martin_FromVatras_15_00"); //Du suchst den Mann, der an die Banditen Waffen verkauft?
	AI_Output (self, other, "DIA_Addon_Martin_FromVatras_07_01"); //Sagt wer?
	AI_Output (other, self, "DIA_Addon_Martin_FromVatras_15_02"); //Sagt Vatras.
	AI_Output (self, other, "DIA_Addon_Martin_FromVatras_07_03"); //Oh. Was weißt du denn darüber?
	AI_Output (other, self, "DIA_Addon_Martin_FromVatras_15_04"); //Nicht viel, aber ich könnte mehr herausfinden.
	AI_Output (self, other, "DIA_Addon_Martin_FromVatras_07_05"); //(erkennt) Ach so ist das ...
};	
///////////////////////////////////////////////////////////////////////
//	Tell Me
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_TellAll (C_INFO)
{
	npc		 	= GRD_350_Martin;
	nr		 	= 5;
	condition	= DIA_Addon_Martin_TellAll_Condition;
	information	= DIA_Addon_Martin_TellAll_Info;

	description	= "Sagst du mir, was du über den Waffenhändler weißt?";
};
func int DIA_Addon_Martin_TellAll_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Martin_FromVatras))
	{
		return TRUE;
	};
};
func void DIA_Addon_Martin_TellAll_Info ()
{
	AI_Output (other, self, "DIA_Addon_Martin_TellAll_15_00"); //Sagst du mir, was du über den Waffenhändler weißt?
	AI_Output (self, other, "DIA_Addon_Martin_TellAll_07_01"); //Pass auf. Wir wissen, dass ein einflußreicher Bürger des oberen Viertels dahinter stecken muss.
	AI_Output (self, other, "DIA_Addon_Martin_TellAll_07_02"); //Und einige der Waffen sollen sogar aus den Beständen der Miliz gekommen sein.
	AI_Output (self, other, "DIA_Addon_Martin_TellAll_07_03"); //Aber wer genau dahinter steckt, wissen wir noch nicht.
	AI_Output (self, other, "DIA_Addon_Martin_TellAll_07_04"); //Wenn du genug Mumm in den Knochen hast, eine Gruppe von mindestens fünf Banditen aus dem Weg zu räumen, kannst du's vielleicht rausfinden ...
	B_LogEntry (TOPIC_Addon_BanditTrader,"Laut Martin ist der Waffenhändler ein einflußreicher Bürger des oberen Viertels."); 
};	
///////////////////////////////////////////////////////////////////////
//	About Bandits
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_AboutBandits (C_INFO)
{
	npc		 	= GRD_350_Martin;
	nr		 	= 5;
	condition	= DIA_Addon_Martin_AboutBandits_Condition;
	information	= DIA_Addon_Martin_AboutBandits_Info;

	description	= "Was IST mit den Banditen?";
};
func int DIA_Addon_Martin_AboutBandits_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Martin_TellAll))
	{
		return TRUE;
	};
};
func void DIA_Addon_Martin_AboutBandits_Info ()
{
	AI_Output (other, self, "DIA_Addon_Martin_AboutBandits_15_00"); //Was IST mit den Banditen?
	AI_Output (self, other, "DIA_Addon_Martin_AboutBandits_07_01"); //Wir wissen, dass die Banditen zur Zeit die Verbindungstraßen zwischen den Bauern und der Stadt belagern.
	AI_Output (self, other, "DIA_Addon_Martin_AboutBandits_07_02"); //Außerdem weiß ich, dass es eine Waffenlieferung in den letzten Tagen gegeben haben muss.
	AI_Output (self, other, "DIA_Addon_Martin_AboutBandits_07_03"); //Vielleicht sind dort bei den Banditen Hinweise zu finden, die den Waffenhändler entlarven können.
	//AI_Output (self, other, "DIA_Addon_Martin_AboutBandits_07_04"); //Ich werd sehen, was ich tun kann
	
	MIS_Martin_FindTheBanditTrader = LOG_RUNNING;
	B_LogEntry (TOPIC_Addon_BanditTrader,"Die Banditen belagern die Verbindungsstrassen zwischen der Hafenstadt und den Bauernhöfen. Bei ihnen könnten Hinweise zu finden sein, die den Waffenhändler entlarven."); 
};	

///////////////////////////////////////////////////////////////////////
//	Info Fernando
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_Fernando		(C_INFO)
{
	npc		 = 	GRD_350_Martin;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Martin_Fernando_Condition;
	information	 = 	DIA_Addon_Martin_Fernando_Info;
	permanent	 = 	TRUE;

	description	 = 	"Wegen des Waffenhändlers...";
};

func int DIA_Addon_Martin_Fernando_Condition ()
{
	if (MIs_Martin_FindTheBanditTrader == LOG_RUNNING)
		{
			return TRUE;
		};
};

var int Martin_IrrlichtHint;

func void DIA_Addon_Martin_Fernando_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_00"); //Äh, wegen des Waffenhändlers ...

	if 	(Npc_HasItems (other,ItMw_Addon_BanditTrader))
	||(Npc_HasItems (other,ItRi_Addon_BanditTrader))
	||((Npc_HasItems (other,ItWr_Addon_BanditTrader))&&(BanditTrader_Lieferung_Gelesen == TRUE))
	||(Fernando_HatsZugegeben == TRUE)
	{
		AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_01"); //Zeig mir deine Ware
	
		var int FernandoHints;
		FernandoHints = 0;
		
		if 	(
			(Npc_HasItems (other,ItMw_Addon_BanditTrader))
			||(Npc_HasItems (other,ItRi_Addon_BanditTrader))
			||((Npc_HasItems (other,ItWr_Addon_BanditTrader))&&(BanditTrader_Lieferung_Gelesen == TRUE))
			)
			{
				
				if (Npc_HasItems (other,ItMw_Addon_BanditTrader))
				{
					AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_02"); //Diesen Degen habe bei den Banditen gefunden. Der Buchstabe 'F' ist in den Knauf geritzt.
					FernandoHints = (FernandoHints + 1);
				};
				if (Npc_HasItems (other,ItRi_Addon_BanditTrader))
				{
					AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_03"); //Den Ring hier, hatte ein Bandit bei sich. Er deutet auf einen Überseehändler hin.
					FernandoHints = (FernandoHints + 1);
				};
				if ((Npc_HasItems (other,ItWr_Addon_BanditTrader))&&(BanditTrader_Lieferung_Gelesen == TRUE))
				{
					AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_04"); //Diese Liste, der Lieferung von Waffen und anderen Dingen an die Banditen hier, trägt die Unterschrift von einem gewissen Fernando.
					FernandoHints = (FernandoHints + 3);
				};
			
				if (Fernando_HatsZugegeben == TRUE)
				{
					AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_05"); //Außerdem hat Fernando, der alte Händler aus dem oberen Viertel, zugegeben, mit den Banditen Geschäfte gemacht zu haben.
					FernandoHints = (FernandoHints + 1);
				};
			}
			else
			{
				AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_06"); //Fernando hat zugegeben, die Banditen mit Waffen versorgt zu haben.
			};
			
		if (FernandoHints >= 3)
		{
			AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_07"); //Ich denke, das reicht. Fernando also. Na, der kann was erleben.
			AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_08"); //Und dabei tut er immer so, als könne er kein Wässerchen trüben.
			AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_09"); //Ich werde dafür sorgen, dass er seine Strafe absitzt, bis er schwarz ist.
			AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_10"); //Reife Leistung. Das muss ich schon sagen.
			AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_11"); //Vatras wird sich freuen über diese guten Nachrichten.
			B_StartOtherRoutine	(Fernando,"Prison");
			Fernando_ImKnast = TRUE;
			MIs_Martin_FindTheBanditTrader = LOG_SUCCESS;
			B_LogEntry (TOPIC_Addon_BanditTrader,"Martin wird dafür sorgen, dass Fernando seine Strafe absitzt. Ich soll Vatras davon unterrichten."); 

			Ext_RemoveVobTree("NW_EROLBANDITS_TAVERN");
			Ext_RemoveVobTree("NW_FERNANDOBANDITS_FARM3");
			Ext_RemoveVobTree("NW_FERNANDOBANDITS_LUCIA");
			Ext_RemoveVobTree("NW_FERNANDOBANDITS_TAVERN");

			B_GivePlayerXP (XP_Addon_FernandoMartin);
		}
		else
		{
			AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_12"); //Und? Was noch?
			AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_13"); //Das ist alles.
		
			if (Fernando_HatsZugegeben == TRUE)
			{
				AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_14"); //Ist ja schön, dass er das zugibt, aber ohne handfeste Beweise kann ich da leider nichts machen.
				AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_15"); //Ich werd mich doch nicht bei Lord Hagen lächerlich machen. Da musst du mir schon mehr liefern.
			}
			else
			{
				AI_Output (self, other, "DIA_Addon_Martin_Fernando_07_16"); //Das reicht noch nicht. Das könnte fast jeder im oberen Viertel sein.
				AI_Output (self, other, "DIA_Addon_Martin_Fernando_07_17"); //Sieht so aus, als müsstest du der Spur der Banditen und den gelieferten Waffen noch weiter folgen, bis wir wissen, wer dahinter steckt.
				if (Martin_IrrlichtHint == FALSE)
				{
					AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_18"); //Vielleicht solltest du noch einmal mit Vatras sprechen...
					Martin_IrrlichtHint = TRUE;
				};
			};
		};
	}
	else
	{
		AI_Output	(other, self, "DIA_Addon_Martin_Fernando_15_19"); //Wie war das nochmal genau?
		AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_20"); //Also. Du sollst herausfinden, wer hinter den Waffenlieferungen an die Banditen steckt und mir die Beweise bringen.
		AI_Output	(self, other, "DIA_Addon_Martin_Fernando_07_21"); //Aber es müssen schon wirklich belastende Beweise sein. Sonst kann ich den Kerl nicht dingfest machen.
	};
};

///////////////////////////////////////////////////////////////////////
//	Info Perm
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Martin_Perm		(C_INFO)
{
	npc		 = 	GRD_350_Martin;
	nr		 = 	90;
	condition	 = 	DIA_Addon_Martin_Perm_Condition;
	information	 = 	DIA_Addon_Martin_Perm_Info;
	permanent	 = 	TRUE;

	description	 = 	"Alle Kisten noch da?";
};

func int DIA_Addon_Martin_Perm_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Martin_WasMachstDu))
		{
			return TRUE;
		};
};

func void DIA_Addon_Martin_Perm_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Martin_Perm_15_00"); //Alle Kisten noch da?
	AI_Output	(self, other, "DIA_Addon_Martin_Perm_07_04"); //Mach dich ruhig über mich lustig. Steh du mal den ganzen Tag auf der Pier und versuche, das ganze Chaos zu überblicken.
	AI_Output	(self, other, "DIA_Addon_Martin_Perm_07_05"); //Die Paladine haben ein Gerümpel angeschleppt, das ist nicht mehr feierlich.
	AI_Output	(self, other, "DIA_Addon_Martin_Perm_07_06"); //Fass hier nichts an, sonst ruf ich die Wachen, klar?
};