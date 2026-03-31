// ***************************************************************
//								EXIT
// ***************************************************************

// ---------------------
	var int Lothar_ImOV;
// ---------------------

INSTANCE DIA_Lothar_EXIT   (C_INFO)
{
	npc         = Pal_203_Lothar;
	nr          = 999;
	condition   = DIA_Lothar_EXIT_Condition;
	information = DIA_Lothar_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Lothar_EXIT_Condition()
{	
	if (Lothar_ImOV == TRUE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Lothar_EXIT_Info() 
{
	AI_StopProcessInfos (self);
};

// ***************************************************************
//							First EXIT
// ***************************************************************

INSTANCE DIA_Lothar_FirstEXIT   (C_INFO)
{
	npc         = Pal_203_Lothar;
	nr          = 999;
	condition   = DIA_Lothar_FirstEXIT_Condition;
	information = DIA_Lothar_FirstEXIT_Info;
	permanent   = TRUE;
	description = "Ich muss weiter!";
};
FUNC INT DIA_Lothar_FirstEXIT_Condition()
{	
	if (Lothar_ImOV == FALSE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Lothar_FirstEXIT_Info() 
{
	AI_Output (other, self, "DIA_Lothar_FirstEXIT_15_00"); //Ich muss weiter!
	if (Lothar_Regeln == FALSE)
	{
		AI_Output (self, other, "DIA_Lothar_FirstEXIT_01_01"); //Warte! Du kennst die neuen Gesetze der Stadt noch nicht!
		AI_Output (other, self, "DIA_Lothar_FirstEXIT_15_02"); //Später.
	}
	else
	{
		if (Player_TalkedAboutDragons == TRUE)
		&& ((hero.guild != GIL_PAL)	&&	(hero.guild != GIL_KDF))
		{
			AI_Output (self, other, "DIA_Lothar_FirstEXIT_01_03"); //Wenn mir noch einmal zu Ohren kommt, dass du den Leuten hier was von Drachen erzählst, bekommst du mächtigen Ärger mit mir, klar?
		}
		else
		{
			AI_Output (self, other, "DIA_Lothar_FirstEXIT_01_04"); //Solange du in Khorinis bist, kannst du dich sicher fühlen.

			if (hero.guild != GIL_PAL)
			{
				AI_Output (self, other, "DIA_Lothar_FirstEXIT_01_05"); //Die Paladine des Königs wachen jetzt über diese Stadt!
			};
		};

		Lothar_ImOV = TRUE;
		Npc_ExchangeRoutine (self, "START");
	};

	// ------- Canthars TA auswechseln -------
	if (Canthar_InStadt == FALSE)
	{
		Npc_ExchangeRoutine (Canthar, "START");
		Canthar_InStadt = TRUE;
	};

	AI_StopProcessInfos (self);
};


// ***************************************************************
//							Hallo
// ***************************************************************

instance DIA_Lothar_Hallo (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	1;
	condition	 = 	DIA_Lothar_Hallo_Condition;
	information	 = 	DIA_Lothar_Hallo_Info;
	permanent    =  FALSE;
	important	 = 	TRUE;
};
func int DIA_Lothar_Hallo_Condition ()
{
	if (self.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		return TRUE;
	};
};

func void DIA_Lothar_Hallo_Info ()
{
	AI_Output (self, other, "DIA_Lothar_Hallo_01_00"); //Halt, Fremder!

	if (Mil_310_schonmalreingelassen == FALSE)
	&& (Mil_333_schonmalreingelassen == FALSE)
	&& ((hero.guild != GIL_PAL)	&&	(hero.guild != GIL_KDF))
	{
		AI_Output (self, other, "DIA_Lothar_Hallo_01_01"); //Ich habe dich nicht durch dieses Stadttor kommen sehen.
		AI_Output (other, self, "DIA_Lothar_Hallo_15_02"); //Und?
		AI_Output (self, other, "DIA_Lothar_Hallo_01_03"); //Und die Wachen am anderen Stadttor haben Befehl, keine Unbekannten in die Stadt zu lassen.
		AI_Output (other, self, "DIA_Lothar_Hallo_15_04"); //Tjaaa ...
		AI_Output (self, other, "DIA_Lothar_Hallo_01_05"); //Ich werde ein ernstes Wort mit den beiden reden müssen!
		AI_Output (self, other, "DIA_Lothar_Hallo_01_06"); //Aber nun zu uns:
	};

	AI_Output (self, other, "DIA_Lothar_Hallo_01_07"); //Ich bin Lothar. Paladin des Königs und demütiger Diener Innos', deines Herrn.
	AI_Output (self, other, "DIA_Lothar_Hallo_01_08"); //Unser Kommandant, Lord Hagen, hat mich mit der Aufgabe betraut, allen Neuankömmlingen die neuen Gesetze zu erklären, die für alle Bewohner der Stadt gelten.

	if Npc_KnowsInfo (other, DIA_Lester_SEND_XARDAS)
	{
		B_StartOtherRoutine (Lester, "XARDAS");
	};
};

// ***************************************************************
//						Wichtige Nachricht			E1
// ***************************************************************
instance DIA_Lothar_MESSAGE		(C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	1;
	condition	 = 	DIA_Lothar_MESSAGE_Condition;
	information	 = 	DIA_Lothar_MESSAGE_Info;
	permanent    =  FALSE;
	description	 = 	"Ich habe eine wichtige Nachricht für den Anführer der Paladine!";
};
func int DIA_Lothar_MESSAGE_Condition ()
{	
	if (Mil_305_schonmalreingelassen == FALSE) 
	&& (hero.guild == GIL_NONE)
	{
		return TRUE;
	};
};
func void DIA_Lothar_MESSAGE_Info ()
{
 	AI_Output (other, self, "DIA_Lothar_MESSAGE_15_00"); //Ich habe eine wichtige Nachricht für den Anführer der Paladine!
	AI_Output (self, other, "DIA_Lothar_MESSAGE_01_01"); //Der ehrenwerte Lord Hagen ist für niemanden zu sprechen.
	AI_Output (self, other, "DIA_Lothar_MESSAGE_01_02"); //Für alle Fragen des gemeinen Volkes ist Lord Andre, der Kommandant der Stadtwache, zuständig.
};	

// ***************************************************************
//							Auge Innos 				E2
// ***************************************************************
instance DIA_Lothar_EyeInnos (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	2;
	condition	 = 	DIA_Lothar_EyeInnos_Condition;
	information	 = 	DIA_Lothar_EyeInnos_Info;
	permanent    =  FALSE;
	description	 = 	"Ich bin gekommen um das Auge Innos zu holen!";
};
func int DIA_Lothar_EyeInnos_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Lothar_MESSAGE))
	&& (LordHagen.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lothar_EyeInnos_Info ()
{
	AI_Output (other, self, "DIA_Lothar_EyeInnos_15_00"); //Ich bin gekommen um das Auge Innos zu holen!

	if ((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		AI_Output (self, other, "DIA_Lothar_EyeInnos_01_01"); //Das Auge ist Angelegenheit von Lord Hagen. Sprich mit ihm darüber.
	}
	else
	{
		AI_Output (self, other, "DIA_Lothar_EyeInnos_01_02"); //Das heilige Auge Innos'! Woher weißt du davon?! Du bist kein Angehöriger des Ordens!
		AI_Output (other, self, "DIA_Lothar_EyeInnos_15_03"); //Ein Magier hat mir davon erzählt.
		AI_Output (self, other, "DIA_Lothar_EyeInnos_01_04"); //Ich weiß nicht, was seine Beweggründe waren, dir eines der Geheimnisse unseres Ordens anzuvertrauen.
		AI_Output (self, other, "DIA_Lothar_EyeInnos_01_05"); //Aber er hatte sicherlich nicht im Sinn, dass DU es in die Finger bekommst.
		AI_Output (other, self, "DIA_Lothar_EyeInnos_15_06"); //Aber...
		AI_Output (self, other, "DIA_Lothar_EyeInnos_01_07"); //Ich will nichts mehr davon hören!
		if (Player_TalkedAboutDragons == TRUE)
		{
			AI_Output (self, other, "DIA_Lothar_EyeInnos_01_08"); //Erst fängst du mit Märchen über Drachen an und dann das - unfassbar!
		};
	};
};	

// ***************************************************************
//							Drachen 				E2
// ***************************************************************
instance DIA_Lothar_Dragons (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	1;
	condition	 = 	DIA_Lothar_Dragons_Condition;
	information	 = 	DIA_Lothar_Dragons_Info;
	permanent    =  FALSE;
	description	 = 	"Hör zu - die Stadt wird von Drachen bedroht!";
};
func int DIA_Lothar_Dragons_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Lothar_MESSAGE))
	&& (LordHagen.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lothar_Dragons_Info ()
{
	AI_Output (other, self, "DIA_Lothar_Dragons_15_00"); //Hör zu - die Stadt wird von Drachen bedroht!
	if ((hero.guild != GIL_PAL)&&(hero.guild != GIL_KDF))
	{
		AI_Output (self, other, "DIA_Lothar_Dragons_01_01"); //Das darf doch nicht wahr sein!
		AI_Output (self, other, "DIA_Lothar_Dragons_01_02"); //Schon wieder so ein Spinner!
		AI_Output (self, other, "DIA_Lothar_Dragons_01_03"); //Wir haben schon genug Unruhe in der Stadt. Auch ohne dass hier irgendwelche Schwachköpfe den Leuten mit Märchen über Drachen Angst machen!
		AI_Output (self, other, "DIA_Lothar_Dragons_01_04"); //Den letzten, der hier was von Drachen erzählt hat, hab ich direkt eingebuchtet und mit dem Gefangenentransport ins Minental geschickt. Also hüte deine Zunge!
		AI_Output (self, other, "DIA_Lothar_Dragons_01_05"); //Wir können hier niemanden gebrauchen, der Panik unter den Leuten verbreitet!
	}
	else
	{
		AI_Output (self, other, "DIA_Lothar_Dragons_01_06"); //Das habe ich schon oft gehört. Ist aber schwer zu glauben.
		AI_Output (self, other, "DIA_Lothar_Dragons_01_07"); //Es wäre besser, wenn du das für dich behältst. Wir müssen Angst und Panik unter den Leuten vermeiden.
	};
	Player_TalkedAboutDragons = TRUE;
};	

// ***************************************************************
//							WerVonDrachen 				E3
// ***************************************************************
instance DIA_Lothar_WhoDragons (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	1;
	condition	 = 	DIA_Lothar_WhoDragons_Condition;
	information	 = 	DIA_Lothar_WhoDragons_Info;
	permanent    =  FALSE;
	description	 = 	"Hier hat schon jemand von den Drachen berichtet?";
};
func int DIA_Lothar_WhoDragons_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Lothar_Dragons))
	&& (LordHagen.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lothar_WhoDragons_Info ()
{
	AI_Output (other, self, "DIA_Lothar_WhoDragons_15_00"); //Hier hat schon jemand von den Drachen berichtet?
	AI_Output (self, other, "DIA_Lothar_WhoDragons_01_01"); //Ja. Der Kerl hieß Diego. Glaube ich jedenfalls.

	if ((hero.guild != GIL_PAL)	&&	(hero.guild != GIL_KDF))
	{
		AI_Output (self, other, "DIA_Lothar_WhoDragons_01_02"); //(droht) Ich hatte ihn gewarnt - genau wie dich! Aber der Spinner wollte einfach nicht aufhören, mir auf den Geist zu gehen!
	};
};	

// ***************************************************************
//							Regeln 				E1
// ***************************************************************
instance DIA_Lothar_Regeln (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	3;
	condition	 = 	DIA_Lothar_Regeln_Condition;
	information	 = 	DIA_Lothar_Regeln_Info;
	permanent    =  FALSE;
	description	 = 	"Gut - erkläre mir die Regeln der Stadt!";
};
func int DIA_Lothar_Regeln_Condition ()
{	
	return TRUE;
};
func void DIA_Lothar_Regeln_Info ()
{
	AI_Output (other, self, "DIA_Lothar_Regeln_15_00"); //(seufzt leicht) Gut - erkläre mir die Regeln der Stadt!
	AI_Output (self, other, "DIA_Lothar_Regeln_01_01"); //Erstens: Der ehrenwerte Paladin Lord Hagen residiert zusammen mit seiner Truppe im oberen Viertel.
	AI_Output (self, other, "DIA_Lothar_Regeln_01_02"); //Deswegen ist der Zutritt zum oberen Viertel nur ehrenwerten Bürgern gestattet.
	AI_Output (self ,other, "DIA_Lothar_Add_01_04"); //Zweitens: Das Rathaus im oberen Viertel dient als Kommandoposten der Paladine. Dort haben nur die Paladine selbst und Angehörige der Miliz Zugang.
	AI_Output (self ,other, "DIA_Lothar_Add_01_05"); //Und drittens: Wer eines Verbrechens abgeklagt ist, muß sich beim Kommandanten der Miliz dafür rechtfertigen.
	AI_Output (self, other, "DIA_Lothar_Regeln_01_05"); //Noch Fragen?
	
	Lothar_Regeln = TRUE;
};	

// ***************************************************************
//							HowCitizen 				E2
// ***************************************************************
instance DIA_Lothar_HowCitizen (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	4;
	condition	 = 	DIA_Lothar_HowCitizen_Condition;
	information	 = 	DIA_Lothar_HowCitizen_Info;
	permanent    =  FALSE;
	description	 = 	"Wie WERDE ich Bürger der Stadt?";
};
func int DIA_Lothar_HowCitizen_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Lothar_Regeln))
	&& (Player_IsApprentice == APP_NONE)
	&& (other.guild == GIL_NONE)
	{
		return TRUE;
	};
};
func void DIA_Lothar_HowCitizen_Info ()
{
	AI_Output (other, self, "DIA_Lothar_Add_15_06"); //Wie WERDE ich Bürger der Stadt?
	AI_Output (self ,other, "DIA_Lothar_Add_01_07"); //Nur wer hier einer ordentlichen Arbeit nachgeht, wird als Bürger der Stadt angesehen!
	AI_Output (self ,other, "DIA_Lothar_Add_01_09"); //Aber denk nur nicht, daß du bei Lord Hagen vorgelassen wirst, nur weil du Bürger der Stadt bist!
	AI_Output (self ,other, "DIA_Lothar_Add_01_10"); //Als Bürger hast du Zugang zum oberen Viertel - mehr nicht!
	AI_Output (self ,other, "DIA_Lothar_Add_01_11"); //Nur als angehöriger der Miliz hast du Zugang zum Rathaus!
};

