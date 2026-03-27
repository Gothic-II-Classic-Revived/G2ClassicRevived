///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Pedro_EXIT   (C_INFO)
{
	npc         = NOV_600_Pedro;
	nr          = 999;
	condition   = DIA_Pedro_EXIT_Condition;
	information = DIA_Pedro_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Pedro_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Pedro_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info WELCOME
///////////////////////////////////////////////////////////////////////
instance DIA_Pedro_WELCOME		(C_INFO)
{
	npc			 = 	NOV_600_Pedro;
	nr			 =  1;
	condition	 = 	DIA_Pedro_WELCOME_Condition;
	information	 = 	DIA_Pedro_WELCOME_Info;
	important	 = 	TRUE;
};
func int DIA_Pedro_WELCOME_Condition ()
{
	return TRUE;
};
func void DIA_Pedro_WELCOME_Info ()
{
	AI_Output (self, other, "DIA_Pedro_WELCOME_09_00"); //Willkommen beim Kloster Innos', Fremder.
	AI_Output (self, other, "DIA_Pedro_WELCOME_09_01"); //Ich bin Bruder Pedro, ein demütiger Diener Innos' und Wächter der Pforte des heiligen Klosters.
	AI_Output (self, other, "DIA_Pedro_WELCOME_09_02"); //Was ist dein Begehr?
};
// *************************************************************************
// 							Wurst verteilen
// *************************************************************************
INSTANCE DIA_Pedro_Wurst(C_INFO)
{
	npc         = NOV_600_Pedro;
	nr			= 2;
	condition	= DIA_Pedro_Wurst_Condition;
	information	= DIA_Pedro_Wurst_Info;
	permanent	= FALSE;
	description = "Iß mal 'ne Wurst, Bruder!";
};                       

FUNC INT DIA_Pedro_Wurst_Condition()
{
	if (Kapitel == 1)
	&& (MIS_GoraxEssen == LOG_RUNNING)
	&& (Npc_HasItems (self, ItFo_SchafsWurst ) == 0)
	&& (Npc_HasItems (other, ItFo_SchafsWurst ) >= 1)
	{
		return TRUE;
	};
};

FUNC VOID DIA_Pedro_Wurst_Info()
{	
	AI_Output (other, self, "DIA_Pedro_Wurst_15_00"); //Iß mal 'ne Wurst, Bruder!
	AI_Output (self, other, "DIA_Pedro_Wurst_09_01"); //Gut, dass du an mich gedacht hast. Meistens werde ich vergessen.
	AI_Output (self, other, "DIA_Pedro_Wurst_09_02"); //Du kannst mir direkt mal noch eine Wurst hier lassen.
	AI_Output (other, self, "DIA_Pedro_Wurst_15_03"); //Vergiss es, dann habe ich nicht mehr genug.
	AI_Output (self, other, "DIA_Pedro_Wurst_09_04"); //Hey, eine Wurst - das merkt kein Schwein. Du kriegst auch was dafür - ich weiß, wo ein paar Feuernesseln wachsen.
	AI_Output (self, other, "DIA_Pedro_Wurst_09_05"); //Wenn du die Neoras bringst, kriegst du bestimmt den Schlüssel zur Bibliothek. Wie sieht's aus?
	
	B_GiveInvItems (other, self, ItFo_SchafsWurst, 1);
	Wurst_Gegeben = (Wurst_Gegeben +1);
	
	CreateInvItems (self, ITFO_Sausage,1);
	B_UseItem (self, ITFO_Sausage);
	
	var string NovizeText;
	var string NovizeLeft;
	NovizeLeft = IntToString (13 - Wurst_Gegeben);
	NovizeText = ConcatStrings(NovizeLeft, PRINT_NovizenLeft);
	AI_PrintScreen	(NovizeText, -1, YPOS_GOLDGIVEN, FONT_ScreenSmall, 2);
	
	Info_ClearChoices (DIA_Pedro_Wurst);
	Info_AddChoice (DIA_Pedro_Wurst,"Okay, nimm noch eine Wurst.",DIA_Pedro_Wurst_JA);
	Info_AddChoice (DIA_Pedro_Wurst,"Nein, vergiss es.",DIA_Pedro_Wurst_NEIN);
};
FUNC VOID DIA_Pedro_Wurst_JA()
{
	AI_Output (other, self, "DIA_Pedro_Wurst_JA_15_00"); //Okay, nimm noch eine Wurst.
	AI_Output (self, other, "DIA_Pedro_Wurst_JA_09_01"); //Gut, auf der anderen Seite der Brücke wachsen links und rechts einige Feuernesseln.
	B_GiveInvItems (other, self, ItFo_SchafsWurst, 1);
	Info_ClearChoices (DIA_Pedro_Wurst);
	
};
FUNC VOID DIA_Pedro_Wurst_NEIN()
{
	AI_Output (other, self, "DIA_Pedro_Wurst_NEIN_15_00"); //Nein, vergiss es.
	AI_Output (self, other, "DIA_Pedro_Wurst_NEIN_09_01"); //Du willst dich wohl bei Gorax beliebt machen, was? Immer das gleiche mit den neuen Novizen ...
	
	Info_ClearChoices (DIA_Pedro_Wurst);
};
///////////////////////////////////////////////////////////////////////
//	Info EINLASS
///////////////////////////////////////////////////////////////////////
instance DIA_Pedro_EINLASS		(C_INFO)
{
	npc			= 	NOV_600_Pedro;
	condition	= 	DIA_Pedro_EINLASS_Condition;
	information	= 	DIA_Pedro_EINLASS_Info;
	permanent	=	FALSE;
	description	= 	"Ich will ins Kloster";
};
func int DIA_Pedro_EINLASS_Condition ()
{	
	if Npc_KnowsInfo (hero, DIA_Pedro_Welcome)
	{
		return TRUE;
	};
};
func void DIA_Pedro_EINLASS_Info ()
{
	AI_Output (other, self, "DIA_Pedro_EINLASS_15_00"); //Ich will ins Kloster
	AI_Output (self, other, "DIA_Pedro_EINLASS_09_01"); //Es ist nur den Dienern Innos' gestattet, das Kloster zu betreten.
	AI_Output (self, other, "DIA_Pedro_EINLASS_09_02"); //Wenn du zu Innos beten willst, dann suche einen der Wegschreine auf. Dort wirst du Stille zum Gebet finden.
};
///////////////////////////////////////////////////////////////////////
//	Info TEMPEL
///////////////////////////////////////////////////////////////////////
instance DIA_Pedro_TEMPEL		(C_INFO)
{
	npc			 = 	NOV_600_Pedro;
	nr			 = 	2;
	condition	 = 	DIA_Pedro_TEMPEL_Condition;
	information	 = 	DIA_Pedro_TEMPEL_Info;
	permanent 	 =  FALSE;
	description	 = 	"Was muss ich tun, um im Kloster aufgenommen zu werden?";
};
//-----------------------------------

//-----------------------------------
func int DIA_Pedro_TEMPEL_Condition ()
{
	if (Npc_KnowsInfo (other,DIA_Pedro_EINLASS))
	&& (hero.guild != GIL_NOV)
	{	
		return TRUE;
	};	
};
func void DIA_Pedro_TEMPEL_Info ()
{	
 	AI_Output (other, self, "DIA_Pedro_TEMPEL_15_00"); //Was muss ich tun, um im Kloster aufgenommen zu werden?
 	
 	if (other.guild != GIL_NONE)
 	{
 		AI_Output (self, other, "DIA_Pedro_TEMPEL_09_01"); //Die Aufnahme ins Kloster bleibt dir verwehrt - du hast dich bereits für einen Weg entschieden.
 	}
 	else
 	{
 		AI_Output (self, other, "DIA_Pedro_TEMPEL_09_02"); //Wenn du in die Gemeinschaft Innos' aufgenommen werden willst, musst du die Regeln des Klosters kennen und befolgen.
		//AI_Output (self, other, "DIA_Pedro_TEMPEL_09_03"); //Auerdem verlangen wir von jedem neuen Novizen die Gaben an Innos. Ein Schaf und...
		//B_Say_Gold (self, other, Summe_Kloster);  
 		AI_Output (self, other, "DIA_ADDON_Pedro_TEMPEL_09_03"); //Außerdem verlangen wir von jedem neuen Novizen die Gaben an Innos.
 		AI_Output (self, other, "DIA_ADDON_Pedro_TEMPEL_09_04"); //Ein Schaf und 1000 Goldstücke.
 		AI_Output (other, self, "DIA_Pedro_TEMPEL_15_04"); //Das ist verdammt viel Gold.
 		AI_Output (self, other, "DIA_Pedro_TEMPEL_09_05"); //Es ist ein Zeichen dafür, dass du ein neues Leben als Diener Innos' beginnst. Bei deiner Aufnahme werden dir alle deine bisherigen Verfehlungen vergeben.
 		AI_Output (self, other, "DIA_Pedro_TEMPEL_09_06"); //Und bedenke - die Entscheidung, ein Diener Innos' zu sein, kannst du nicht mehr rückgängig machen.
 		SC_KnowsKlosterTribut = TRUE;
  		Log_CreateTopic (Topic_Kloster,LOG_MISSION);
		Log_SetTopicStatus (Topic_Kloster,LOG_RUNNING);
		B_LogEntry (Topic_Kloster,"Um im Innos - Kloster als Novize aufgenommen zu werden, brauche ich ein Schaf und eine gewaltige Summe Gold.");
 	};
};

//*********************************************************************
//	ADDON Statuette
//*********************************************************************
instance DIA_Addon_Pedro_Statuette (C_INFO)
{
	npc			 = 	NOV_600_Pedro;
	nr			 = 	2;
	condition	 = 	DIA_Addon_Pedro_Statuette_Condition;
	information	 = 	DIA_Addon_Pedro_Statuette_Info;
	permanent	 = 	FALSE;
	description	 = 	"Ich habe hier diese Statuette...";
};
func int DIA_Addon_Pedro_Statuette_Condition ()
{	
	if (Npc_HasItems (other,ItMi_LostInnosStatue_Daron))
	&& (MIS_Addon_Daron_GetStatue == LOG_RUNNING)
	//&& (Npc_KnowsInfo (other,DIA_Pedro_Rules))
	&& (hero.guild != GIL_NOV)
	&& (hero.guild != GIL_KDF)
	//&& (hero.guild != GIL_NONE)
	{
		return TRUE;
	};
};
func void DIA_Addon_Pedro_Statuette_Info ()
{
	AI_Output (other, self, "DIA_Addon_Pedro_Statuette_15_00"); //I've got this statuette here. I think they're missing it in the monastery.
	if (Kapitel <= 3)
	{
		AI_Output (self, other, "DIA_Addon_Pedro_Statuette_09_03"); //I can't let you in even with this precious gem, I'm afraid.
	};
	AI_Output (other, self, "DIA_Addon_Pedro_Statuette_Abgeben_15_00"); //Can I just hand the statuette over to you?
	AI_Output (self, other, "DIA_Addon_Pedro_Statuette_Abgeben_09_01"); //Of course, I shall take care of it. Thank you for this unselfish deed.
	
		if B_GiveInvItems (other, self, ItMi_LostInnosStatue_Daron,1)
		{
			Npc_RemoveInvItems (self, ItMi_LostInnosStatue_Daron,1);
		};
		
	MIS_Addon_Daron_GetStatue = LOG_SUCCESS;
	MiltenORPedro_LostInnosStatue_Daron = TRUE;
	B_GivePlayerXP (XP_Addon_ReportLostInnosStatue2Daron);
	B_LogEntry (TOPIC_Revived_DaronStatuette, "Ich habe Pedro die Statue zurückgegeben. Ich sollte nach Daron zurückkehren, um die gute Nachricht zu überbringen."); 
	Log_SetTopicStatus(TOPIC_Revived_DaronStatuette, LOG_SUCCESS);
};
///////////////////////////////////////////////////////////////////////
//	Regeln
///////////////////////////////////////////////////////////////////////
instance DIA_Pedro_Rules		(C_INFO)
{
	npc			 = 	NOV_600_Pedro;
	nr			 = 	2;
	condition	 = 	DIA_Pedro_Rules_Condition;
	information	 = 	DIA_Pedro_Rules_Info;
	permanent	 = 	FALSE;
	description	 = 	"Welche Regeln habt ihr euch auferlegt?";
};
func int DIA_Pedro_Rules_Condition ()
{	
	if Npc_KnowsInfo (other,DIA_Pedro_Tempel)
	{
		return TRUE;
	};
};
func void DIA_Pedro_Rules_Info ()
{
	AI_Output (other, self,"DIA_Pedro_Rules_15_00"); //What are the rules you live by?
	AI_Output (self, other,"DIA_Pedro_Rules_09_01"); //Innos is the god of truth and law and thus we may NEVER lie or commit a crime.
	AI_Output (self, other,"DIA_Pedro_Rules_09_02"); //Should you transgress against a brother of the community or steal our property, you will pay a penalty for it.
	AI_Output (self, other,"DIA_Pedro_Rules_09_03"); //Innos is also the god of rule and fire.
	AI_Output (self, other,"DIA_Pedro_Rules_09_04"); //As a novice you must show OBEDIENCE and RESPECT to all Magicians of Fire.
	AI_Output (other,self ,"DIA_Pedro_Rules_15_05"); //I see.
	AI_Output (self ,other,"DIA_Pedro_Rules_09_06"); //Furthermore, it is the DUTY of a novice to carry out all the work in the monastery for the good of the community.
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self ,other,"DIA_Pedro_Rules_09_07"); //If you are prepared to follow these rules and have the offering to Innos, we are willing to accept you into our monastery as a novice.
	};
};

