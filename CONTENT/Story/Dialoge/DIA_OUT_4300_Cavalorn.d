///////////////////////////////////////////////////////////////////////
//	C_BragoBanditsDead 
///////////////////////////////////////////////////////////////////////

func int C_BragoBanditsDead ()
{
	if ( Npc_IsDead (Ambusher_1013) || (Bdt_1013_Away == TRUE) )
	&& (Npc_IsDead (Ambusher_1014)) 
	&& (Npc_IsDead (Ambusher_1015))
	{
		return TRUE;
	};
};

///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Addon_Cavalorn_EXIT   (C_INFO)
{
	npc         = OUT_4300_CAVALORN;
	nr          = 999;
	condition   = DIA_Addon_Cavalorn_EXIT_Condition;
	information = DIA_Addon_Cavalorn_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Addon_Cavalorn_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Addon_Cavalorn_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Addon_Cavalorn_PICKPOCKET (C_INFO)
{
	npc			= OUT_4300_CAVALORN;
	nr			= 900;
	condition	= DIA_Addon_Cavalorn_PICKPOCKET_Condition;
	information	= DIA_Addon_Cavalorn_PICKPOCKET_Info;
	permanent	= TRUE;
	description = "(Es wäre einfach sein Pfeilbündel zu stehlen)";
};                       

FUNC INT DIA_Addon_Cavalorn_PICKPOCKET_Condition()
{
	if (Npc_GetTalentSkill (other,NPC_TALENT_PICKPOCKET) == 1) 
	&& (self.aivar[AIV_PlayerHasPickedMyPocket] == FALSE)
	&& (other.attribute[ATR_DEXTERITY] >= (25 - Theftdiff))
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Addon_Cavalorn_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Addon_Cavalorn_PICKPOCKET);
	Info_AddChoice		(DIA_Addon_Cavalorn_PICKPOCKET, DIALOG_BACK 		,DIA_Addon_Cavalorn_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Addon_Cavalorn_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Addon_Cavalorn_PICKPOCKET_DoIt);
};

func void DIA_Addon_Cavalorn_PICKPOCKET_DoIt()
{
	if (other.attribute[ATR_DEXTERITY] >= 25)
	{
		
		B_GiveInvItems (self, other, ItRw_Arrow, 44);
		self.aivar[AIV_PlayerHasPickedMyPocket] = TRUE;
		B_GivePlayerXP (XP_Ambient);
		Info_ClearChoices (DIA_Addon_Cavalorn_PICKPOCKET);
	}
	else
	{
		AI_StopProcessInfos	(self);
		B_Attack (self, other, AR_Theft, 1); //reagiert trotz IGNORE_Theft mit NEWS
	};
};
	
func void DIA_Addon_Cavalorn_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Addon_Cavalorn_PICKPOCKET);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Cavalorn_HALLO		(C_INFO)
{
	npc		 = 	OUT_4300_CAVALORN;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Cavalorn_HALLO_Condition;
	information	 = 	DIA_Addon_Cavalorn_HALLO_Info;

	description	 = 	"Hast du Ärger?";
};

func int DIA_Addon_Cavalorn_HALLO_Condition ()
{
	return TRUE;
};

func void DIA_Addon_Cavalorn_HALLO_Info ()
{
	AI_Output			(other, self, "DIA_Addon_Cavalorn_HALLO_15_00"); //Ärger?
	AI_Output			(self, other, "DIA_Addon_Cavalorn_HALLO_08_01"); //(verärgert) Verdammt. Ich weiß gar nicht, wo die sich alle versteckt halten. Du tötest einen und kurze Zeit später sind sie alle wieder da.
	AI_Output			(self, other, "DIA_Addon_Cavalorn_HALLO_08_02"); //(lauernd) Moment mal. Ich kenn dich doch. Du bist doch der Kerl, der mich damals im Minental ständig um Pfeile angebettelt hat.
	
	Info_ClearChoices	(DIA_Addon_Cavalorn_HALLO);
	Info_AddChoice	(DIA_Addon_Cavalorn_HALLO, "Dein Name ist Cavalorn, richtig?", DIA_Addon_Cavalorn_HALLO_Ja );
	Info_AddChoice	(DIA_Addon_Cavalorn_HALLO, "Kann mich kaum erinnern...?", DIA_Addon_Cavalorn_HALLO_weissNicht );

};
func void DIA_Addon_Cavalorn_HALLO_weissNicht ()
{
	AI_Output			(other, self, "DIA_Addon_Cavalorn_HALLO_weissNicht_15_00"); //Kann mich kaum erinnern...?
	AI_Output			(self, other, "DIA_Addon_Cavalorn_HALLO_weissNicht_08_01"); //Ach, komm. Ich hab dir das Bogenschießen und Schleichen beigebracht damals in meiner Hütte vorm alten Lager. Klingelt's?

};

