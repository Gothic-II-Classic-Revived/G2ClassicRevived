// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Rupert_EXIT(C_INFO)
{
	npc			= VLK_458_Rupert;
	nr			= 999;
	condition	= DIA_Rupert_EXIT_Condition;
	information	= DIA_Rupert_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Rupert_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Rupert_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};
// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Rupert_PICKPOCKET (C_INFO)
{
	npc			= VLK_458_Rupert;
	nr			= 900;
	condition	= DIA_Rupert_PICKPOCKET_Condition;
	information	= DIA_Rupert_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_20;
};                       

FUNC INT DIA_Rupert_PICKPOCKET_Condition()
{
	C_Beklauen (18, 10);
};
 
FUNC VOID DIA_Rupert_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Rupert_PICKPOCKET);
	Info_AddChoice		(DIA_Rupert_PICKPOCKET, DIALOG_BACK 		,DIA_Rupert_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Rupert_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Rupert_PICKPOCKET_DoIt);
};

func void DIA_Rupert_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Rupert_PICKPOCKET);
};
	
func void DIA_Rupert_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Rupert_PICKPOCKET);
};
// ************************************************************
// 			  				   Hello 
// ************************************************************
INSTANCE DIA_Rupert_Hello(C_INFO)
{
	npc			= VLK_458_Rupert;
	nr			= 1;
	condition	= DIA_Rupert_Hello_Condition;
	information	= DIA_Rupert_Hello_Info;
	permanent	= FALSE;
	important   = TRUE;
};                       
FUNC INT DIA_Rupert_Hello_Condition()
{
	if (Npc_IsInState (self,ZS_Talk))
	{
		return TRUE;
	};
};
FUNC VOID DIA_Rupert_Hello_Info()
{	
	AI_Output (self ,other,"DIA_Rupert_Hello_03_00"); //Hallo Fremder!
	AI_Output (self ,other,"DIA_Rupert_Hello_03_01"); //Du musst hungrig und durstig sein - kann ich dich vielleicht für meine Ware interessieren?
};	

// ************************************************************
// 			  				 Zu Pal 
// ************************************************************
INSTANCE DIA_Rupert_ZuPal(C_INFO)
{
	npc			= VLK_458_Rupert;
	nr			= 1;
	condition	= DIA_Rupert_ZuPal_Condition;
	information	= DIA_Rupert_ZuPal_Info;
	permanent	= FALSE;
	description = "Eigentlich bin ich auf dem Weg zu den Paladinen ...";
};                       
FUNC INT DIA_Rupert_ZuPal_Condition()
{
	if (Kapitel < 2)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Rupert_ZuPal_Info()
{	
	AI_Output (other, self,"DIA_Rupert_ZuPal_15_00"); //Eigentlich bin ich auf dem Weg zu den Paladinen ...
	AI_Output (self ,other,"DIA_Rupert_ZuPal_03_01"); //Da hast du schlechte Karten. Seit die Paladine sich im oberen Viertel breitgemacht haben, lassen sie kaum noch jemanden hinein.
};	

// ************************************************************
// 			  			HelpMeIntoOV
// ************************************************************
INSTANCE DIA_Rupert_HelpMeIntoOV(C_INFO)
{
	npc			= VLK_458_Rupert;
	nr			= 1;
	condition	= DIA_Rupert_HelpMeIntoOV_Condition;
	information	= DIA_Rupert_HelpMeIntoOV_Info;
	permanent	= FALSE;
	description = "Kannst du mir helfen, ins obere Viertel zu kommen?";
};                       
FUNC INT DIA_Rupert_HelpMeIntoOV_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Rupert_ZuPal))
	&& (hero.guild == GIL_NONE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Rupert_HelpMeIntoOV_Info()
{	
	AI_Output (other, self,"DIA_Rupert_HelpMeIntoOV_15_00"); //Kannst du mir helfen, ins obere Viertel zu kommen?
	AI_Output (self ,other,"DIA_Rupert_HelpMeIntoOV_03_01"); //Ich? Nein, ich habe hier auch nicht viel zu melden!
	AI_Output (self ,other,"DIA_Rupert_HelpMeIntoOV_03_02"); //Es gibt nur wenige Leute hier in der Unterstadt, die genug Einfluss haben, um dich an den Wachen vorbeizubringen.
	AI_Output (self ,other,"DIA_Rupert_HelpMeIntoOV_03_03"); //Matteo, mein Boss, ist einer von ihnen. Vielleicht solltest du mal mit ihm reden.
	
	Log_CreateTopic (TOPIC_OV,LOG_MISSION);
	Log_SetTopicStatus (TOPIC_OV,LOG_RUNNING);
	B_LogEntry (TOPIC_OV,"Wenn ich in's obere Viertel will, brauche ich die Hilfe der einflußreichen Bürger in der Unterstadt.");
	B_LogEntry (TOPIC_OV,"Der Händler Matteo ist einer der einflußreichen Bürger in der Unterstadt.");
};	

// ***************************************************************
//							WoMatteo
// ***************************************************************
INSTANCE DIA_Rupert_WoMatteo(C_INFO)
{
	npc			= VLK_458_Rupert;
	nr			= 1;
	condition	= DIA_Rupert_WoMatteo_Condition;
	information	= DIA_Rupert_WoMatteo_Info;
	permanent	= FALSE;
	description = "Wo finde ich Matteo?";
};                      
FUNC INT DIA_Rupert_WoMatteo_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Rupert_HelpMeIntoOV))
	&& (hero.guild == GIL_NONE)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Rupert_WoMatteo_Info()
{	
	AI_Output (other,self ,"DIA_Rupert_WoMatteo_15_00"); //Wo finde ich Matteo?
	AI_Output (self ,other,"DIA_Rupert_WoMatteo_03_01"); //Du stehst direkt vor seinem Laden. Geh einfach rein. Er ist eigentlich immer da.
	
	if (Knows_Matteo == FALSE)
	{
		Log_CreateTopic (TOPIC_CityTrader, LOG_NOTE);
		B_LogEntry (TOPIC_CityTrader,"Matteo hat seinen Laden am Südtor der Stadt. Er handelt mit Ausrüstung, Waffen und Proviant.");
		Knows_Matteo = TRUE;
	};
};

