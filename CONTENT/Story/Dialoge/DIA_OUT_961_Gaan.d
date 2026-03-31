///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Gaan_EXIT   (C_INFO)
{
	npc         = OUT_961_GAAN;
	nr          = 999;
	condition   = DIA_Gaan_EXIT_Condition;
	information = DIA_Gaan_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
var int DIA_Gaan_EXIT_oneTime;
FUNC INT DIA_Gaan_EXIT_Condition()
{
		return TRUE;
};

FUNC VOID DIA_Gaan_EXIT_Info()
{
	AI_StopProcessInfos (self);
	if (DIA_Gaan_EXIT_oneTime == FALSE)
	{
	Npc_ExchangeRoutine	(self,"Start");
	DIA_Gaan_EXIT_oneTime = TRUE;
	};
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_HALLO		(C_INFO)
{
	npc		 = 	OUT_961_GAAN;
	nr		 = 	3;
	condition	 = 	DIA_Gaan_HALLO_Condition;
	information	 = 	DIA_Gaan_HALLO_Info;

	description	 = 	"Ziemlich weitläufig, euer Land hier oben.";
};

func int DIA_Gaan_HALLO_Condition ()
{
	return TRUE;
};

func void DIA_Gaan_HALLO_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_HALLO_15_00"); //Ziemlich weitläufig, euer Land hier oben.
	AI_Output			(self, other, "DIA_Gaan_HALLO_03_01"); //Ist ganz nett. Aber wenn du durch den Pass da hinten gehst, dann wirst du das nicht mehr denken.
	AI_Output			(self, other, "DIA_Gaan_HALLO_03_02"); //Wenn dich dieser kleine Landstrich hier schon beeindruckt, dann wird es das Minental dahinter erst recht.
	AI_Output			(other, self, "DIA_Gaan_WASMACHSTDU_15_00"); //Wer bist du?
	AI_Output			(self, other, "DIA_Gaan_WASMACHSTDU_03_01"); //Mein Name ist Gaan. Ich bin Jäger und arbeite für Bengar, den Bauern hier auf dem Weidenplateau.
	AI_Output			(self, other, "DIA_Gaan_WASMACHSTDU_03_02"); //Ich bin meistens hier draußen und lass mir die Sonne auf den Bauch scheinen.
	AI_Output	(self, other, "DIA_Addon_Gaan_AufgabeBeimRing_03_01"); //Ich halte für uns, den Eingang zum Pass im Auge. Wer rein geht und wer raus kommt.
	AI_Output	(self, other, "DIA_Addon_Gaan_AufgabeBeimRing_03_02"); //Seit die Paladine das Tor zum Pass verschlossen haben, tat sich da allerdings recht wenig.
};

///////////////////////////////////////////////////////////////////////
//	Info wald
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_WALD		(C_INFO)
{
	npc		 = 	OUT_961_GAAN;
	nr		 = 	5;
	condition	 = 	DIA_Gaan_WALD_Condition;
	information	 = 	DIA_Gaan_WALD_Info;

	description	 = 	"Was muss ich über das Minental wissen?";
};

func int DIA_Gaan_WALD_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Gaan_HALLO))
		{
				return TRUE;
		};
};