func void DIA_Addon_Cavalorn_HALLO_Ja ()
{
	AI_Output			(other, self, "DIA_Addon_Cavalorn_HALLO_Ja_15_00"); //Dein Name ist Cavalorn, richtig?
	AI_Output			(self, other, "DIA_Addon_Cavalorn_HALLO_Ja_08_01"); //Ah. Ich sehe, du hast mich nicht vergessen, nach allem was wir durchgemacht haben in der verfluchten Kolonie.
	AI_Output			(self, other, "DIA_Addon_Cavalorn_HALLO_Ja_08_02"); //Wo willst du eigentlich hin?
	
	Info_ClearChoices	(DIA_Addon_Cavalorn_HALLO);
	Info_AddChoice	(DIA_Addon_Cavalorn_HALLO, "Ich habe kein bestimmtes Ziel.", DIA_Addon_Cavalorn_HALLO_keinZiel );
	Info_AddChoice	(DIA_Addon_Cavalorn_HALLO, "Zurück ins Minental.", DIA_Addon_Cavalorn_HALLO_Bauern );

	if (Mil_310_Stadtwache.aivar[AIV_PASSGATE] == FALSE)
	{
		Info_AddChoice	(DIA_Addon_Cavalorn_HALLO, "In die Stadt.", DIA_Addon_Cavalorn_HALLO_Stadt );
	};
};
func void DIA_Addon_Cavalorn_HALLO_Stadt ()
{
	AI_Output	(other, self, "DIA_Addon_Cavalorn_HALLO_Stadt_15_00"); //In die Stadt.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_HALLO_Stadt_08_01"); //(lacht) So so. In die Stadt also.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_HALLO_Stadt_08_02"); //Du könntest Probleme mit den Wachen kriegen. Die lassen nicht mehr jeden rein, seit es hier in der Gegend vor Banditen wimmelt.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_HALLO_Stadt_08_03"); //Hier ist in den letzten Tagen einer dieser ehemaligen Psioniker aus dem Minental vorbei gekommen. Er meinte, er geht ständig ein und aus in Khorinis.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_HALLO_Stadt_08_04"); //Er ging in das Tal unter dem großen Turm. Irgendwo bei dem Wasserfall dort muss es einen Weg dorthin geben.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_HALLO_Stadt_08_05"); //Vielleicht solltest du mit dem Typen mal sprechen.
	Info_ClearChoices	(DIA_Addon_Cavalorn_HALLO);
};

func void DIA_Addon_Cavalorn_HALLO_Bauern ()
{
	AI_Output			(other, self, "DIA_Addon_Cavalorn_HALLO_Bauern_15_00"); //Zurück ins Minental.
	AI_Output			(self, other, "DIA_Addon_Cavalorn_HALLO_Bauern_08_01"); //(erstaunt) Wirklich? Mmh. Ich wünschte, ich könnte dir folgen, aber ich habe erst meine Aufgaben zu erledigen.
	AI_Output			(self, other, "DIA_Addon_Cavalorn_HALLO_Bauern_08_02"); //Wenn du im Minental bist, schau doch bitte mal, ob meine alte Hütte immer noch steht. Ich würde gerne eines Tages dahin zurückkehren.
	
	MIS_Addon_Cavalorn_TheHut = LOG_RUNNING;	
	Log_CreateTopic (TOPIC_Addon_CavalornTheHut, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_CavalornTheHut, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_CavalornTheHut,"Cavalorn will, dass ich nachsehe, ob seine alte Hütte im Minental immer noch steht. Soweit ich mich erinnern kann, befindet sich seine Hütte im hügeligen Land westlich vom damaligen alten Lager. Ich vermute, er hat dort noch irgendetwas liegen lassen.");
	
	Info_ClearChoices	(DIA_Addon_Cavalorn_HALLO);
};

func void DIA_Addon_Cavalorn_HALLO_keinZiel ()
{
	AI_Output			(other, self, "DIA_Addon_Cavalorn_HALLO_keinZiel_15_00"); //Ich habe kein bestimmtes Ziel.
	AI_Output			(self, other, "DIA_Addon_Cavalorn_HALLO_keinZiel_08_01"); //Du willst es mir nicht sagen, was? Auch gut.

	Info_ClearChoices	(DIA_Addon_Cavalorn_HALLO);
};