// ***************************************************************
//							Wer hat Einfluß
// ***************************************************************
INSTANCE DIA_Rupert_WerEinfluss(C_INFO)
{
	npc			= VLK_458_Rupert;
	nr			= 2;
	condition	= DIA_Rupert_WerEinfluss_Condition;
	information	= DIA_Rupert_WerEinfluss_Info;
	permanent	= FALSE;
	description = "Was ist mit den anderen einflussreichen Bürgern?";
};                      
FUNC INT DIA_Rupert_WerEinfluss_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Rupert_HelpMeIntoOV))
	&& (hero.guild == GIL_NONE)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Rupert_WerEinfluss_Info()
{	
	AI_Output (other,self ,"DIA_Rupert_WerEinfluss_15_00"); //Was ist mit den anderen einflussreichen Bürgern?
	AI_Output (self ,other,"DIA_Rupert_WerEinfluss_03_01"); //Die Händler und Handwerksmeister hier an der Hauptstraße sind die wichtigsten Persönlichkeiten der Stadt.
	AI_Output (self ,other,"DIA_Rupert_WerEinfluss_03_02"); //Du solltest versuchen, bei einem von ihnen als Lehrling angenommen zu werden - so wie ich.
	AI_Output (self ,other,"DIA_Rupert_WerEinfluss_03_03"); //Seit ich bei Matteo arbeite, behandeln mich die Leute in der Stadt mit Respekt!
	
	B_LogEntry (TOPIC_OV,"Ich sollte versuchen, bei einem der Handwerksmeister als Lehrling anzufangen.");
};