// ***************************************************************
//							WoArbeit				E3
// ***************************************************************
instance DIA_Lothar_WoArbeit (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	5;
	condition	 = 	DIA_Lothar_WoArbeit_Condition;
	information	 = 	DIA_Lothar_WoArbeit_Info;
	permanent    =  FALSE;
	description	 = 	"Wo finde ich Arbeit?";
};
func int DIA_Lothar_WoArbeit_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Lothar_HowCitizen))
	&& (Player_IsApprentice == APP_NONE)
	&& (other.guild == GIL_NONE)
	{
		return TRUE;
	};
};
func void DIA_Lothar_WoArbeit_Info ()
{
	AI_Output (other, self, "DIA_Lothar_Add_15_14"); //Wo finde ich Arbeit?
	AI_Output (self ,other, "DIA_Lothar_Add_01_15"); //Du wirst dich bei einem der Handwerksmeister hier in der Unterstadt als Lehrling bewerben müssen.
	AI_Output (self ,other, "DIA_Lothar_Add_01_16"); //Sobald einer der Meister dich aufnimmt, bist du Bürger der Stadt.
	AI_Output (self ,other, "DIA_Lothar_Add_01_17"); //Allerdings müssen dafür auch die anderen Meister zustimmen, so will es der Brauch hier in Khorinis.
	AI_Output (self ,other, "DIA_Lothar_Add_01_18"); //Wenn du auf die Idee kommen solltest, im Hafenviertel nach Arbeit zu suchen - vergiß es!
	AI_Output (self ,other, "DIA_Lothar_Add_01_19"); //Da wohnt nur der Abschaum der Stadt. Geh bloß nich dorthin, du würdest es bereuen!
};