///////////////////////////////////////////////////////////////////////
//	Info Beutel
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Cavalorn_Beutel		(C_INFO)
{
	npc		 = 	OUT_4300_CAVALORN;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Cavalorn_Beutel_Condition;
	information	 = 	DIA_Addon_Cavalorn_Beutel_Info;

	description	 = 	"Ich war bei deiner Hütte im Minental.";
};

func int DIA_Addon_Cavalorn_Beutel_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Cavalorn_HALLO))
	&& ((Npc_HasItems (other,ItSe_ADDON_CavalornsBeutel))||(SC_OpenedCavalornsBeutel == TRUE))
		{
			return TRUE;
		};
};

func void DIA_Addon_Cavalorn_Beutel_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Cavalorn_Beutel_15_00"); //Ich war bei deiner Hütte im Minental.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_Beutel_08_01"); //Sie steht also noch immer.
	if (MIS_Addon_Cavalorn_TheHut == LOG_RUNNING)
	{
		AI_Output	(other, self, "DIA_Addon_Cavalorn_Beutel_15_02"); //Ja. Und ich weiß jetzt auch, was du da wolltest.
	};
	AI_Output	(self, other, "DIA_Addon_Cavalorn_Beutel_08_03"); //Hast du ihn gefunden?
	AI_Output	(other, self, "DIA_Addon_Cavalorn_Beutel_15_04"); //Wenn du deinen Beutel mit dem Erzbrocken meinst ... ja, das hab ich.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_Beutel_08_05"); //Du bist ein Fuchs, weißt du das?
	if (MIS_Addon_Cavalorn_TheHut == LOG_RUNNING)
	{
		AI_Output	(other, self, "DIA_Addon_Cavalorn_Beutel_15_06"); //Was hättest du auch sonst bei der alten Bretterbude zu suchen. Da ist nichts mehr.
	};
	AI_Output	(self, other, "DIA_Addon_Cavalorn_Beutel_08_07"); //Hast du ihn bei dir? Ich geb dir 100 Goldmünzen dafür.
	TOPIC_End_CavalornTheHut = TRUE;
	B_GivePlayerXP (XP_Ambient);
	Info_ClearChoices	(DIA_Addon_Cavalorn_Beutel);

	if ((Npc_HasItems (other,ItSe_ADDON_CavalornsBeutel))||(Npc_HasItems (other,ItMi_Nugget)))
	{
		Info_AddChoice	(DIA_Addon_Cavalorn_Beutel, "Ja.", DIA_Addon_Cavalorn_Beutel_ja );
	};
	Info_AddChoice	(DIA_Addon_Cavalorn_Beutel, "Nein.", DIA_Addon_Cavalorn_Beutel_no );
};

func void DIA_Addon_Cavalorn_Beutel_ja ()
{
	AI_Output			(other, self, "DIA_Addon_Cavalorn_Beutel_ja_15_00"); //Ja.

	if (B_GiveInvItems (other, self, ItSe_ADDON_CavalornsBeutel,1) == FALSE)
		{
			B_GiveInvItems (other, self, ItMi_Nugget,1);
		};
	AI_Output	(self, other, "DIA_Addon_Cavalorn_ErzGeben_08_02"); //Du bist ein wahrer Freund. Besten Dank.
	MIS_Addon_Cavalorn_TheHut = LOG_SUCCESS;
	B_GivePlayerXP (XP_Addon_CavalornsBeutel);
	Info_ClearChoices	(DIA_Addon_Cavalorn_Beutel);
	Info_AddChoice	(DIA_Addon_Cavalorn_Beutel, "Warum hast du ihn eigentlich liegen lassen?", DIA_Addon_Cavalorn_Beutel_why );
};

func void DIA_Addon_Cavalorn_Beutel_no ()
{
	AI_Output			(other, self, "DIA_Addon_Cavalorn_Beutel_no_15_00"); //Nein.
	AI_Output			(self, other, "DIA_Addon_Cavalorn_Beutel_no_08_01"); //Dann besorg mir das Ding WIEDER. Immerhin wär ich deswegen glatt nochmal ins verfluchte Minental gegangen.
	AI_Output			(self, other, "DIA_Addon_Cavalorn_back_08_00"); //Ich will hoffen, dass ich ihn bald wieder kriege.
	AI_Output			(other, self, "DIA_Addon_Cavalorn_Beutel_no_15_02"); //Mir kommen die Tränen.
	Info_ClearChoices	(DIA_Addon_Cavalorn_Beutel);
	Info_AddChoice	(DIA_Addon_Cavalorn_Beutel, "Warum hast du ihn eigentlich liegen lassen?", DIA_Addon_Cavalorn_Beutel_why );
};