func void DIA_Gaan_WALD_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_WALD_15_00"); //Was muss ich über das Minental wissen?
	AI_Output			(self, other, "DIA_Gaan_WALD_03_01"); //Keine Ahnung. Ich habe nur einmal einen flüchtigen Blick über das Tal geworfen. Sah ziemlich gefährlich aus.
	AI_Output			(self, other, "DIA_Gaan_WALD_03_02"); //Am besten, du entfernst dich nicht all zu weit von den Trampelpfaden, wenn du durch den Pass dort hin gehst.
	AI_Output			(self, other, "DIA_Gaan_WALD_03_03"); //Entweder du nimmst den Weg durch die große Schlucht oder den Weg über die Steinbrücke. Der ist kürzer und ungefährlicher.
	AI_Output			(self, other, "DIA_Gaan_WALD_03_04"); //Jetzt, da die Orks überall herumstreunen, sollte man sich schon ein wenig vorsehen.
	AI_Output			(self, other, "DIA_Gaan_WALD_03_05"); //Ich will dich ja nicht zur Kräuterhexe schleppen müssen.

	AI_Output			(other, self, "DIA_Gaan_SAGITTA_15_00"); //Kräuterhexe?
	AI_Output			(self, other, "DIA_Gaan_SAGITTA_03_01"); //Ihr Name ist Sagitta. Sie ist die Heilerin der Bauern und der anderen Bewohner außerhalb der Hafenstadt.
	AI_Output			(self, other, "DIA_Gaan_SAGITTA_03_02"); //Ein recht seltsames Frauenzimmer.
	AI_Output			(self, other, "DIA_Gaan_SAGITTA_03_03"); //Niemand geht wirklich gerne zu ihr und alle zerreißen sich gerne das Maul über sie.
	AI_Output			(self, other, "DIA_Gaan_SAGITTA_03_04"); //Aber wenn du krank bist, findest du keine bessere Hilfe als Sagitta und ihre Heilkräuterküche.
	AI_Output			(self, other, "DIA_Gaan_SAGITTA_03_05"); //Du findest sie in dem Waldstreifen hinter Sekobs Hof.
};

// ************************************************************
// 			  			  ASK TEACHER 
// ************************************************************

INSTANCE DIA_Gaan_AskTeacher (C_INFO)
{
	npc			= OUT_961_GAAN;
	nr          = 10;
	condition	= DIA_Gaan_AskTeacher_Condition;
	information	= DIA_Gaan_AskTeacher_Info;

	description = "Kannst du mir was über die Jagd beibringen?";
};                       

FUNC INT DIA_Gaan_AskTeacher_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Gaan_AskTeacher_Info()
{
	AI_Output(other,self,"DIA_Gaan_AskTeacher_15_00"); //Kannst du mir was über die Jagd beibringen?
	AI_Output(self,other,"DIA_Gaan_AskTeacher_03_01"); //Kein Problem. Für 100 Goldmünzen könnte ich dir zeigen, wie du die Tiere, die du erlegst, ausweiden kannst.
	AI_Output(self,other,"DIA_Gaan_AskTeacher_03_02"); //Felle und andere Tiertrophäen bringen eine Menge Geld auf dem Markt.
		
	Log_CreateTopic	(TOPIC_Teacher, LOG_NOTE);
	B_LogEntry		(TOPIC_Teacher, "Bei Gaan kann ich lernen wie man Tiere ausnimmt.");
};


// ************************************************************
// 			  			  PAY TEACHER 
// ************************************************************

INSTANCE DIA_Gaan_PayTeacher (C_INFO)
{
	npc			= OUT_961_GAAN;
	nr          = 11;
	condition	= DIA_Gaan_PayTeacher_Condition;
	information	= DIA_Gaan_PayTeacher_Info;
	permanent	= TRUE;
	description = "Here. 100 gold coins for your expertise on gutting animals. ";
};                       

var int DIA_Gaan_PayTeacher_noPerm;

FUNC INT DIA_Gaan_PayTeacher_Condition()
{
	if 	(Npc_KnowsInfo (other, DIA_Gaan_AskTeacher))
		&& (DIA_Gaan_PayTeacher_noPerm == FALSE)
			{
				return TRUE;
			};
};

FUNC VOID DIA_Gaan_PayTeacher_Info()
{
	AI_Output(other,self,"DIA_Gaan_PayTeacher_15_00"); //Hier. 100 Goldmünzen für dein Wissen, Tiere auszunehmen.

	if (B_GiveInvItems (other, self, ItMi_Gold, 100))
	{
		AI_Output(self,other,"DIA_Gaan_PayTeacher_03_01"); //Danke. Jetzt kommen wir ins Geschäft.
		Gaan_TeachPlayer = TRUE;
		DIA_Gaan_PayTeacher_noPerm = TRUE;
	}
	else	
	{
		AI_Output(self,other,"DIA_Gaan_PayTeacher_03_02"); //Frag mich später noch mal, wenn du das Geld hast.
	};
};