// ***************************************************************
//							ToOV 				E2
// ***************************************************************
instance DIA_Lothar_ToOV (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	6;
	condition	 = 	DIA_Lothar_ToOV_Condition;
	information	 = 	DIA_Lothar_ToOV_Info;
	permanent    =  FALSE;
	description	 = 	"Wie komme ich zum oberen Viertel?";
};
func int DIA_Lothar_ToOV_Condition ()
{	
	if (Npc_KnowsInfo(other, DIA_Lothar_Regeln))
	&& (Mil_305_schonmalreingelassen == FALSE)
	&& (Player_IsApprentice == APP_NONE)
	&& (other.guild == GIL_NONE)
	{
		return TRUE;
	};
};
func void DIA_Lothar_ToOV_Info ()
{
	AI_Output (other, self, "DIA_Lothar_ToOV_15_00"); //Wie komme ich zum oberen Viertel?
	AI_Output (self, other, "DIA_Lothar_ToOV_01_01"); //Sag mal, hörst du mir überhaupt zu?!
	AI_Output (self, other, "DIA_Lothar_ToOV_01_02"); //Du bist kein Bürger dieser Stadt. Du kannst dir den Weg sparen - die Wachen werden dich nicht einlassen.
	AI_Output (self, other, "DIA_Lothar_ToOV_01_03"); //Der gesamte Bereich hinter dem inneren Stadttor ist tabu für dich!
};	