func void DIA_Addon_Cavalorn_Beutel_why ()
{
	AI_Output			(other, self, "DIA_Addon_Cavalorn_Beutel_why_15_00"); //Warum hast du ihn eigentlich liegen lassen?
	AI_Output			(self, other, "DIA_Addon_Cavalorn_Beutel_why_08_01"); //Konnte doch keiner ahnen, dass das Erz hier in Khorinis so wertvoll ist.
	AI_Output			(self, other, "DIA_Addon_Cavalorn_Beutel_why_08_02"); //Für einen schnöden Erzbrocken hast du in der Strafkolonie damals doch noch nicht mal einen Platz zum Schlafen gekriegt.
	AI_Output			(self, other, "DIA_Addon_Cavalorn_Beutel_why_08_03"); //In der Hafenstadt schlagen sie dir fast den Schädel ein, wenn sie mitkriegen, dass du Erz dabei hast.
};

///////////////////////////////////////////////////////////////////////
//	Info ErzGeben
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Cavalorn_ErzGeben		(C_INFO)
{
	npc		 = 	OUT_4300_CAVALORN;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Cavalorn_ErzGeben_Condition;
	information	 = 	DIA_Addon_Cavalorn_ErzGeben_Info;

	description	 = 	"Gib mir die 100 Goldmünzen, dann gebe ich dir dein Erz zurück.";
};

func int DIA_Addon_Cavalorn_ErzGeben_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Cavalorn_Beutel))
	&& ((Npc_HasItems (other,ItSe_ADDON_CavalornsBeutel))||(Npc_HasItems (other,ItMi_Nugget)))
		{
			return TRUE;
		};
};

func void DIA_Addon_Cavalorn_ErzGeben_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Cavalorn_ErzGeben_15_00"); //Gib mir die 100 Goldmünzen, dann gebe ich dir dein Erz zurück.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_ErzGeben_08_01"); //Abgemacht. Hier hast du es.
	CreateInvItems (self, ItMi_Gold, 100);									
	B_GiveInvItems (self, other, ItMi_Gold, 100);		

	if (B_GiveInvItems (other, self, ItSe_ADDON_CavalornsBeutel,1) == FALSE)
		{
			B_GiveInvItems (other, self, ItMi_Nugget,1);
		};
	AI_Output			(self, other, "DIA_Addon_Cavalorn_Beutel_ja_08_01"); //Großartig.
	MIS_Addon_Cavalorn_TheHut = LOG_SUCCESS;
	B_GivePlayerXP (XP_Addon_CavalornsBeutel / 2);	
};

///////////////////////////////////////////////////////////////////////
//	Info WasMachstdu
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Cavalorn_WASMACHSTDU		(C_INFO)
{
	npc		 = 	OUT_4300_CAVALORN;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Cavalorn_WASMACHSTDU_Condition;
	information	 = 	DIA_Addon_Cavalorn_WASMACHSTDU_Info;

	description	 = 	"Was machst du hier?";
};

func int DIA_Addon_Cavalorn_WASMACHSTDU_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Cavalorn_HALLO))
		{
			return TRUE;
		};
};

func void DIA_Addon_Cavalorn_WASMACHSTDU_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Cavalorn_WASMACHSTDU_15_00"); //Was machst du hier?
	AI_Output	(self, other, "DIA_Addon_Cavalorn_WASMACHSTDU_08_01"); //Ich sitze hier fest. Wenn diese verdammten Banditen nicht gewesen wären, wär' ich gar nicht hier.
	
	//AI_Output	(other, self, "DIA_Addon_Cavalorn_Banditen_15_00"); //What was that about bandits?
	AI_Output	(other, self, "DIA_Addon_Cavalorn_ARTEFAKT_15_00"); //Du wurdest von Banditen ausgeraubt?
	AI_Output	(self, other, "DIA_Addon_Cavalorn_ARTEFAKT_08_01"); //(grimmig) Ja. Niedergeprügelt und den Goblins zum Fraß vorgeworfen haben sie mich.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_Banditen_08_01"); //Hast du die letzten Wochen verschlafen?
	AI_Output	(other, self, "DIA_Addon_Cavalorn_Banditen_15_02"); //Äh ...
	AI_Output	(self, other, "DIA_Addon_Cavalorn_Banditen_08_03"); //Ich rede von dem ganzen Gesindel aus der Strafkolonie, das sich hier in der Gegend breit macht. Plündern und morden, was das Zeug hält.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_Banditen_08_04"); //(seufzt) Kann froh sein, dass sie mich am Leben gelassen haben. Ich hab einen Moment nicht aufgepasst, da haben sie mir von hinten eins übergezogen.
	
	if (MIS_Addon_Cavalorn_KillBrago != LOG_SUCCESS) //(C_BragoBanditsDead () == FALSE) 
	{
		AI_Output	(self, other, "DIA_Addon_Cavalorn_Banditen_08_05"); //Keine Ahnung, wie ich jetzt meinen Kram wieder kriegen soll.
	
		AI_Output	(self, other, "DIA_Addon_Cavalorn_ARTEFAKT_08_02"); //Es waren verflucht wichtige Sachen. Ein Brief und mein ganzes Geld. Ich muss es unbedingt wieder haben.
		AI_Output	(self, other, "DIA_Addon_Cavalorn_ARTEFAKT_08_03"); //Aber ohne Rückendeckung gehe ich da nicht mehr hin. Dieses feige Lumpenpack ...
	};
};