///////////////////////////////////////////////////////////////////////
//	Info TeachHunting
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_TEACHHUNTING		(C_INFO)
{
	npc		 = 	OUT_961_GAAN;
	nr          = 12;
	condition	 = 	DIA_Gaan_TEACHHUNTING_Condition;
	information	 = 	DIA_Gaan_TEACHHUNTING_Info;
	permanent	= TRUE;
	description	 = 	"Was kannst du mir beibringen?";
};

func int DIA_Gaan_TEACHHUNTING_Condition ()
{
	if (Gaan_TeachPlayer == TRUE)
		{
				return TRUE;
		};
};

func void DIA_Gaan_TEACHHUNTING_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_TEACHHUNTING_15_00"); //Was kannst du mir beibringen?
	if 	(
			(PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Claws] == FALSE)
			||(PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Fur] == FALSE)
			||(PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_BFSting] == FALSE)
			||(PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_BFWing] == FALSE)
			||(PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Teeth] == FALSE)
			||((PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_DrgSnapperHorn] == FALSE) && (MIS_Gaan_Snapper == LOG_SUCCESS))
		)
		{
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_03_01"); //Kommt drauf an, was willst du wissen?

			Info_AddChoice		(DIA_Gaan_TEACHHUNTING, DIALOG_BACK, DIA_Gaan_TEACHHUNTING_BACK);
		
			if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_ReptileSkin] == FALSE)
			{ 
				Info_AddChoice	(DIA_Gaan_TEACHHUNTING, B_BuildLearnString ("Reptilienhäute",B_GetLearnCostTalent (other,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_ReptileSkin)),  DIA_Gaan_TEACHHUNTING_ReptileSkin);
			};
			if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Teeth] == FALSE)
			{ 
				Info_AddChoice	(DIA_Gaan_TEACHHUNTING, B_BuildLearnString ("Zähne reissen",B_GetLearnCostTalent (other,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)),  DIA_Gaan_TEACHHUNTING_Teeth);
			};
			if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Claws] == FALSE)
			{ 
				Info_AddChoice	(DIA_Gaan_TEACHHUNTING, B_BuildLearnString ("Klauen hacken",B_GetLearnCostTalent (other,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)),  DIA_Gaan_TEACHHUNTING_Claws);
			};
			if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_Fur] == FALSE)
			{ 
				Info_AddChoice	(DIA_Gaan_TEACHHUNTING, B_BuildLearnString ("Fell",B_GetLearnCostTalent (other,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)),  DIA_Gaan_TEACHHUNTING_Fur);
			};
			if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_BFSting] == FALSE)
			{ 
				Info_AddChoice	(DIA_Gaan_TEACHHUNTING, B_BuildLearnString ("Blutfliegenstachel",B_GetLearnCostTalent (other,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)),  DIA_Gaan_TEACHHUNTING_BFSting);
			};
			if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_BFWing] == FALSE)
			{ 
				Info_AddChoice	(DIA_Gaan_TEACHHUNTING, B_BuildLearnString ("Blutfliegenflügel",B_GetLearnCostTalent (other,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFWing)),  DIA_Gaan_TEACHHUNTING_BFWing);
			};
			if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_DrgSnapperHorn] == FALSE)
			&& (MIS_Gaan_Snapper == LOG_SUCCESS)
			{ 
				Info_AddChoice	(DIA_Gaan_TEACHHUNTING, B_BuildLearnString ("Drachensnapperhorn",B_GetLearnCostTalent (other,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_DrgSnapperHorn)),  DIA_Gaan_TEACHHUNTING_DrgSnapperHorn);
			};
		}
		else
		{
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_03_02"); //Ich kann dir im Moment nicht mehr beibringen, als du ohnehin schon weißt. Tut mir Leid.
		};
};

func void DIA_Gaan_TEACHHUNTING_BACK()
{
	Info_ClearChoices	(DIA_Gaan_TEACHHUNTING);
};