// ***************************************************************
//							ToMiliz 				E2
// ***************************************************************
instance DIA_Lothar_ToMiliz (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	7;
	condition	 = 	DIA_Lothar_ToMiliz_Condition;
	information	 = 	DIA_Lothar_ToMiliz_Info;
	permanent    =  FALSE;
	description	 = 	"Wie werde ich bei der Miliz aufgenommen.";
};
func int DIA_Lothar_ToMiliz_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Lothar_Regeln))
	&& (other.guild == GIL_NONE)
	{
		return TRUE;
	};
};
func void DIA_Lothar_ToMiliz_Info ()
{
	AI_Output (other, self, "DIA_Lothar_Add_15_26"); //Wie werde ich bei der Miliz aufgenommen.
	if (Player_IsApprentice == APP_NONE)
	{
		AI_Output (self ,other, "DIA_Lothar_Add_01_27"); //Auf ausdrücklichen Befehl von Lord Hagen werden nur Bürger der Stadt bei der Miliz aufgenommen.
		AI_Output (other, self, "DIA_Lothar_Add_15_28"); //Verstehe.
	};
	AI_Output (self ,other, "DIA_Lothar_Add_01_29"); //Wenn du mehr wissen willst, melde dich bei Lord Andre in der Kaserne.
};	