///////////////////////////////////////////////////////////////////////
//	Info HELFEN
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Cavalorn_HELFEN		(C_INFO)
{
	npc		 = 	OUT_4300_CAVALORN;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Cavalorn_HELFEN_Condition;
	information	 = 	DIA_Addon_Cavalorn_HELFEN_Info;

	description	 = 	"Kann ich dir bei der Sache mit den Banditen helfen?";
};

func int DIA_Addon_Cavalorn_HELFEN_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Cavalorn_WASMACHSTDU))
	&& (C_BragoBanditsDead () == FALSE)//Joly:VORSICHT!!!!!muss als letztes Stehen
	{
		return TRUE;
	};
};

func void DIA_Addon_Cavalorn_HELFEN_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Cavalorn_HELFEN_15_00"); //Kann ich dir bei der Sache mit den Banditen helfen?

	if (Npc_HasEquippedArmor(other) == FALSE)
	&& (hero.guild == GIL_NONE) 
	{
		AI_Output	(self, other, "DIA_Addon_Cavalorn_HELFEN_08_01"); //(lauernd) Vielleicht. Aber so abgemagert, wie du aussiehst, hast du seit Wochen kein richtiges Schwert mehr in den Händen gehalten.
	};
	
	AI_Output	(self, other, "DIA_Addon_Cavalorn_HELFEN_08_02"); //Nun. Ich hab wohl keine andere Wahl, als dein Angebot anzunehmen. Meine Zeit wird knapp.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_HELFEN_08_03"); //Also, pass auf. Den Weg hier runter ist eins dieser dreckigen Erdlöcher, in denen sich die Banditen gerne verstecken.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_HELFEN_08_04"); //Die Kerle dort sind genau die, die meinen Kram gestohlen haben.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_HELFEN_08_05"); //Sag Bescheid, wenn du bereit bist und dann schnappen wir uns das Lumpenpack.
	
	MIS_Addon_Cavalorn_KillBrago = LOG_RUNNING;
	
	Log_CreateTopic (TOPIC_Addon_KillBrago, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_KillBrago, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_KillBrago,"Cavalorn ist etwas wertvolles von den Banditen in seiner Nähe gestohlen worden. Er will, dass wir zusammen die Banditen aufmischen."); 

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

///////////////////////////////////////////////////////////////////////
//	Info AUSRUESTUNG
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Cavalorn_AUSRUESTUNG		(C_INFO)
{
	npc		 = 	OUT_4300_CAVALORN;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Cavalorn_AUSRUESTUNG_Condition;
	information	 = 	DIA_Addon_Cavalorn_AUSRUESTUNG_Info;

	description	 = 	"Ich brauche bessere Ausrüstung.";
};

func int DIA_Addon_Cavalorn_AUSRUESTUNG_Condition ()
{
	if 	(MIS_Addon_Cavalorn_KillBrago != 0)
	{
		return TRUE;
	};
};