// ------ Reptile Skin ------
func void DIA_Gaan_TEACHHUNTING_ReptileSkin()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, other, TROPHY_ReptileSkin))
		{
		};

		Info_ClearChoices	(DIA_Gaan_TEACHHUNTING);
		Info_AddChoice		(DIA_Gaan_TEACHHUNTING, DIALOG_BACK, DIA_Gaan_TEACHHUNTING_BACK);
		
};

// ------ Klauen hacken ------
func void DIA_Gaan_TEACHHUNTING_Claws()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, other, TROPHY_Claws))
		{
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_Claws_03_00"); //Tiere geben ihre Klauen nicht sehr gerne her. Du musst schon sehr genau den Punkt treffen, an dem du mit deinem Messer ansetzt.
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_Claws_03_01"); //Die Haltung deiner Hand sollte etwas verschränkt sein. Mit einem kräftigen Ruck trennst du dann die Klaue ab.
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_Claws_03_02"); //Klauen sind immer ein begehrtes Zahlungsmittel bei einem Händler.
		
		};

		Info_ClearChoices	(DIA_Gaan_TEACHHUNTING);
		Info_AddChoice		(DIA_Gaan_TEACHHUNTING, DIALOG_BACK, DIA_Gaan_TEACHHUNTING_BACK);
		
};

// ------ Fell abziehen ------
func void DIA_Gaan_TEACHHUNTING_Teeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, other, TROPHY_Teeth))
		{
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_Teeth_03_00"); //Das einfachste, was du Tieren entnehmen kannst, sind seine Zähne. Du fährst mit deinem Messer in seinem Maul um das Gebiss.
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_Teeth_03_01"); //Dann trennst es geschickt mit einem Ruck vom Schädel des Tieres.
	
			
		};

	Info_ClearChoices	(DIA_Gaan_TEACHHUNTING);
	Info_AddChoice		(DIA_Gaan_TEACHHUNTING, DIALOG_BACK, DIA_Gaan_TEACHHUNTING_BACK);
};

// ------ Fell abziehen ------
func void DIA_Gaan_TEACHHUNTING_Fur()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, other, TROPHY_Fur))
		{
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_Fur_03_00"); //Felle ziehst du am besten ab, indem du einen tiefen Schnitt an den Hinterläufen des Tieres vornimmst.
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_Fur_03_01"); //Dann kannst du das Fell von vorne nach hinten eigentlich immer sehr leicht abziehen.
		};

	Info_ClearChoices	(DIA_Gaan_TEACHHUNTING);
	Info_AddChoice		(DIA_Gaan_TEACHHUNTING, DIALOG_BACK, DIA_Gaan_TEACHHUNTING_BACK);
};