// ***************************************************************
//							Work
// ***************************************************************
INSTANCE DIA_Rupert_Work(C_INFO)
{
	npc			= VLK_458_Rupert;
	nr			= 3;
	condition	= DIA_Rupert_Work_Condition;
	information	= DIA_Rupert_Work_Info;
	permanent	= FALSE;
	description = "Ich brauche Geld und ich bin auf der Suche nach Arbeit.";
};                      
FUNC INT DIA_Rupert_Work_Condition()
{
	if (hero.guild == GIL_NONE)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Rupert_Work_Info()
{	
	AI_Output (other,self ,"DIA_Rupert_Work_15_00"); //Ich brauche Geld und ich bin auf der Suche nach Arbeit.
	AI_Output (self ,other,"DIA_Rupert_Work_03_01"); //Ich hab gehört, Bosper hat Ärger mit seinem Lieferanten. Sein Laden ist direkt gegenüber.
	AI_Output (self ,other,"DIA_Rupert_Work_03_02"); //Es heißt, er zahlt ganz gut.
};

// ***************************************************************
//							YourOffer
// ***************************************************************
INSTANCE DIA_Rupert_YourOffer(C_INFO)
{
	npc			= VLK_458_Rupert;
	nr			= 4;
	condition	= DIA_Rupert_YourOffer_Condition;
	information	= DIA_Rupert_YourOffer_Info;
	permanent	= FALSE;
	description = "Was kannst du mir anbieten?";
};                      
FUNC INT DIA_Rupert_YourOffer_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Rupert_YourOffer_Info()
{	
	AI_Output (other,self ,"DIA_Rupert_YourOffer_15_00"); //Was hast du anzubieten?
	AI_Output (self ,other,"DIA_Rupert_YourOffer_03_01"); //Zurzeit hab ich nicht allzu viel Auswahl.
	AI_Output (self ,other,"DIA_Rupert_YourOffer_03_02"); //Der verdammte Großbauer liefert nicht mehr und was von den kleinen Höfen kommt, reicht nicht aus, um den Bedarf der Stadt zu decken.
	
	if (hero.guild != GIL_SLD)
	&& (hero.guild != GIL_DJG)
	{ 
		AI_Output (other,self ,"DIA_Rupert_Bauernaufstand_15_00"); //Erzähl mir mehr über den Bauernaufstand.
		AI_Output (self ,other,"DIA_Rupert_Bauernaufstand_03_01"); //Die Sache ist ganz einfach: Onar, der fette Großbauer, will keinen Tribut mehr an die Stadt zahlen.
		AI_Output (self ,other,"DIA_Rupert_Bauernaufstand_03_02"); //Das muss man sich mal vorstellen! Wir sind im Krieg mit den Orks, und der Fettwanst will alles für sich haben!
		AI_Output (self ,other,"DIA_Rupert_Bauernaufstand_03_03"); //Normalerweise greift die Stadtwache in solchen Fällen hart durch.
		AI_Output (self ,other,"DIA_Rupert_Bauernaufstand_03_04"); //Aber jetzt kommt das Beste: Es heißt, Onar hat sich Söldner angeheuert, um sich die Truppen der Stadt vom Hals zu halten!
		AI_Output (self ,other,"DIA_Rupert_Bauernaufstand_03_05"); //SÖLDNER! Das Ganze wird noch in einem verdammten Krieg enden! Als ob EIN Krieg nicht reichen würde ...
		
		AI_Output (other,self ,"DIA_Rupert_Mercs_15_00"); //Was weißt du über Onars Söldner?
		AI_Output (self	,other,"DIA_Rupert_Mercs_03_01"); //Ich hab gehört, die meisten von ihnen sind ehemalige Sträflinge aus der Minenkolonie.
		AI_Output (self	,other,"DIA_Rupert_Mercs_03_02"); //Und ihr Anführer soll 'ne große Nummer beim König gewesen sein - ein General oder so was - den sie als Verräter eingelocht haben!
		AI_Output (self	,other,"DIA_Rupert_Mercs_03_03"); //Schlimme Zeiten sind das!
	
	};
};

// ************************************************************
//								Trade
// ************************************************************
INSTANCE DIA_Rupert_Trade(C_INFO)
{
	npc			= VLK_458_Rupert;
	nr			= 900;
	condition	= DIA_Rupert_Trade_Condition;
	information	= DIA_Rupert_Trade_Info;
	permanent	= TRUE;
	description = "Zeig mir deine Ware.";
	trade		= TRUE;
};                       
FUNC INT DIA_Rupert_Trade_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Rupert_YourOffer))
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Rupert_Trade_Info()
{	
	AI_Output (other,self ,"DIA_Rupert_Trade_15_00"); //Zeig mir deine Ware.
	if (hero.guild == GIL_KDF)
	|| (hero.guild == GIL_PAL)
	{
		AI_Output (self,other,"DIA_Rupert_Trade_03_01"); //Ich muss mich für meine bescheidene Auswahl entschuldigen. Ein Mann eurer Position ist sicher Besseres gewohnt.
	};
};