func void DIA_Addon_Cavalorn_AUSRUESTUNG_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Cavalorn_AUSRUESTUNG_15_00"); //Ich brauche bessere Ausrüstung.
		
		if (C_BragoBanditsDead () == FALSE)
		{
			AI_Output	(self, other, "DIA_Addon_Cavalorn_AUSRUESTUNG_08_01"); //Sehr viel haben die Schweine mir nicht gelassen.
		};
		
	AI_Output	(self, other, "DIA_Addon_Cavalorn_AUSRUESTUNG_08_02"); //Ich kann dir ein Wolfsmesser geben. Reicht dir das erst mal?
	AI_Output	(other, self, "DIA_Addon_Cavalorn_AUSRUESTUNG_15_03"); //Messer ist gut.

	CreateInvItems (self, ItMW_Addon_Knife01, 1);									
	B_GiveInvItems (self, other, ItMW_Addon_Knife01, 1);					
	 
	AI_Output	(other, self, "DIA_Addon_Cavalorn_AUSRUESTUNG_15_04"); //Aber wie steht's mit Heilung?
	AI_Output	(self, other, "DIA_Addon_Cavalorn_AUSRUESTUNG_08_05"); //Ich hätte hier noch 2 Heiltränke. Interesse?
	AI_Output	(other, self, "DIA_Addon_Cavalorn_AUSRUESTUNG_15_06"); //Klar. Her damit.
	
	CreateInvItems (self, ITPO_REVIVED_HEALTH_01, 2);									
	B_GiveInvItems (self, other, ITPO_REVIVED_HEALTH_01, 2);					

};

///////////////////////////////////////////////////////////////////////
//	Info LETSKILLBANDITS
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Cavalorn_LETSKILLBANDITS		(C_INFO)
{
	npc		 = 	OUT_4300_CAVALORN;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Cavalorn_LETSKILLBANDITS_Condition;
	information	 = 	DIA_Addon_Cavalorn_LETSKILLBANDITS_Info;

	description	 = 	"Lass uns die Kerle aufmischen.";
};

func int DIA_Addon_Cavalorn_LETSKILLBANDITS_Condition ()
{
	if (MIS_Addon_Cavalorn_KillBrago == LOG_RUNNING)
	&& (C_BragoBanditsDead () == FALSE)	//Joly:VORSICHT!!!!!muss als letztes Stehen
		{
			return TRUE;
		};
};

func void DIA_Addon_Cavalorn_LETSKILLBANDITS_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Cavalorn_LETSKILLBANDITS_15_00"); //Lass uns die Kerle aufmischen.
	AI_Output	(self, other, "DIA_Addon_Cavalorn_LETSKILLBANDITS_08_01"); //Alles klar. Halte mir einfach den Rücken frei, ok?
	AI_Output	(self, other, "DIA_Addon_Cavalorn_LETSKILLBANDITS_08_02"); //Jetzt werden die ihr blaues Wunder erleben.
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine	(self,"KillBandits");

	if (Bdt_1013_Away == FALSE)
	{
		Ambusher_1013.aivar[AIV_EnemyOverride] = FALSE;
	} else {
		Ambusher_1013.guild = GIL_OUT;
		CreateInvItems (Ambusher_1013,ITAR_LEATHER_L,1);
		AI_EquipArmor 	(Ambusher_1013,ITAR_LEATHER_L);
	};
	Ambusher_1014.aivar[AIV_EnemyOverride] = FALSE;
	Ambusher_1015.aivar[AIV_EnemyOverride] = FALSE;
};