// ------ Blutfliegenstachel ------
func void DIA_Gaan_TEACHHUNTING_BFSting()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, other, TROPHY_BFSting))
		{
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_BFSting_03_00"); //Die Fliege hat am Rücken eine weiche Stelle.
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_BFSting_03_01"); //Wenn du dort mit der Hand gegen drückst, fährt der Stachel sehr weit aus und du kannst ihn mit dem Messer abtrennen.
			
		};

	Info_ClearChoices	(DIA_Gaan_TEACHHUNTING);
	Info_AddChoice		(DIA_Gaan_TEACHHUNTING, DIALOG_BACK, DIA_Gaan_TEACHHUNTING_BACK);
};
// ------ Blutfliegenflügel ------
func void DIA_Gaan_TEACHHUNTING_BFWing ()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, other, TROPHY_BFWing))
		{
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_BFWing_03_00"); //Die Flügel einer Blutfliege entfernst du am besten mit einem Hieb einer scharfen Klinge sehr nah am Körper der Fliege.
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_BFWing_03_01"); //Du musst nur darauf achten, dass du das feine Gewebe der Flügel nicht verletzt. Sie sind nichts mehr wert, wenn du es nicht vorsichtig machst.

		};

	Info_ClearChoices	(DIA_Gaan_TEACHHUNTING);
	Info_AddChoice		(DIA_Gaan_TEACHHUNTING, DIALOG_BACK, DIA_Gaan_TEACHHUNTING_BACK);
};
// ------ DrgSnapperHorn ------
func void DIA_Gaan_TEACHHUNTING_DrgSnapperHorn()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, other, TROPHY_DrgSnapperHorn))
		{
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_DrgSnapperHorn_03_00"); //Jetzt, wo dieser etwas zu groß geratene Snapper tot ist, kann ich dir zeigen, wie man an sein Horn kommt.
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_DrgSnapperHorn_03_01"); //Du stemmst dein Messer tief in die Stirn des Tieres, und hebelst das Ding vorsichtig nach oben.
			AI_Output			(self, other, "DIA_Gaan_TEACHHUNTING_DrgSnapperHorn_03_02"); //Sollte es sich dann noch nicht vom Schädel trennen lassen, hilfst du mit einem zweiten Messer von der anderen Seite nach.
	
			
			CreateInvItems (Gaans_Snapper, ItAt_DrgSnapperHorn, 1); //falls der Snapper ihm gerade vor den Füssen liegt!!
		};

	Info_ClearChoices	(DIA_Gaan_TEACHHUNTING);
	Info_AddChoice		(DIA_Gaan_TEACHHUNTING, DIALOG_BACK, DIA_Gaan_TEACHHUNTING_BACK);
};


///////////////////////////////////////////////////////////////////////
//	Info jagd
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_JAGD		(C_INFO)
{
	npc		 = 	OUT_961_GAAN;
	nr		 = 	80;
	condition	 = 	DIA_Gaan_JAGD_Condition;
	information	 = 	DIA_Gaan_JAGD_Info;
	permanent	 = 	TRUE;

	description	 = 	"Was macht die Jagd?";
};

func int DIA_Gaan_JAGD_Condition ()
{
	return TRUE;
};

func void DIA_Gaan_JAGD_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_JAGD_15_00"); //Was macht die Jagd?

	if ((Npc_IsDead(Gaans_Snapper))== FALSE)
		{
			AI_Output			(self, other, "DIA_Gaan_JAGD_03_01"); //Das letzte Tier, das ich erlegen konnte, war eine große Ratte. Nicht sehr ermutigend und schlecht fürs Geschäft.
			AI_Output			(self, other, "DIA_Gaan_JAGD_03_02"); //Seit ein paar Tagen streift so ein schnaubendes Tier in der Gegend herum.
			AI_Output			(self, other, "DIA_Gaan_JAGD_03_03"); //Es tötet nicht nur alles, was sich bewegt, es stört mich auch bei meiner Arbeit.
			Log_CreateTopic (TOPIC_GaanSchnaubi, LOG_MISSION);
			Log_SetTopicStatus(TOPIC_GaanSchnaubi, LOG_RUNNING);
			B_LogEntry (TOPIC_GaanSchnaubi,"Die schnaubende Kreatur macht dem Jäger Gaan zu schaffen. Bevor ich das Vieh nicht beseitige, kann er nicht mehr jagen."); 
			MIS_Gaan_Snapper = LOG_RUNNING;
		}
	else if (Kapitel >= 3)
		{
			AI_Output			(self, other, "DIA_Gaan_JAGD_03_04"); //Es wird immer verrückter hier draußen. Mittlerweile sind Duzende von diesen schnaubenden Tieren aus dem Pass gekommen.
			AI_Output			(self, other, "DIA_Gaan_JAGD_03_05"); //Das Jagen hier oben wird unter diesen Umständen immer schwieriger. Es kann nur noch besser werden.
		}
	else
		{
			AI_Output			(self, other, "DIA_Gaan_JAGD_03_06"); //Ich kann nicht klagen.
		};
};

///////////////////////////////////////////////////////////////////////
//	Info monster
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_MONSTER		(C_INFO)
{
	npc		 = 	OUT_961_GAAN;
	nr		 = 	8;
	condition	 = 	DIA_Gaan_MONSTER_Condition;
	information	 = 	DIA_Gaan_MONSTER_Info;

	description	 = 	"Wie sieht dieses gefährliche Tier aus?";
};