// ***************************************************************
//							ToPaladins 				E2
// ***************************************************************
instance DIA_Lothar_ToPaladins (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	7;
	condition	 = 	DIA_Lothar_ToPaladins_Condition;
	information	 = 	DIA_Lothar_ToPaladins_Info;
	permanent    =  FALSE;
	description	 = 	"Was muss ich tun, um eine Rüstung wie deine zu bekommen?";
};
func int DIA_Lothar_ToPaladins_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Lothar_ToMiliz))
	&& (other.guild != GIL_PAL)
	&& (other.guild != GIL_KDF)
	{
		return TRUE;
	};
};
func void DIA_Lothar_ToPaladins_Info ()
{
	AI_Output (other, self, "DIA_Lothar_Add_15_30"); //Was muss ich tun, um eine Rüstung wie deine zu bekommen?
	if (other.guild != GIL_MIL)
	{
		AI_Output (self ,other, "DIA_Lothar_Add_01_31"); //(poltert) Was? Du bist ja noch nicht einmal bei der Miliz!
	};
	if (Player_IsApprentice == APP_NONE)
	{
		AI_Output (self ,other, "DIA_Lothar_Add_01_32"); //Du bist noch nicht mal BÜRGER!
	};
	AI_Output (self ,other, "DIA_Lothar_Add_01_33"); //Wie kanst du daran denken, die Rüstung eines PALADINS tragen zu dürfen?
	AI_Output (self ,other, "DIA_Lothar_Add_01_34"); //Nur wenige Soldaten der Miliz, die außergewöhnliches geleistet haben, haben bisher diese Ehre erhalten.
	AI_Output (self ,other, "DIA_Lothar_Add_01_35"); //(streng) Wenn du ein Paladin werden willst, hast du noch einen weiten Weg vor dir, mein Junge!
};	