func void B_Addon_Cavalorn_VatrasBrief ()
{
		AI_Output	(self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_00"); //Dann kann ich jetzt endlich meinen Auftrag erledigen. Hab schon viel zu viel Zeit verloren.
		AI_Output	(other, self, "DIA_Addon_Cavalorn_VatrasBrief_15_01"); //Was für eine Mission...?
		AI_Output	(self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_02"); //(zu sich selbst) Äh. ja. Ich muss erst in die Stadt und dann später ...
		AI_Output	(self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_03"); //(seufzt) Ich weiß nicht, wie ich das alles rechtzeitig schaffen soll.
	
	if (Npc_HasEquippedArmor(hero) == FALSE)
	&& (hero.guild == GIL_NONE) 
	&& (Mil_310_schonmalreingelassen == FALSE)
	&& (Mil_333_schonmalreingelassen == FALSE)
	{
		AI_Output	(self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_11"); //Ach, ja, eins noch. Kauf dir bei den Bauern erst mal ein paar anständige Klamotten.
		AI_Output	(self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_12"); //Sonst hält dich noch jemand für 'nen Banditen. Hier hast du ein paar Münzen.
		CreateInvItems (self, ItMi_Gold, 50);									
		B_GiveInvItems (self, other, ItMi_Gold, 50);	
	};
	
	MIS_Addon_Cavalorn_KillBrago = LOG_SUCCESS;

	Npc_ExchangeRoutine	(self,"Stadt");
	AI_UnequipArmor (self);
	CreateInvItems (self,ITAR_BAU_L,1);
	AI_EquipArmor 	(self,ITAR_BAU_L);
	B_GivePlayerXP (XP_Addon_Cavalorn_KillBrago);

	self.aivar[AIV_PARTYMEMBER] = FALSE;
};

///////////////////////////////////////////////////////////////////////
//	Info BragoKilled
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Cavalorn_BragoKilled		(C_INFO)
{
	npc		 = 	OUT_4300_CAVALORN;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Cavalorn_BragoKilled_Condition;
	information	 = 	DIA_Addon_Cavalorn_BragoKilled_Info;

	important	 = 	TRUE;
};

func int DIA_Addon_Cavalorn_BragoKilled_Condition ()
{
	if 	(Npc_GetDistToWP(self,"NW_XARDAS_BANDITS_LEFT")<500) 
	&& 	(MIS_Addon_Cavalorn_KillBrago == LOG_RUNNING)
	&&	(C_BragoBanditsDead () == TRUE)//Joly:VORSICHT!!!!!muss als letztes Stehen
		{
			return TRUE;
		};
};

func void DIA_Addon_Cavalorn_BragoKilled_Info ()
{
	AI_Output	(self, other, "DIA_Addon_Cavalorn_BragoKilled_08_00"); //So, das wäre erledigt. Hah. Sie hätten sich eben nicht mit mir anlegen sollen.
	
	B_Addon_Cavalorn_VatrasBrief ();
	
};

///////////////////////////////////////////////////////////////////////
//	Info PCKilledBrago
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Cavalorn_PCKilledBrago		(C_INFO)
{
	npc		 = 	OUT_4300_CAVALORN;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Cavalorn_PCKilledBrago_Condition;
	information	 = 	DIA_Addon_Cavalorn_PCKilledBrago_Info;

	description	 = 	"Die Banditen sind erledigt.";
};

func int DIA_Addon_Cavalorn_PCKilledBrago_Condition ()
{
	if 	(MIS_Addon_Cavalorn_KillBrago == 0)
	&&  (Npc_KnowsInfo (other, DIA_Addon_Cavalorn_WASMACHSTDU))
	&&	(C_BragoBanditsDead () == TRUE) 	//Joly:VORSICHT!!!!!muss als letztes Stehen
	{
		return TRUE;
	};
};

func void DIA_Addon_Cavalorn_PCKilledBrago_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Cavalorn_PCKilledBrago_15_00"); //Die Banditen sind erledigt.

	B_Addon_Cavalorn_VatrasBrief ();

};

// ************************************************************
// 			  				WannaLearn
// ************************************************************
instance DIA_Addon_Cavalorn_WannaLearn (C_INFO)
{
	npc		 	= OUT_4300_CAVALORN;
	nr		 	= 7;
	condition	= DIA_Addon_Cavalorn_WannaLearn_Condition;
	information	= DIA_Addon_Cavalorn_WannaLearn_Info;
	permanent 	= FALSE;
	description	= "Kannst du mir was beibringen?";
};

func int DIA_Addon_Cavalorn_WannaLearn_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Cavalorn_Hallo))
	&& (C_BragoBanditsDead () == TRUE)//Joly:VORSICHT!!!!!muss als letztes Stehen
		{
			return TRUE;
		};
};

func void DIA_Addon_Cavalorn_WannaLearn_Info ()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_WannaLearn_15_00"); //Kannst du mir was beibringen?
	AI_Output (self, other, "DIA_Addon_Cavalorn_WannaLearn_08_01"); //Sicher. Das weißt du doch. Mensch, dir haben sie ja ganz schön zugesetzt.
	AI_Output (self, other, "DIA_Addon_Cavalorn_WannaLearn_08_02"); //Du kannst dich an gar nichts mehr erinnern, was?
	
	Cavalorn_Addon_TeachPlayer = TRUE;
	Log_CreateTopic (Topic_OutTeacher,LOG_NOTE);
	B_LogEntry (Topic_OutTeacher, LogText_Addon_Cavalorn_Teach);
};

// ************************************************************
// 			  				TEACH
// ************************************************************
var int Addon_Cavalorn_Merke_Bow;
var int Addon_Cavalorn_Merke_1h;
// ------------------------------------------------------

instance DIA_Addon_Cavalorn_TEACH (C_INFO)
{
	npc		 	= OUT_4300_CAVALORN;
	nr		 	= 8;
	condition	= DIA_Addon_Cavalorn_TEACH_Condition;
	information	= DIA_Addon_Cavalorn_TEACH_Info;
	permanent 	= TRUE;
	description	= "Ich will deine Fähigkeiten erlernen.";
};