func int DIA_Gaan_MONSTER_Condition ()
{
	if 	(
		(MIS_Gaan_Snapper == LOG_RUNNING)	
		&&((Npc_IsDead(Gaans_Snapper))== FALSE)
		)
			{
					return TRUE;
			};
};

func void DIA_Gaan_MONSTER_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_MONSTER_15_00"); //Wie sieht dieses gefährliche Tier aus?
	AI_Output			(self, other, "DIA_Gaan_MONSTER_03_01"); //Ich weiß es nicht genau. Ich habe es bisher nur hauptsächlich schnauben und kratzen hören. Aber ich habe gesehen, was es anrichten kann.
	AI_Output			(self, other, "DIA_Gaan_MONSTER_03_02"); //Selbst Wölfe sind vor ihm nicht sicher. Einem hat das Biest sogar den Kopf abgebissen.

};

///////////////////////////////////////////////////////////////////////
//	Info monster
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_WASZAHLSTDU		(C_INFO)
{
	npc		 = 	OUT_961_GAAN;
	nr		 = 	9;
	condition	 = 	DIA_Gaan_WASZAHLSTDU_Condition;
	information	 = 	DIA_Gaan_WASZAHLSTDU_Info;

	description	 = 	"Was würdest du zahlen, wenn ich das Tier für dich erledige?";
};

func int DIA_Gaan_WASZAHLSTDU_Condition ()
{
	if 	(
		(Npc_KnowsInfo(other, DIA_Gaan_MONSTER))
		&&((Npc_IsDead(Gaans_Snapper))== FALSE)
		)
			{
					return TRUE;
			};
}; 

func void DIA_Gaan_WASZAHLSTDU_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_WASZAHLSTDU_15_00"); //Was würdest du zahlen, wenn ich das Tier für dich erledige?
	AI_Output			(self, other, "DIA_Gaan_WASZAHLSTDU_03_01"); //Ich würde demjenigen, der es tötet, alles geben, was ich entbehren kann.
	//AI_Output			(self, other, "DIA_Gaan_WASZAHLSTDU_03_02"); //30 Goldmünzen? 
	//Auskommentiert, weil "?" ist auch so gesprochen worden - kommt nicht gut
	B_Say_Gold   (self,other,100);
	MIS_Gaan_Deal = LOG_RUNNING;
};

///////////////////////////////////////////////////////////////////////
//	Info wohermonster
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_WOHERMONSTER		(C_INFO)
{
	npc		 = 	OUT_961_GAAN;
	nr		 = 	10;
	condition	 = 	DIA_Gaan_WOHERMONSTER_Condition;
	information	 = 	DIA_Gaan_WOHERMONSTER_Info;

	description	 = 	"Woher kommt dieses Mistvieh?";
};

func int DIA_Gaan_WOHERMONSTER_Condition ()
{
	if 	(
		(Npc_KnowsInfo(other, DIA_Gaan_MONSTER))
		&&((Npc_IsDead(Gaans_Snapper))== FALSE)
		)
			{
					return TRUE;
			};
};

func void DIA_Gaan_WOHERMONSTER_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_WOHERMONSTER_15_00"); //Woher kommt dieses Mistvieh?
	AI_Output			(self, other, "DIA_Gaan_WOHERMONSTER_03_01"); //Irgendwo aus den Wäldern. Vielleicht auch aus dem Minental. Aber genau weiß ich das nicht.
	AI_Output			(self, other, "DIA_Gaan_WOHERMONSTER_03_02"); //Ich war noch nie im Minental.
 
};


///////////////////////////////////////////////////////////////////////
//	Info MonsterTot
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_MONSTERTOT		(C_INFO)
{
	npc		 = 	OUT_961_GAAN;
	nr		 = 11;
	condition	 = 	DIA_Gaan_MONSTERTOT_Condition;
	information	 = 	DIA_Gaan_MONSTERTOT_Info;
	important	 = 	TRUE;
};