// ***************************************************************
//							WoAndre 				E2
// ***************************************************************
instance DIA_Lothar_WoAndre (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	8;
	condition	 = 	DIA_Lothar_WoAndre_Condition;
	information	 = 	DIA_Lothar_WoAndre_Info;
	permanent    =  FALSE;
	description	 = 	"Wo finde ich den Kommandanten der Stadtwache?";
};
func int DIA_Lothar_WoAndre_Condition ()
{	
	if ( Npc_KnowsInfo(other, DIA_Lothar_Regeln) || Npc_KnowsInfo(other, DIA_Lothar_MESSAGE) )
	&& (Andre.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lothar_WoAndre_Info ()
{
	AI_Output (other, self, "DIA_Lothar_WoAndre_15_00"); //Wo finde ich den Kommandanten der Stadtwache?
	AI_Output (self, other, "DIA_Lothar_WoAndre_01_01"); //Lord Andre hält sich in der Kaserne am anderen Ende der Stadt auf.
};	

// ***************************************************************
//							Schlafen 				E2
// ***************************************************************
instance DIA_Lothar_Schlafen (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	9;
	condition	 = 	DIA_Lothar_Schlafen_Condition;
	information	 = 	DIA_Lothar_Schlafen_Info;
	permanent    =  FALSE;
	description	 = 	"Wo kann ich hier übernachten?";
};
func int DIA_Lothar_Schlafen_Condition ()
{	
	if (other.guild == GIL_NONE)
	{
		return TRUE;
	};
};
func void DIA_Lothar_Schlafen_Info ()
{
	AI_Output (other, self, "DIA_Lothar_Add_15_22"); //Wo kann ich hier übernachten?
	AI_Output (self ,other, "DIA_Lothar_Add_01_23"); //Wenn du einen Platz zum schlafen suchst, geh zum Hotel direkt gegenüber der Kaserne.
	AI_Output (self ,other, "DIA_Lothar_Add_01_24"); //Die Paladine kommen für die ordentliche Unterbringung aller Reisenden auf, die in die Stadt kommen.
	AI_Output (self ,other, "DIA_Lothar_Add_01_25"); //Die fahrenden Händler vom Marktplatz sind auch dort untergebracht.
};	

// ***************************************************************
//							PERM - VOR OV				
// ***************************************************************
instance DIA_Lothar_PermB4OV (C_INFO)
{
	npc			= Pal_203_Lothar;
	nr			= 3;
	condition	= DIA_Lothar_PermB4OV_Condition;
	information	= DIA_Lothar_PermB4OV_Info;
	permanent   = TRUE;
	important 	= TRUE;
};
func int DIA_Lothar_PermB4OV_Condition ()
{	
	if (Npc_IsInState(self, ZS_Talk))
	&& (Mil_305_schonmalreingelassen == FALSE)
	&& (Lothar_Regeln == TRUE)
	{
		return TRUE;
	};
};
func void DIA_Lothar_PermB4OV_Info ()
{
	AI_Output (self, other, "DIA_Lothar_PermB4OV_01_00"); //Über alles Weitere kannst du mit Lord Andre reden!
	AI_StopProcessInfos(self);
};	
	

// ***************
// 		Blubb
// ***************

func void B_Lothar_Blubb() //überflüsige Outputs
{
	AI_Output (other, self, "DIA_Lothar_Add_15_00"); //Aber ich MUSS zu Lord Hagen!

	AI_Output (self ,other, "DIA_Lothar_Add_01_45"); //Und wie ich sehe, hat er dich bei der Miliz aufgenommen.
	AI_Output (self ,other, "DIA_Lothar_Add_01_46"); //Hm - er wird schon wissen, was er tut.
	
	AI_Output (other, self, "DIA_Lothar_Add_15_20"); //Wieviele Meister gibt es?
	AI_Output (self ,other, "DIA_Lothar_Add_01_21"); //Ich glaube, es sind insgesamt fünf.
		
	AI_Output (self ,other, "DIA_Lothar_Add_01_62"); //Sag mal, hab ich mich nicht klar ausgedrückt? Keine Geschichten über Drachen mehr!
	AI_Output (other, self, "DIA_Lothar_Add_15_63"); //Woher weißt du...?
	AI_Output (self ,other, "DIA_Lothar_Add_01_64"); //Das geht dich GAR nichts an!
	AI_Output (self ,other, "DIA_Lothar_Add_01_65"); //Das war das letzte Mal, klar?!
	
	AI_Output (other, self, "DIA_Lothar_Add_15_66"); //Wo finde ich den Kommandanten der Miliz?
	AI_Output (other, self, "DIA_Lothar_Add_15_08"); //Ich bin jetzt Lehrling bei einem der Meister!
	
	// ------ NEWS_Modul für Unterstadt ------
	AI_Output (self ,other, "DIA_Lothar_Add_01_47"); //Du schon wieder.

	AI_Output (self ,other, "DIA_Lothar_Add_01_43"); //Ich habe gehört, du warst bei Lord Andre?
	AI_Output (self ,other, "DIA_Lothar_Add_01_44"); //Ich habe dir ja gesagt, daß du nur zur Miliz gehen kannst, wenn du Bürger der Stadt bist.

	AI_Output (self ,other, "DIA_Lothar_Add_01_48"); //Ich habe Lord Hagen berichtet, daß du ihn sprechen willst...
	AI_Output (other, self, "DIA_Lothar_Add_15_49"); //Und? Was sagt er?
	AI_Output (self ,other, "DIA_Lothar_Add_01_50"); //Er hat noch nie von dir gehört.
	AI_Output (other, self, "DIA_Lothar_Add_15_51"); //Natürlich nicht. Hast du ihm von den Drachen erzählt?
	AI_Output (self ,other, "DIA_Lothar_Add_01_52"); //Hatte ich dir nicht gesagt, du sollt mit diesen Geschichten AUFHÖREN?!

	AI_Output (self ,other, "DIA_Lothar_Add_01_12"); //Ich habe gehört, du hast schon die Zustimmung einiger Meister bekommen.
	AI_Output (self ,other, "DIA_Lothar_Add_01_13"); //Du meinst es wirklich ernst, was?

	AI_Output (self ,other, "DIA_Lothar_Add_01_01"); //Du wirst dich an die Regeln halten müssen, so wie jeder andere auch!
	AI_Output (self ,other, "DIA_Lothar_Add_01_02"); //Lord Hagen ist nicht zu sprechen.
	AI_Output (self ,other, "DIA_Lothar_Add_01_03"); //Wenn du etwas WICHTIGES vorzubringen hast, geh zu Lord Andre. Er wird dir weiterhelfen!
};


// #########################################
// #########################################
		
// 				Im Oberen Viertel
		
// #########################################
// #########################################


// ***************************************************************
//								OV Regeln
// ***************************************************************
instance DIA_Lothar_HelloAgain (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	1;
	condition	 = 	DIA_Lothar_HelloAgain_Condition;
	information	 = 	DIA_Lothar_HelloAgain_Info;
	permanent    =  FALSE;
	important 	 = 	TRUE;
};
func int DIA_Lothar_HelloAgain_Condition ()
{	
	if (Mil_305_schonmalreingelassen == TRUE) //Torwache zu oberem Viertel.
	{
		return TRUE;
	};
};
func void DIA_Lothar_HelloAgain_Info ()
{
	AI_Output (self, other, "DIA_Lothar_HelloAgain_01_00"); //Ah! Du schon wieder!
	AI_Output (self, other, "DIA_Lothar_HelloAgain_01_01"); //Du hast es also tatsächlich geschafft, ins obere Viertel zu kommen!
	
	if (other.guild == GIL_KDF)
	{
		AI_Output (self ,other, "DIA_Lothar_Add_01_36"); //Wo hast du diese Robe her?
		AI_Output (other, self, "DIA_Lothar_Add_15_37"); //Ich habe die Prüfung des Feuers abgelegt.
		AI_Output (self ,other, "DIA_Lothar_Add_01_38"); //Unfassbar. Dann ist es wohl Innos Wille, was hier geschieht...
	};

	if (other.guild == GIL_SLD)
	{
		AI_Output (self ,other, "DIA_Lothar_Add_01_39"); //Du hast dich doch nicht etwa Onars Söldnern angeschlossen?
		AI_Output (self ,other, "DIA_Lothar_Add_01_40"); //Wie bist du denn hier rein gekommen?
		AI_Output (other, self, "DIA_Lothar_Add_15_41"); //Ich habe ein Friedensangebot von Lee bei mir...
		AI_Output (self ,other, "DIA_Lothar_Add_01_42"); //Bah! Lord Hagen wird dem niemals zustimmen.
	};
		
	AI_Output (self, other, "DIA_Lothar_HelloAgain_01_02"); //Es gibt einige Dinge, die du hier beachten musst, sonst bist du so schnell wieder draußen, wie du hier reingekommen bist.
	AI_Output (self, other, "DIA_Lothar_HelloAgain_01_03"); //Es ist dir nur erlaubt, die Häuser der Händler zu betreten. Du erkennst sie an den Schildern über der Tür - nur damit keine Missverständnisse entstehen.
	AI_Output (self, other, "DIA_Lothar_HelloAgain_01_04"); //Die anderen Häuser gehören angesehenen Bürgern - dort hast du nichts zu suchen!
	if (other.guild == GIL_KDF) 
	|| (other.guild == GIL_NOV) 
	{
		AI_Output (self, other, "DIA_Lothar_HelloAgain_01_05"); //Auch wenn du jetzt ein Angehöriger des Ordens Innos' bist.
	};
	if (other.guild == GIL_MIL)
	{	
		AI_Output (self, other, "DIA_Lothar_HelloAgain_01_06"); //Als Angehöriger der Miliz hast du im Übrigen Zugang zu den Räumen der Paladine.
		AI_Output (self, other, "DIA_Lothar_HelloAgain_01_07"); //Aber dein Quartier ist nach wie vor in der Kaserne.
	};
	AI_Output (self, other, "DIA_Lothar_HelloAgain_01_08"); //In diesem Viertel leben die angesehensten Bürger dieser Stadt. Also behandele sie mit Respekt.
	AI_Output (self, other, "DIA_Lothar_HelloAgain_01_09"); //Haben wir uns verstanden?
	AI_Output (other, self, "DIA_Lothar_HelloAgain_15_10"); //Ja.
};	

// ***************************************************************
//								Hagen
// ***************************************************************
instance DIA_Lothar_Hagen (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	2;
	condition	 = 	DIA_Lothar_Hagen_Condition;
	information	 = 	DIA_Lothar_Hagen_Info;
	permanent    =  TRUE;
	description  = 	"Wo finde ich Lord Hagen?";
};
func int DIA_Lothar_Hagen_Condition ()
{	
	if (Mil_305_schonmalreingelassen == TRUE) //Torwache zu oberem Viertel.
	&& (LordHagen.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lothar_Hagen_Info ()
{
	AI_Output (other, self, "DIA_Lothar_Hagen_15_00"); //Wo finde ich Lord Hagen?
	AI_Output (self, other, "DIA_Lothar_Hagen_01_01"); //Er ist im Rathaus, am Ende des oberen Viertels.
	AI_Output (self, other, "DIA_Lothar_Hagen_01_02"); //Aber ohne triftigen Grund wirst du nicht vorgelassen werden.
};

// ***************************************************************
//							Oldworld Running
// ***************************************************************
instance DIA_Lothar_OWRunning (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	2;
	condition	 = 	DIA_Lothar_OWRunning_Condition;
	information	 = 	DIA_Lothar_OWRunning_Info;
	permanent    =  FALSE;
	description  = 	"Ich war bei Lord Hagen...";
};
func int DIA_Lothar_OWRunning_Condition ()
{	
	if (MIS_OLDWORLD == LOG_RUNNING)
	&& (Npc_HasItems (hero, ItWr_PaladinLetter_MIS) == 0)
	{
		return TRUE;
	};
};
func void DIA_Lothar_OWRunning_Info ()
{
	AI_Output (other, self, "DIA_Lothar_Add_15_53"); //Ich war bei Lord Hagen...
	AI_Output (self ,other, "DIA_Lothar_Add_01_54"); //Und? Du hast ihn doch nicht etwa mit deinen Drachengeschichten belästigt?
	AI_Output (other, self, "DIA_Lothar_Add_15_55"); //Doch...
	AI_Output (self ,other, "DIA_Lothar_Add_01_56"); //Das darf doch nicht wahr sein...
	AI_Output (other, self, "DIA_Lothar_Add_15_57"); //Er hat mich losgeschickt, ihm Beweise zu bringen...
	AI_Output (self ,other, "DIA_Lothar_Add_01_58"); //Na dann, viel Glück. (zu sich selbst) So ein Spinner...
	
	AI_StopProcessInfos (self);
};


// ***************************************************************
//							Oldworld
// ***************************************************************
func void DIA_Lothar_DragonsProof()
{
	AI_Output (self ,other, "DIA_Lothar_Add_01_60"); //Es gibt also tatsächlich Drachen?!
	AI_Output (self ,other, "DIA_Lothar_Add_01_61"); //Ich habe dir Unrecht getan. Ich werde Innos um Vergebung für mein Handeln bitten.
	
	AI_StopProcessInfos (self);
};

// ***************************************************************
//							Oldworld Running UND Brief
// ***************************************************************

instance DIA_Lothar_OWRunningBrief (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	2;
	condition	 = 	DIA_Lothar_OWRunningBrief_Condition;
	information	 = 	DIA_Lothar_OWRunningBrief_Info;
	permanent    =  FALSE;
	description  = 	"Ich habe die Beweise! Hier ist der Brief von Kommandant Garond!";
};
func int DIA_Lothar_OWRunningBrief_Condition ()
{	
	if (MIS_OLDWORLD == LOG_RUNNING)
	&& (Npc_HasItems (hero, ItWr_PaladinLetter_MIS) > 0)
	{
		return TRUE;
	};
};
func void DIA_Lothar_OWRunningBrief_Info ()
{
	AI_Output (other, self, "DIA_Lothar_Add_15_59"); //Ich habe die Beweise! Hier ist der Brief von Kommandant Garond!

	DIA_Lothar_DragonsProof();
};

// ***************************************************************
//							Oldworld Success Brief
// ***************************************************************
instance DIA_Lothar_OWSuccessBrief (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	2;
	condition	 = 	DIA_Lothar_OWSuccessBrief_Condition;
	information	 = 	DIA_Lothar_OWSuccessBrief_Info;
	permanent    =  FALSE;
	important	 = 	TRUE;
};
func int DIA_Lothar_OWSuccessBrief_Condition ()
{	
	if (MIS_OLDWORLD == LOG_SUCCESS)
	{
		return TRUE;
	};
};
func void DIA_Lothar_OWSuccessBrief_Info ()
{
	DIA_Lothar_DragonsProof();
};

// ***************************************************************
//								PERM
// ***************************************************************
instance DIA_Lothar_PERM (C_INFO)
{
	npc			 = 	Pal_203_Lothar;
	nr			 = 	3;
	condition	 = 	DIA_Lothar_PERM_Condition;
	information	 = 	DIA_Lothar_PERM_Info;
	permanent    =  TRUE;
	description  = 	"Ist irgendwas aufregendes passiert in letzter Zeit?";
};
func int DIA_Lothar_PERM_Condition ()
{	
	if (Mil_305_schonmalreingelassen == TRUE) //Torwache zu oberem Viertel.
	&& (LordHagen.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lothar_PERM_Info ()
{
	AI_Output (other, self, "DIA_Lothar_PERM_15_00"); //Ist irgendwas aufregendes passiert in letzter Zeit?
	if (other.guild == GIL_NONE)
	|| (other.guild == GIL_SLD)
	{
		AI_Output (self, other, "DIA_Lothar_PERM_01_01"); //Ja, dass sie einen wie dich hier reingelassen haben, ist schon ewig nicht mehr vorgekommen
	}
	else if (other.guild == GIL_MIL)
	{
		AI_Output (self, other, "DIA_Lothar_PERM_01_02"); //Das solltest du am besten wissen. Als Angehöriger der Stadtwache ist es deine Aufgabe, hier für Ruhe und Ordnung zu sorgen!
	}
	else //KdF oder NOV
	{
		AI_Output (self, other, "DIA_Lothar_PERM_01_03"); //Nein.
	};
};

// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Lothar_PICKPOCKET (C_INFO)
{
	npc			= Pal_203_Lothar;
	nr			= 900;
	condition	= DIA_Lothar_PICKPOCKET_Condition;
	information	= DIA_Lothar_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_60;
};                       

FUNC INT DIA_Lothar_PICKPOCKET_Condition()
{
	C_Beklauen (56, 95);
};
 
FUNC VOID DIA_Lothar_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Lothar_PICKPOCKET);
	Info_AddChoice		(DIA_Lothar_PICKPOCKET, DIALOG_BACK 		,DIA_Lothar_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Lothar_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Lothar_PICKPOCKET_DoIt);
};

func void DIA_Lothar_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Lothar_PICKPOCKET);
};
	
func void DIA_Lothar_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Lothar_PICKPOCKET);
};