///////////////////////////////////////////////////////////////////////
//	Info AUFNAHME
///////////////////////////////////////////////////////////////////////
instance DIA_Pedro_AUFNAHME		(C_INFO)
{
	npc			 = 	NOV_600_Pedro;
	condition	 = 	DIA_Pedro_AUFNAHME_Condition;
	information	 = 	DIA_Pedro_AUFNAHME_Info;
	permanent 	 =  TRUE; 
	description	 = 	"Ich möchte Novize werden";
};
var int DIA_Pedro_AUFNAHME_NOPERM;
func int DIA_Pedro_AUFNAHME_Condition ()
{	
	if Npc_KnowsInfo (hero,DIA_Pedro_Rules)
	&& (DIA_Pedro_AUFNAHME_NOPERM == FALSE)
	{
		return TRUE;
	};
};
func void B_DIA_Pedro_AUFNAHME_Choice ()
{
		Info_ClearChoices (DIA_Pedro_AUFNAHME);
		Info_AddChoice 	  (DIA_Pedro_AUFNAHME,"Ich denke nochmal darüber nach",DIA_Pedro_AUFNAHME_NO);
		Info_AddChoice 	  (DIA_Pedro_AUFNAHME,"Ja, ich will mein Leben in den Dienst Innos stellen",DIA_Pedro_AUFNAHME_YES);
};
func void DIA_Pedro_AUFNAHME_Info ()
{
	AI_Output (other, self, "DIA_Pedro_AUFNAHME_15_00"); //I want to become a novice.
	
	Npc_PerceiveAll (self);
	
	if (hero.guild != GIL_NONE)
	{
		AI_Output (self, other, "DIA_Pedro_AUFNAHME_09_01"); //You have already chosen your path. The path of magic is closed to you.
		DIA_Pedro_AUFNAHME_NOPERM = TRUE;
	}
	else if (hero.guild == GIL_NONE )
	&& (Npc_HasItems (hero, ItMi_Gold) >= Summe_Kloster)
	&& Wld_DetectNpc (self,Follow_Sheep,NOFUNC,-1) 
	&& (Npc_GetDistToNpc(self, other) < 1000)
	{
		AI_Output (self, other, "DIA_Addon_Pedro_AUFNAHME_09_02"); //Is that really what you wish to do? For you must know that there will be no turning back for you then.
		AI_Output (self, hero, "DIA_Pedro_AUFNAHME_09_03"); //I see that you have brought the required offering. If you are truly willing, you are now free to become a novice.
		AI_Output (self, hero, "DIA_Pedro_AUFNAHME_09_04"); //However, if you make this decision there is no going back - consider well if this is your path!
		
		B_DIA_Pedro_AUFNAHME_Choice ();
	}
	else
	{
		AI_Output (self, other, "DIA_Pedro_AUFNAHME_09_02"); //You did not bring the required offering with you.
	};
};