func int DIA_Gaan_MONSTERTOT_Condition ()
{
	if 	(
		(Npc_KnowsInfo(other, DIA_Gaan_MONSTER))
		&&((Npc_IsDead(Gaans_Snapper)) == TRUE)
		)
			{
					return TRUE;
			};
};

func void DIA_Gaan_MONSTERTOT_Info ()
{
	AI_Output			(self, other, "DIA_Gaan_MONSTERTOT_03_00"); //Dieses furchtbare Tier ist tot, nehme ich an.
	AI_Output			(self, other, "DIA_Gaan_MONSTERTOT_03_01"); //Dann kann ich mich bei der Jagd endlich wieder frei bewegen.
	

	if (MIS_Gaan_Deal == LOG_RUNNING)
		{
			AI_Output			(self, other, "DIA_Gaan_MONSTERTOT_03_02");	//Hier hast du das versprochene Geld.

			CreateInvItems (self, ItMi_Gold, 100);									
			B_GiveInvItems (self, other, ItMi_Gold, 100);					
		};
	
	MIS_Gaan_Snapper = LOG_SUCCESS;
	B_GivePlayerXP (XP_Gaan_WaldSnapper);
	AI_StopProcessInfos (self);
};


// *******************************************************
//				 		SellSkin
// *******************************************************	