func int DIA_Addon_Cavalorn_TEACH_Condition ()
{
	if (Cavalorn_Addon_TeachPlayer == TRUE)
	{
		return TRUE;
	};
};

func VOID DIA_Addon_Cavalorn_TEACH_Choices ()
{
	Info_ClearChoices (DIA_Addon_Cavalorn_Teach);
	Info_AddChoice (DIA_Addon_Cavalorn_Teach, DIALOG_BACK, DIA_Addon_Cavalorn_Teach_Back);

	if (Npc_GetTalentSkill (other,NPC_TALENT_SNEAK) == FALSE) 
			{
				Info_AddChoice		(DIA_Addon_Cavalorn_Teach, B_BuildLearnString("Schleichen"	, B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, 1))		,DIA_Addon_Cavalorn_Teach_Sneak);
			};

	Info_AddChoice (DIA_Addon_Cavalorn_Teach, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(other, NPC_TALENT_BOW, 1))	 ,DIA_Addon_Cavalorn_Teach_Bow_1);
	Info_AddChoice (DIA_Addon_Cavalorn_Teach, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent(other, NPC_TALENT_BOW, 1)*5) ,DIA_Addon_Cavalorn_Teach_Bow_5);
	Info_AddChoice (DIA_Addon_Cavalorn_Teach, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(other, NPC_TALENT_1H, 1))	 ,DIA_Addon_Cavalorn_Teach_1H_1);
	Info_AddChoice (DIA_Addon_Cavalorn_Teach, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent(other, NPC_TALENT_1H, 1)*5)	 ,DIA_Addon_Cavalorn_Teach_1H_5);
	
};
func void DIA_Addon_Cavalorn_TEACH_Info ()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_TEACH_15_00"); //Ich will deine Fähigkeiten erlernen.
	AI_Output (self, other, "DIA_Addon_Cavalorn_TEACH_08_01"); //Sicher. Was willst du wissen
	
	Addon_Cavalorn_Merke_Bow = other.HitChance[NPC_TALENT_BOW];
	Addon_Cavalorn_Merke_1h =  other.HitChance[NPC_TALENT_1H];
	
	DIA_Addon_Cavalorn_TEACH_Choices ();
};

FUNC VOID DIA_Addon_Cavalorn_Teach_Sneak ()
{
	if (B_TeachThiefTalent (self, other, NPC_TALENT_SNEAK))
		{
			AI_Output			(self, other, "DIA_Addon_Cavalorn_Teach_Sneak_08_00"); //Mit weichen Sohlen hast du eine größere Chance, dich deinen Gegnern zu nähern, ohne dass sie es merken.
		};

	DIA_Addon_Cavalorn_TEACH_Choices ();
};

FUNC VOID DIA_Addon_Cavalorn_Teach_BOW_1 ()
{
	B_TeachFightTalentPercent (self, other, NPC_TALENT_BOW, 1, 90);
	
	DIA_Addon_Cavalorn_TEACH_Choices ();
};

FUNC VOID DIA_Addon_Cavalorn_Teach_BOW_5 ()
{
	B_TeachFightTalentPercent (self, other, NPC_TALENT_BOW, 5, 90);
	
	DIA_Addon_Cavalorn_TEACH_Choices ();
};

FUNC VOID DIA_Addon_Cavalorn_Teach_1H_1 ()
{
	B_TeachFightTalentPercent (self, other, NPC_TALENT_1H, 1, 30);
	
	DIA_Addon_Cavalorn_TEACH_Choices ();
};

FUNC VOID DIA_Addon_Cavalorn_Teach_1H_5 ()
{
	B_TeachFightTalentPercent (self, other, NPC_TALENT_1H, 5, 30);

	DIA_Addon_Cavalorn_TEACH_Choices ();
};

FUNC VOID DIA_Addon_Cavalorn_Teach_Back ()
{
	if (Addon_Cavalorn_Merke_Bow < other.HitChance[NPC_TALENT_BOW])
	|| (Addon_Cavalorn_Merke_1h  < other.HitChance[NPC_TALENT_1H])
	{
		AI_Output (self ,other,"DIA_Addon_Cavalorn_Teach_BACK_08_00"); //Schon besser so. Du hast 'ne Menge verlernt seit damals, aber das kriegen wir schon wieder hin.
	};

	Info_ClearChoices (DIA_Addon_Cavalorn_Teach);
};

