FUNC VOID DIA_Pedro_AUFNAHME_YES()
{
	AI_Output (other, self, "DIA_Pedro_AUFNAHME_YES_15_00"); //Yes, I want to dedicate my life to the service of Innos.
	AI_Output (self, other, "DIA_Pedro_AUFNAHME_YES_09_01"); //Then be welcome, Brother. I give to you the key to the monastery gate.
	AI_Output (self, other, "DIA_Pedro_AUFNAHME_YES_09_02"); //As a sign of your free decision, it is up to you to open the gate and step through.
	AI_Output (self, other, "DIA_Pedro_AUFNAHME_YES_09_03"); //You are now a novice. Wear this robe as a sign that you are now a member of this brotherhood.
	AI_Output (self, other, "DIA_Pedro_AUFNAHME_YES_09_04"); //When you are in the monastery, go to Parlan. He'll see to your needs from now on.
	AI_Output (other, self, "DIA_Pedro_AUFNAHME_YES_15_05"); //Will my transgressions be forgiven now?
	AI_Output (self, other, "DIA_Pedro_AUFNAHME_YES_09_06"); //Not yet. Speak to Master Parlan. He will bless you and wash you clean of your sins.
	
	CreateInvItems 		(self,ItKe_Innos_MIS,1);
	B_GiveInvItems 		(self, hero, ItKe_Innos_MIS,1); 
	
	CreateInvItems 		(other,ITAR_NOV_L,1);
	AI_EquipArmor		(other,ITAR_NOV_L);		   
	
	other.guild = GIL_NOV;
	Npc_SetTrueGuild (other, GIL_NOV);
	
	DIA_Pedro_AUFNAHME_NOPERM = TRUE;
	NOV_Aufnahme = TRUE;
	B_GivePlayerXP (XP_AufnahmeNovize);
	
	Wld_AssignRoomToGuild ("Kloster02",GIL_KDF);
	
	AI_StopProcessInfos (self);
};
FUNC VOID DIA_Pedro_AUFNAHME_NO()
{
	AI_Output (other, self, "DIA_Pedro_AUFNAHME_NO_15_00"); //I'll think about it some more.
	AI_Output (self, other, "DIA_Pedro_AUFNAHME_NO_09_01"); //Come back when you are ready.
	
	Info_ClearChoices (DIA_Pedro_AUFNAHME);
};
//*********************************************************************
//	Erzhl mir vom Leben im Kloster.
//*********************************************************************
instance DIA_Pedro_Monastery		(C_INFO)
{
	npc			 = 	NOV_600_Pedro;
	nr			 = 	90;
	condition	 = 	DIA_Pedro_Monastery_Condition;
	information	 = 	DIA_Pedro_Monastery_Info;
	permanent	 = 	TRUE;
	description	 = 	"Erzähl mir vom Leben im Kloster.";
};
func int DIA_Pedro_Monastery_Condition ()
{		
	return TRUE;
};
func void DIA_Pedro_Monastery_Info ()
{
	AI_Output (other, self, "DIA_Pedro_Monastery_15_00"); //Tell me about life in the monastery.
	AI_Output (self, other, "DIA_Pedro_Monastery_09_01"); //We live in the monastery in order to serve Innos. We novices perform the work and study the scriptures when we have the opportunity.
	AI_Output (self, other, "DIA_Pedro_Monastery_09_02"); //The magicians watch over us, and they explore the arts of magic.
}; 




// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Pedro_PICKPOCKET (C_INFO)
{
	npc			= NOV_600_Pedro;
	nr			= 900;
	condition	= DIA_Pedro_PICKPOCKET_Condition;
	information	= DIA_Pedro_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_60;
};                       

FUNC INT DIA_Pedro_PICKPOCKET_Condition()
{
	C_Beklauen (45, 60);
};
 
FUNC VOID DIA_Pedro_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Pedro_PICKPOCKET);
	Info_AddChoice		(DIA_Pedro_PICKPOCKET, DIALOG_BACK 		,DIA_Pedro_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Pedro_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Pedro_PICKPOCKET_DoIt);
};

func void DIA_Pedro_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Pedro_PICKPOCKET);
};
	
func void DIA_Pedro_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Pedro_PICKPOCKET);
};