instance DIA_Gaan_SellSkin (C_INFO)
{
	npc			= OUT_961_GAAN;
	nr 			= 600;
	condition	= DIA_Gaan_SellSkin_Condition;
	information	= DIA_Gaan_SellSkin_Info;
	permanent	= TRUE;
	description	= "Ich hab hier ein paar Felle für dich ...";
};
func int DIA_Gaan_SellSkin_Condition ()
{
	if (Gaan_TeachPlayer == TRUE)
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ReptileSkin] == TRUE)
	{
		return TRUE;
	};
};
func void DIA_Gaan_SellSkin_Info ()
{
	AI_Output (other, self, "DIA_Bosper_SellFur_15_00"); //Ich hab hier ein paar Felle für dich ...
	
	if (Npc_HasItems(other, itat_LurkerSkin) > 0)
	|| (Npc_HasItems(other, ITAT_REVIVED_SKIN_SNAPPER) > 0)
	|| (Npc_HasItems(other, ITAT_REVIVED_SKIN_DRAGONSNAPPER) > 0)
	|| (Npc_HasItems(other, ITAT_REVIVED_SKIN_RAZOR) > 0)
	|| (Npc_HasItems(other, ITAT_REVIVED_SKIN_BITER) > 0)
	|| (Npc_HasItems(other, ITAT_REVIVED_SKIN_WARAN) > 0)
	|| (Npc_HasItems(other, ITAT_REVIVED_SKIN_FIREWARAN) > 0)
	|| (Npc_HasItems(other, ITAT_REVIVED_SKIN_ALLIGATOR) > 0)
	{

		if (Npc_HasItems(other, itat_LurkerSkin) > 0)
		{
			B_GiveInvItems(self, other, ITMI_GOLD, (Npc_HasItems(other, itat_LurkerSkin) * Value_ReptileSkin) );
			B_GiveInvItems(other, self, itat_LurkerSkin, Npc_HasItems(other, itat_LurkerSkin));
		};
		
		if (Npc_HasItems(other, ITAT_REVIVED_SKIN_SNAPPER) > 0)
		{
			B_GiveInvItems(self, other, ITMI_GOLD, (Npc_HasItems(other, ITAT_REVIVED_SKIN_SNAPPER) * REV_VALUE_SNAPPERSKIN) );
			B_GiveInvItems(other, self, ITAT_REVIVED_SKIN_SNAPPER, Npc_HasItems(other, ITAT_REVIVED_SKIN_SNAPPER));
		};
		if (Npc_HasItems(other, ITAT_REVIVED_SKIN_DRAGONSNAPPER) > 0)
		{
			B_GiveInvItems(self, other, ITMI_GOLD, (Npc_HasItems(other, ITAT_REVIVED_SKIN_DRAGONSNAPPER) * REV_VALUE_DRAGONSNAPPERSKIN) );
			B_GiveInvItems(other, self, ITAT_REVIVED_SKIN_DRAGONSNAPPER, Npc_HasItems(other, ITAT_REVIVED_SKIN_DRAGONSNAPPER));
		};
		if (Npc_HasItems(other, ITAT_REVIVED_SKIN_RAZOR) > 0)
		{
			B_GiveInvItems(self, other, ITMI_GOLD, (Npc_HasItems(other, ITAT_REVIVED_SKIN_RAZOR) * REV_VALUE_RAZORSKIN) );
			B_GiveInvItems(other, self, ITAT_REVIVED_SKIN_RAZOR, Npc_HasItems(other, ITAT_REVIVED_SKIN_RAZOR));
		};
		if (Npc_HasItems(other, ITAT_REVIVED_SKIN_BITER) > 0)
		{
			B_GiveInvItems(self, other, ITMI_GOLD, (Npc_HasItems(other, ITAT_REVIVED_SKIN_BITER) * REV_VALUE_BITERSKIN) );
			B_GiveInvItems(other, self, ITAT_REVIVED_SKIN_BITER, Npc_HasItems(other, ITAT_REVIVED_SKIN_BITER));
		};
		if (Npc_HasItems(other, ITAT_REVIVED_SKIN_WARAN) > 0)
		{
			B_GiveInvItems(self, other, ITMI_GOLD, (Npc_HasItems(other, ITAT_REVIVED_SKIN_WARAN) * REV_VALUE_WARANSKIN) );
			B_GiveInvItems(other, self, ITAT_REVIVED_SKIN_WARAN, Npc_HasItems(other, ITAT_REVIVED_SKIN_WARAN));
		};
		if (Npc_HasItems(other, ITAT_REVIVED_SKIN_FIREWARAN) > 0)
		{
			B_GiveInvItems(self, other, ITMI_GOLD, (Npc_HasItems(other, ITAT_REVIVED_SKIN_FIREWARAN) * REV_VALUE_FIREWARANSKIN) );
			B_GiveInvItems(other, self, ITAT_REVIVED_SKIN_FIREWARAN, Npc_HasItems(other, ITAT_REVIVED_SKIN_FIREWARAN));
		};
		if (Npc_HasItems(other, ITAT_REVIVED_SKIN_ALLIGATOR) > 0)
		{
			B_GiveInvItems(self, other, ITMI_GOLD, (Npc_HasItems(other, ITAT_REVIVED_SKIN_ALLIGATOR) * REV_VALUE_ALLIGATORSKIN) );
			B_GiveInvItems(other, self, ITAT_REVIVED_SKIN_ALLIGATOR, Npc_HasItems(other, ITAT_REVIVED_SKIN_ALLIGATOR));
		};
		
		AI_Output(self,other,"DIA_Gaan_PayTeacher_03_01"); //Danke. Jetzt kommen wir ins Geschäft.
	}
	else
	{
		AI_Output(self,other,"DIA_Gaan_AskTeacher_03_02"); //Felle und andere Tiertrophäen bringen eine Menge Geld auf dem Markt.
	};
};


// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Gaan_PICKPOCKET (C_INFO)
{
	npc			= OUT_961_GAAN;
	nr			= 900;
	condition	= DIA_Gaan_PICKPOCKET_Condition;
	information	= DIA_Gaan_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_40;
};                       

FUNC INT DIA_Gaan_PICKPOCKET_Condition()
{
	C_Beklauen (23, 35);
};
 
FUNC VOID DIA_Gaan_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Gaan_PICKPOCKET);
	Info_AddChoice		(DIA_Gaan_PICKPOCKET, DIALOG_BACK 		,DIA_Gaan_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Gaan_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Gaan_PICKPOCKET_DoIt);
};

func void DIA_Gaan_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Gaan_PICKPOCKET);
};
	
func void DIA_Gaan_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Gaan_PICKPOCKET);
};































