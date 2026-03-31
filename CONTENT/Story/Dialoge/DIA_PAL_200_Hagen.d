// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Hagen_EXIT(C_INFO)
{
	npc			= PAL_200_Hagen;
	nr			= 999;
	condition	= DIA_Hagen_EXIT_Condition;
	information	= DIA_Hagen_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Hagen_EXIT_Condition()
{
	if (Kapitel < 3)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Hagen_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};
// ************************************************************
// 					Petzmaster: Schulden offen 
// ************************************************************

// ---------------------------
var int Hagen_LastPetzCounter;
var int Hagen_LastPetzCrime;
// ---------------------------

INSTANCE DIA_Hagen_PMSchulden (C_INFO)
{
	npc         = PAL_200_Hagen;
	nr          = 1;
	condition   = DIA_Hagen_PMSchulden_Condition;
	information = DIA_Hagen_PMSchulden_Info;
	permanent   = TRUE;
	important 	= TRUE; 
};

FUNC INT DIA_Hagen_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Hagen_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Hagen_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID DIA_Hagen_PMSchulden_Info()
{
	AI_Output (self, other, "DIA_Hagen_PMSchulden_04_00"); //Gut, dass du kommst. Du kannst direkt deine Strafe zahlen.

	if (B_GetTotalPetzCounter(self) > Hagen_LastPetzCounter)
	{
		var int diff; diff = (B_GetTotalPetzCounter(self) - Hagen_LastPetzCounter);
		
		if (diff > 0)
		{
			Hagen_Schulden = Hagen_Schulden + (diff * 50);
		};
		
		if (Hagen_Schulden > 1000)	{	Hagen_Schulden = 1000;	};
		
		B_SetAttitude (self, ATT_ANGRY);
		AI_Output (self, other, "DIA_Hagen_PMSchulden_04_01"); //Du nimmst die Gesetze der Stadt nicht ernst, was?
		AI_Output (self, other, "DIA_Hagen_PMSchulden_04_02"); //Die Liste deiner Straftaten ist länger geworden.
		if (Hagen_Schulden < 1000)
		{
			AI_Output (self, other, "DIA_Hagen_PMSchulden_04_03"); //Und sag mir nicht, du wusstest das nicht!
		}
		else
		{
			AI_Output (self, other, "DIA_Hagen_PMSchulden_04_04"); //Du wirst die Höchststrafe bezahlen.
			B_Say_Gold (self, other, Hagen_Schulden);
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Hagen_LastPetzCrime)
	{
		AI_Output (self, other, "DIA_Hagen_PMSchulden_04_05"); //Nun, wie es scheint, hat sich die Situation geändert.
		
		if (Hagen_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, other, "DIA_Hagen_PMSchulden_04_06"); //Es gibt keinen Zeugen mehr für deinen Mord!
		};
		
		if (Hagen_LastPetzCrime == CRIME_THEFT)
		|| ( (Hagen_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, other, "DIA_Hagen_PMSchulden_04_07"); //Niemand bezeugt mehr, dass du gestohlen hast!
		};
		
		if (Hagen_LastPetzCrime == CRIME_ATTACK)
		|| ( (Hagen_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, other, "DIA_Hagen_PMSchulden_04_08"); //Für deine Schlägerei findet sich kein Zeuge mehr.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, other, "DIA_Hagen_PMSchulden_04_09"); //Sämtliche Anklagen gegen dich sind nicht mehr haltbar.
		};
		
		AI_Output (self, other, "DIA_Hagen_PMSchulden_04_10"); //Ich weiß ja nicht, was da in der Stadt gelaufen ist - und ich will es auch gar nicht wissen.
		AI_Output (self, other, "DIA_Hagen_PMSchulden_04_11"); //Sorge einfach dafür, dass du hier keinen Ärger bekommst.
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, other, "DIA_Hagen_PMSchulden_04_12"); //Ich habe mich jedenfalls entschieden, dir deine Schulden zu erlassen.
			AI_Output (self, other, "DIA_Hagen_PMSchulden_04_13"); //Sieh zu, dass du nicht wieder in Schwierigkeiten kommst.
	
			Hagen_Schulden			= 0;
			Hagen_LastPetzCounter 	= 0;
			Hagen_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, other, "DIA_Hagen_PMSchulden_04_14"); //Deine Strafe wirst du trotzdem in voller Höhe zahlen.
			B_Say_Gold (self, other, Hagen_Schulden);
			AI_Output (self, other, "DIA_Hagen_PMSchulden_04_15"); //Also, willst du bezahlen?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(DIA_Hagen_PMSchulden);
		Info_ClearChoices  	(DIA_Hagen_PETZMASTER);
		Info_AddChoice		(DIA_Hagen_PMSchulden,"Ich habe nicht genug Gold!",DIA_Hagen_PETZMASTER_PayLater);
		Info_AddChoice		(DIA_Hagen_PMSchulden,"Wieviel war es nochmal?",DIA_Hagen_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(other, itmi_gold) >= Hagen_Schulden)
		{
			Info_AddChoice 	(DIA_Hagen_PMSchulden,"Ich will die Strafe zahlen.",DIA_Hagen_PETZMASTER_PayNow);
		};
	};
};

func void DIA_Hagen_PMSchulden_HowMuchAgain()
{
	AI_Output (other, self, "DIA_Hagen_PMSchulden_HowMuchAgain_15_00"); //Wieviel war es nochmal?
	B_Say_Gold (self, other, Hagen_Schulden);

	Info_ClearChoices  	(DIA_Hagen_PMSchulden);
	Info_ClearChoices  	(DIA_Hagen_PETZMASTER);
	Info_AddChoice		(DIA_Hagen_PMSchulden,"Ich habe nicht genug Gold!",DIA_Hagen_PETZMASTER_PayLater);
	Info_AddChoice		(DIA_Hagen_PMSchulden,"Wieviel war es nochmal?",DIA_Hagen_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(other, itmi_gold) >= Hagen_Schulden)
	{
		Info_AddChoice 	(DIA_Hagen_PMSchulden,"Ich will die Strafe zahlen.",DIA_Hagen_PETZMASTER_PayNow);
	};
};

// *** weitere Choices siehe unten (DIA_Hagen_PETZMASTER) ***


// ************************************************************
// 			  			 PETZ-MASTER 
// ************************************************************

instance DIA_Hagen_PETZMASTER   (C_INFO)
{
	npc         = PAL_200_Hagen;
	nr          = 1;
	condition   = DIA_Hagen_PETZMASTER_Condition;
	information = DIA_Hagen_PETZMASTER_Info;
	permanent   = TRUE;
	important	= TRUE;
};
FUNC INT DIA_Hagen_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Hagen_LastPetzCrime)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Hagen_PETZMASTER_Info()
{
	Hagen_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...
	
	// ------ SC hat mit Hagen noch nicht gesprochen ------
	if (self.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_00"); //Dein Ruf eilt dir voraus. Du hast gegen die Gesetze der Stadt verstoßen.
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		B_SetAttitude (self, ATT_ANGRY);
		AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_01"); //Du hast dir ganz schön was eingebrockt.
		AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_02"); //Mord ist ein schweres Vergehen!
		Hagen_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50
		Hagen_Schulden = Hagen_Schulden + 500;						//PLUS Mörder-Malus
		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_03"); //Abgesehen von deinen anderen Straftaten.
		};
		AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_04"); //Die Wachen haben Befehl, jeden Mörder auf der Stelle zu richten.
		AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_05"); //Niemand will, dass hier in der Stadt gemordet wird. Aber du kannst deine Reue zeigen, indem du deine Strafe zahlst.

	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_06"); //Du bist des Diebstahls angeklagt!
		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_07"); //Abgesehen von den anderen Dingen, die ich gehört habe.
		};
		AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_08"); //Das ist ein Verstoß gegen die Gesetze der Stadt. Du wirst eine Strafe dafür zahlen.
		
		Hagen_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_09"); //Du bist in eine Schlägerei verwickelt gewesen. Damit hast du gegen die Gesetze gehandelt.
		
		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_10"); //Und was sollte das mit den Schafen?
		};
		AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_11"); //Ein Verstoß gegen die Gesetze der Stadt - ist ein Verstoß gegen die Gesetze Innos'.
		AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_12"); //Also wirst du dafür bezahlen.
		
		Hagen_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_13"); //Du hast dich an unseren Schafen vergriffen - das wollte ich erst gar nicht glauben.
		AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_14"); //Warum muss ich mich mit solchen Lappalien beschäftigen?
		AI_Output (self, other, "DIA_Hagen_PETZMASTER_04_15"); //Du wirst eine Entschädigung zahlen müssen!
		
		Hagen_Schulden = 100;
	};
	
	AI_Output (other, self, "DIA_Hagen_PETZMASTER_15_16"); //Wie viel?
	
	if (Hagen_Schulden > 1000)	{	Hagen_Schulden = 1000;	};
		
	B_Say_Gold (self, other, Hagen_Schulden);
	
	Info_ClearChoices  	(DIA_Hagen_PMSchulden);
	Info_ClearChoices  	(DIA_Hagen_PETZMASTER);
	Info_AddChoice		(DIA_Hagen_PETZMASTER,"Ich habe nicht genug Gold!",DIA_Hagen_PETZMASTER_PayLater);
	if (Npc_HasItems(other, itmi_gold) >= Hagen_Schulden)
	{
		Info_AddChoice 	(DIA_Hagen_PETZMASTER,"Ich will die Strafe zahlen.",DIA_Hagen_PETZMASTER_PayNow);
	};
};

func void DIA_Hagen_PETZMASTER_PayNow()
{
	AI_Output (other, self, "DIA_Hagen_PETZMASTER_PayNow_15_00"); //Ich will die Strafe zahlen.
	B_GiveInvItems (other, self, itmi_gold, Hagen_Schulden);
	if(Npc_GetAttitude(self, other) != ATT_NEUTRAL){
		B_SetAttitude (self, ATT_NEUTRAL);
	};
	AI_Output (self, other, "DIA_Hagen_PETZMASTER_PayNow_04_01"); //Gut! Ich werde dafür sorgen, dass es jeder in der Stadt erfährt - damit wäre dein Ruf einigermaßen wiederhergestellt.

	B_GrantAbsolution (LOC_CITY);
	
	Hagen_Schulden			= 0;
	Hagen_LastPetzCounter 	= 0;
	Hagen_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(DIA_Hagen_PETZMASTER);
	Info_ClearChoices  	(DIA_Hagen_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void DIA_Hagen_PETZMASTER_PayLater()
{
	AI_Output (other, self, "DIA_Hagen_PETZMASTER_PayLater_15_00"); //Ich habe nicht genug Gold!
	AI_Output (self, other, "DIA_Hagen_PETZMASTER_PayLater_04_01"); //Dann sieh zu, dass du das Gold so schnell wie möglich beschaffst.
	AI_Output (self, other, "DIA_Hagen_PETZMASTER_PayLater_04_02"); //Und ich warne dich: Wenn du dir noch was zu schulden kommen lässt, wird die Sache noch schlimmer für dich!
	
	Hagen_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Hagen_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Lord_Hagen_Hallo (C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	2;
	condition	 = 	DIA_Lord_Hagen_Hallo_Condition;
	information	 = 	DIA_Lord_Hagen_Hallo_Info;
	important	 = 	TRUE;
	permanent	 = 	FALSE;
};
func int DIA_Lord_Hagen_Hallo_Condition ()
{	
	if (hero.guild != GIL_NONE)
	&& (self.aivar[AIV_TalkedToPlayer] == FALSE)
	&& (Kapitel < 3)
	{
		return TRUE;
	};
};
func void DIA_Lord_Hagen_Hallo_Info ()
{
	AI_Output (self, other, "DIA_Lord_Hagen_Hallo_04_00"); //Ich habe schon von dir gehört.
	if (Npc_KnowsInfo (other, DIA_Lothar_EyeInnos))
	|| (Andre_EyeInnos == TRUE)
	{
		AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_03"); //Lothar hat mir berichtet, daß du mich sprechen willst.
		AI_Output (self, other, "DIA_Lord_Hagen_Hallo_04_01"); //Du bist der Fremde, der das Auge Innos' gefordert hat.
	};
	
	AI_Output (self, other, "DIA_Lord_Hagen_Hallo_04_02"); //Ich bin Lord Hagen.
	AI_Output (self, other, "DIA_Lord_Hagen_Hallo_04_03"); //Paladin des Königs, Streiter unseres Herrn Innos und oberster Befehlshaber von Khorinis.
	AI_Output (self, other, "DIA_Lord_Hagen_Hallo_04_04"); //Ich habe viel zu tun. Also verschwende nicht meine Zeit, sondern sag mir, warum du hier bist.
};

///////////////////////////////////////////////////////////////////////
//	Info Frieden
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Lord_Hagen_Frieden (C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	2;
	condition	 = 	DIA_Lord_Hagen_Frieden_Condition;
	information	 = 	DIA_Lord_Hagen_Frieden_Info;
	permanent	 = 	FALSE;
	description	 =  "Ich bringe ein Friedensangebot der Söldner!";
};
func int DIA_Lord_Hagen_Frieden_Condition ()
{	
	if (MIS_Lee_Friedensangebot == LOG_RUNNING)
	&& (Npc_HasItems (other, itwr_Passage_MIS) > 0)
	{
		return TRUE;
	};
};
func void DIA_Lord_Hagen_Frieden_Info ()
{
	AI_Output (other, self, "DIA_Lord_Hagen_Frieden_15_00"); //Ich bringe ein Friedensangebot der Söldner!
	B_GiveInvItems (other, self, itwr_Passage_MIS, 1);
	AI_Output (self, other, "DIA_Lord_Hagen_Frieden_04_01"); //(brummig) Hm - zeig' her!
	B_UseFakeScroll ();
	AI_Output (self, other, "DIA_Lord_Hagen_Frieden_04_02"); //Ich kenne General Lee. Ich kenne auch die Umstände, unter denen er damals zur Strafarbeit in der Kolonie verurteilt wurde.
	AI_Output (self, other, "DIA_Lord_Hagen_Frieden_04_03"); //Ich halte ihn für einen ehrenhaften Mann. Ich bin bereit, ihm Absolution zu erteilen - nur ihm!
	AI_Output (self, other, "DIA_Lord_Hagen_Frieden_04_04"); //Für seine Männer gilt das nicht. Die meisten von ihnen sind ehrlose Halsabschneider und haben ihre Strafe verdient!
	AI_Output (self, other, "DIA_Lord_Hagen_Frieden_04_05"); //Ihnen werde ich garantiert keine Absolution erteilen. Richte ihm das aus.
	Hagen_FriedenAbgelehnt = TRUE;
	if (!Npc_KnowsInfo (other, DIA_Lord_Hagen_Armee))
	{
		AI_Output (self, other, "DIA_Lord_Hagen_Frieden_04_06"); //War das alles?
	};
	B_LogEntry (Topic_Frieden,"Lord Hagen ist breit, Lee Aboslution zu erteilen. Aber keinem anderen der Söldner."); 
};

///////////////////////////////////////////////////////////////////////
//	Info Armee
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Lord_Hagen_Armee (C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	2;
	condition	 = 	DIA_Lord_Hagen_Armee_Condition;
	information	 = 	DIA_Lord_Hagen_Armee_Info;
	permanent	 = 	FALSE;
	description	 =  "Die Armeen des Bösen versammeln sich ganz in unserer Nähe.";
};
func int DIA_Lord_Hagen_Armee_Condition ()
{	
	if (!MIS_Lee_Friedensangebot == LOG_RUNNING)
	|| (Hagen_FriedenAbgelehnt == TRUE)
	{
		return TRUE;
	};
};
func void DIA_Lord_Hagen_Armee_Info ()
{
	AI_Output (other, self, "DIA_Lord_Hagen_Armee_15_00"); //Die Armeen des Bösen versammeln sich ganz in unserer Nähe.
	AI_Output (self, other, "DIA_Lord_Hagen_Armee_04_01"); //Im Minental? Wir haben eine Expedition dorthin entsandt. Wir kennen ebenfalls Berichte, die besagen, dass der Pass dorthin von Orks besetzt ist.
	AI_Output (self, other, "DIA_Lord_Hagen_Armee_04_02"); //Aber von einer Armee des Bösen ist bisher nichts zu mir vorgedrungen.
	if (Npc_KnowsInfo (other, DIA_Lord_Hagen_Frieden))
	{
		AI_Output (self, other, "DIA_Lord_Hagen_Armee_04_03"); //Ist das nur ein Trick, der mich glauben lassen soll, es wäre nötig, eine Allianz mit den Söldnern einzugehen?
		AI_Output (other, self, "DIA_Lord_Hagen_Armee_15_04"); //Nein.
	};
	AI_Output (self, other, "DIA_Lord_Hagen_Armee_04_05"); //(skeptisch) Was für eine Armee soll das sein?
	AI_Output (other, self, "DIA_Lord_Hagen_Armee_15_06"); //Es sind Drachen, die Scharen von Dienerkreaturen um sich versammeln.
	AI_Output (self, other, "DIA_Lord_Hagen_Armee_04_07"); //Drachen? Laut der alten Schriften ist es viele Jahrhunderte her, dass Drachen das letzte Mal gesichtet wurden.
	AI_Output (self, other, "DIA_Lord_Hagen_Armee_04_08"); //Sag mir - warum sollte ich deinen Worten Glauben schenken?
	AI_Output (other, self, "DIA_Lord_Hagen_Armee_15_09"); //Die Frage ist doch nicht, ob du mir glauben kannst. Die Frage ist, kannst du es dir leisten, mir NICHT zu glauben, wenn ich die Wahrheit sage.
	AI_Output (self, other, "DIA_Lord_Hagen_Armee_04_10"); //Solange ich keinen Beweis habe, kann ich mir nicht leisten, noch mehr Männer dorthin zu schicken.
};

///////////////////////////////////////////////////////////////////////
//	Info Proof
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Lord_Hagen_Proof (C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	2;
	condition	 = 	DIA_Lord_Hagen_Proof_Condition;
	information	 = 	DIA_Lord_Hagen_Proof_Info;
	permanent	 = 	TRUE;
	description	 =  "Ich soll dir also einen Beweis bringen?";
};
func int DIA_Lord_Hagen_Proof_Condition ()
{	
	if Npc_KnowsInfo (other, DIA_Lord_Hagen_Armee )
	&& (Hagen_BringProof == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lord_Hagen_Proof_Info ()
{
	AI_Output (other, self, "DIA_Lord_Hagen_Proof_15_00"); //Ich soll dir also einen Beweis bringen?

	IF (hero.guild != GIL_NONE)
	&& (hero.guild != GIL_NOV)
	{
		AI_Output (self, other, "DIA_Lord_Hagen_Proof_04_01"); //Genau. Überquere den Pass und mache dich auf den Weg ins Minental. Suche dort nach der Expedition - und wenn du sie gefunden hast, sprich mit Kommandant Garond.
		AI_Output (self, other, "DIA_Lord_Hagen_Proof_04_02"); //Wenn jemand weiß, wie die Situation vor Ort ist, dann er.
		AI_Output (self, other, "DIA_Lord_Hagen_Proof_04_03"); //Falls sich deine Worte bestätigen, dann bin ich bereit, dir zu helfen.
		AI_Output (other, self, "DIA_Lord_Hagen_Proof_15_04"); //Das heißt, du wirst mir das Auge Innos' aushändigen?
		AI_Output (self, other, "DIA_Lord_Hagen_Proof_04_05"); //Das Auge Innos' ... gut. Bring mir den Beweis, dann sorge ich dafür, dass es dir gestattet wird, das Amulett anzulegen.
		AI_Output (other, self, "DIA_Lord_Hagen_Proof_15_06"); //Dann kann ich sagen, ich habe dein Wort in dieser Sache?
		AI_Output (self, other, "DIA_Lord_Hagen_Proof_04_07"); //Das kannst du - denn du hast es.
		Hagen_BringProof = TRUE;
	}
	else
	{
		if (hero.guild == GIL_NOV)
		{
			PrintScreen	(PRINT_Addon_GuildNeeded_NOV, -1,-1, FONT_Screen ,2);
		}
		else 
		{	
			PrintScreen	(PRINT_Addon_GuildNeeded, -1,-1, FONT_Screen ,2);
		};	
		B_Say (self, other, "$NOLEARNNOPOINTS");
	};	
};
///////////////////////////////////////////////////////////////////////
//	Info Auge
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Lord_Hagen_Auge (C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	2;
	condition	 = 	DIA_Lord_Hagen_Auge_Condition;
	information	 = 	DIA_Lord_Hagen_Auge_Info;
	permanent	 = 	FALSE;
	description	 =  "Was weißt du über das Auge Innos'?";
};
func int DIA_Lord_Hagen_Auge_Condition ()
{	
	return TRUE;
};
func void DIA_Lord_Hagen_Auge_Info ()
{
	AI_Output (other, self, "DIA_Lord_Hagen_Auge_15_00"); //Was weißt du über das Auge Innos'?
	AI_Output (self, other, "DIA_Lord_Hagen_Auge_04_01"); //Es ist ein göttliches Artefakt. (nachdenklich) In den alten Prophezeiungen wird es im Zusammenhang mit Drachen erwähnt.
	AI_Output (self, other, "DIA_Lord_Hagen_Auge_04_02"); //Doch die Schriften sagen auch, dass nur ein Erwählter Innos' es tragen kann.
	
	if (other.guild == GIL_KDF)
	{
		AI_Output (other, self, "DIA_Lord_Hagen_Auge_15_03"); //Ich BIN ein Erwählter Innos'!
		AI_Output (self, other, "DIA_Lord_Hagen_Auge_04_04"); //Dann wird es dir vielleicht möglich sein, das Amulett anzulegen.
	};
};

///////////////////////////////////////////////////////////////////////
//	Info Pass
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Lord_Hagen_Pass (C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	2;
	condition	 = 	DIA_Lord_Hagen_Pass_Condition;
	information	 = 	DIA_Lord_Hagen_Pass_Info;
	permanent	 = 	FALSE;
	description	 =  "Wie soll ich über den Pass kommen?";
};
func int DIA_Lord_Hagen_Pass_Condition ()
{	
	if (Hagen_BringProof == TRUE)
	&& (Kapitel < 3)
	{
		return TRUE;
	};
};
func void DIA_Lord_Hagen_Pass_Info ()
{
	AI_Output (other, self, "DIA_Lord_Hagen_Pass_15_00"); //Wie soll ich über den Pass kommen?
	AI_Output (self, other, "DIA_Lord_Hagen_Pass_04_01"); //Ich gebe dir den Schlüssel für das Tor am Pass. Doch du wirst deinen Weg durch die Reihen der Orks finden müssen.
	AI_Output (self, other, "DIA_Lord_Hagen_Pass_04_02"); //Möge Innos dich schützen.
		
	AI_StopProcessInfos (self);
	MIS_OLDWORLD = LOG_RUNNING;
	B_Kapitelwechsel (2, NEWWORLD_ZEN );
	CreateInvItems (self,ItKe_Pass_MIS,1);
	B_GiveInvItems (self,other,ItKe_Pass_MIS,1);
	
	Log_CreateTopic (Topic_MISOLDWORLD,LOG_MISSION);
	Log_SetTopicStatus (Topic_MISOLDWORLD,LOG_RUNNING);
	B_LogEntry (Topic_MISOLDWORLD,"Lord Hagen will, dass ich ihm Beweise für die Armee des Bösen bringe. Ich werde in's Minental aufbrechen und dort mit Komandant Garond sprechen.");
	
	if (Fernando_ImKnast == FALSE)
	{
		B_StartOtherRoutine (Fernando,"WAIT"); 
	};
	
	Wld_InsertNpc (BDT_1020_Wegelagerer, "NW_TROLLAREA_PATH_47");	//Joly: //ADDON stört dann nicht mehr
};

///////////////////////////////////////////////////////////////////////
//	Info Khorinis
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Lord_Hagen_Khorinis (C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	2;
	condition	 = 	DIA_Lord_Hagen_Khorinis_Condition;
	information	 = 	DIA_Lord_Hagen_Khorinis_Info;
	permanent	 = 	FALSE;
	description	 =  "Warum seid ihr nach Khorinis gekommen?";
};
func int DIA_Lord_Hagen_Khorinis_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Lord_Hagen_Armee))
	&& (Kapitel < 3)
	{
		return TRUE;
	};
};
func void DIA_Lord_Hagen_Khorinis_Info ()
{
	AI_Output (other, self, "DIA_Lord_Hagen_Khorinis_15_00"); //Warum seid ihr nach Khorinis gekommen?
	AI_Output (self, other, "DIA_Lord_Hagen_Khorinis_04_01"); //Wir sind in wichtiger Mission für das Königreich unterwegs. Unser Befehl kommt direkt von König Rhobar.
	AI_Output (self, other, "DIA_Lord_Hagen_Khorinis_04_02"); //Ich sagte dir, dass wir eine Expedition ins Minental geschickt haben. Sie ist der Grund unserer Anwesenheit.
};

///////////////////////////////////////////////////////////////////////
//	Info Minental
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Lord_Hagen_Minental (C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	2;
	condition	 = 	DIA_Lord_Hagen_Minental_Condition;
	information	 = 	DIA_Lord_Hagen_Minental_Info;
	permanent	 = 	TRUE;
	description	 =  "Was machen deine Männer im Minental?";
};
func int DIA_Lord_Hagen_Minental_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Lord_Hagen_Khorinis))
	&& (KnowsPaladins_Ore == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lord_Hagen_Minental_Info ()
{
	AI_Output (other, self, "DIA_Lord_Hagen_Minental_15_00"); //Was machen deine Männer im Minental?

	if (Hagen_BringProof == FALSE)
	{
		AI_Output (self, other, "DIA_Lord_Hagen_Minental_04_01"); //Ich sehe keinen Grund, dir das zu verraten!
	}
	else
	{
		if (Garond.aivar[AIV_TalkedToPlayer] == TRUE)
		{
			AI_Output (self, other, "DIA_Lord_Hagen_Minental_04_02"); //Du warst schon dort. Du solltest es wissen.
		}
		else
		{
			AI_Output (self, other, "DIA_Lord_Hagen_Minental_04_03"); //Na schön, da du ohnehin dorthin gehen wirst, kann ich es dir ebenso gut verraten.
		};
		AI_Output (self, other, "DIA_Lord_Hagen_Minental_04_04"); //Der Grund dafür ist das magische Erz. Es ist von kriegsentscheidender Wichtigkeit.
		AI_Output (self, other, "DIA_Lord_Hagen_Minental_04_05"); //Ohne genügend Waffen aus magischem Erz hat die Armee des Königs nicht die geringste Chance gegen die Elitekrieger der Orks.
		if (other.guild != GIL_SLD)
		{
			AI_Output (self, other, "DIA_Lord_Hagen_Minental_04_06"); //Und die Erzminen hier auf der Insel sind die letzten, zu denen wir noch Zugang haben.
		};
		AI_Output (self, other, "DIA_Lord_Hagen_Minental_04_07"); //Sobald unser Schiff voll mit Erz beladen ist, werden wir aufs Festland zurückkehren.
		KnowsPaladins_Ore = TRUE;
		
		AI_Output (other, self, "DIA_Lord_Hagen_Minental_15_08"); //Dann steht der Krieg mit den Orks schlecht?
		AI_Output (self, other, "DIA_Lord_Hagen_Minental_04_09"); //Ich habe dir schon zu viel verraten.
	};
};

///////////////////////////////////////////////////////////////////////
//	Can You Teach Me?
///////////////////////////////////////////////////////////////////////
instance DIA_Hagen_CanTeach		(C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	5;
	condition	 = 	DIA_Hagen_CanTeach_Condition;
	information	 = 	DIA_Hagen_CanTeach_Info;
	PERMANENT 	 =  FALSE;
	description	 = 	"Ich suche einen Schwertmeister.";
};
func int DIA_Hagen_CanTeach_Condition ()
{	
	if (LordHagen_Teach2H == FALSE)
	&& (other.guild == GIL_PAL)
	&& (other.aivar[REAL_TALENT_2H] >= 90)
	&& (other.aivar[REAL_TALENT_2H] < 100)
	{
		return TRUE;
	};
};
func void DIA_Hagen_CanTeach_Info ()
{
	AI_Output (other, self, "DIA_Hagen_CanTeach_15_00"); //Ich suche einen Schwertmeister.
	AI_Output (self, other, "DIA_Hagen_CanTeach_04_01"); //So? Du hast einen gefunden.
	
	LordHagen_Teach2H = TRUE;
	B_LogEntry (TOPIC_CityTeacher,"Lord Hagen kann mich im Kampf mit Zweihändern unterweisen.");
};
//**************************************
//			Ich will trainieren
//**************************************
INSTANCE DIA_Hagen_Teach(C_INFO)
{
	npc			= PAL_200_Hagen;
	nr			= 100;
	condition	= DIA_Hagen_Teach_Condition;
	information	= DIA_Hagen_Teach_Info;
	permanent	= TRUE;
	description = "Lass uns beginnen (Zweihand Kampf lernen)";
};                       
//----------------------------------
var int DIA_Hagen_Teach_permanent;
//----------------------------------
FUNC INT DIA_Hagen_Teach_Condition()
{
	if (LordHagen_Teach2H == TRUE)
	&& (DIA_Hagen_Teach_permanent == FALSE)
	{
		return TRUE;
	};	
};
 
FUNC VOID DIA_Hagen_Teach_Info()
{	
	AI_Output (other,self ,"DIA_Hagen_Teach_15_00"); //Lass uns beginnen.
	
	Info_ClearChoices 	(DIA_Hagen_Teach);
	Info_AddChoice 		(DIA_Hagen_Teach,	DIALOG_BACK		,DIA_Hagen_Teach_Back);
	Info_AddChoice		(DIA_Hagen_Teach, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(other, NPC_TALENT_2H, 1))			,DIA_Hagen_Teach_2H_1);
	Info_AddChoice		(DIA_Hagen_Teach, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent(other, NPC_TALENT_2H, 5))			,DIA_Hagen_Teach_2H_5);

};
FUNC VOID DIA_Hagen_Teach_Back ()
{
	if (other.HitChance[NPC_TALENT_2H] >= 100)
	{
		AI_Output (self,other,"DIA_Hagen_Teach_04_00"); //Du bist jetzt ein würdiger Schwertmeister. Ich kann dir nichts mehr beibringen.
		AI_Output (self,other,"DIA_Hagen_Teach_04_01"); //Mögen deine zukünftigen Taten von der Weisheit eines Schwertmeisters gelenkt werden.
		DIA_Hagen_Teach_permanent = TRUE;
	};
	Info_ClearChoices (DIA_Hagen_Teach);
};

FUNC VOID DIA_Hagen_Teach_2H_1 ()
{
	B_TeachFightTalentPercent (self, other, NPC_TALENT_2H, 1, 100);
	
	Info_ClearChoices 	(DIA_Hagen_Teach);
	Info_AddChoice 		(DIA_Hagen_Teach,	DIALOG_BACK		,DIA_Hagen_Teach_Back);
	Info_AddChoice		(DIA_Hagen_Teach, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(other, NPC_TALENT_2H, 1)) ,DIA_Hagen_Teach_2H_1);	
	Info_AddChoice		(DIA_Hagen_Teach, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent(other, NPC_TALENT_2H, 5)) ,DIA_Hagen_Teach_2H_5);	
};

FUNC VOID DIA_Hagen_Teach_2H_5 ()
{
	B_TeachFightTalentPercent (self, other, NPC_TALENT_2H, 5, 100);
	
	Info_ClearChoices 	(DIA_Hagen_Teach);
	Info_AddChoice 		(DIA_Hagen_Teach,	DIALOG_BACK		,DIA_Hagen_Teach_Back);
	Info_AddChoice		(DIA_Hagen_Teach, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(other, NPC_TALENT_2H, 1))			,DIA_Hagen_Teach_2H_1);	
	Info_AddChoice		(DIA_Hagen_Teach, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent(other, NPC_TALENT_2H, 5))			,DIA_Hagen_Teach_2H_5);	
	
};
//##############################################################
//###
//###	RitterAufnahme
//###
//##############################################################

//**************************************************************
//	Ich will auch ein Paladin werden.
//**************************************************************


INSTANCE DIA_Lord_Hagen_Knight		(C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	990;
	condition	 = 	DIA_Lord_Hagen_Knight_Condition;
	information	 = 	DIA_Lord_Hagen_Knight_Info;
	permanent	 = 	TRUE; 
	description	 = 	"Ich will mich in den Dienst des Ordens stellen.";
};
FUNC INT DIA_Lord_Hagen_Knight_Condition ()
{	
	if (hero.guild == GIL_MIL)	
	{
		return TRUE;
	};
};

FUNC VOID DIA_Lord_Hagen_Knight_Info ()
{
	AI_Output			(other, self, "DIA_Lord_Hagen_Knight_15_00"); //Ich will mich in den Dienst des Ordens stellen.
	
	if (MIS_RescueBennet == LOG_SUCCESS)
	{
		AI_Output			(self, other, "DIA_Lord_Hagen_Knight_04_01"); //Gut, du hast bewiesen, dass du den Mut, das Können und das Gewissen hast, Innos zu dienen.
		AI_Output			(self ,other, "DIA_Lord_Hagen_Knight_04_02"); //Deine Taten sind Zeugnis deines reinen Herzen.
		AI_Output			(self ,other, "DIA_Lord_Hagen_Knight_04_03"); //Wenn es dein Wunsch ist, dann werde ich dich in unserem Orden willkommen heißen.
		
		Info_ClearChoices (DIA_Lord_Hagen_Knight);
		Info_AddChoice (DIA_Lord_Hagen_Knight,"Ich bin mir noch nicht sicher.",DIA_Lord_Hagen_Knight_No);
		Info_AddChoice (DIA_Lord_Hagen_Knight,"Ich bin bereit!",DIA_Lord_Hagen_Knight_Yes);
	}
	else
	{
		AI_Output			(self ,other, "DIA_Lord_Hagen_Knight_04_04"); //Ein Kämpfer Innos' zu sein bedeutet, sich ganz und gar in die Sache Innos' zu stellen.
		AI_Output			(self ,other, "DIA_Lord_Hagen_Knight_04_05"); //Nur die edelsten und mutigsten Recken werden in unserem Orden aufgenommen.
		AI_Output			(self ,other, "DIA_Lord_Hagen_Knight_04_06"); //Wenn du wirklich die Absicht hast, ein Paladin zu werden, musst du beweisen, dass du würdig bist.
	};
	
	Hagen_GaveInfoKnight = TRUE;	
};

FUNC VOID DIA_Lord_Hagen_Knight_No ()
{
	AI_Output (other,self ,"DIA_Lord_Hagen_Knight_No_15_00"); //Ich bin mir noch nicht sicher.
	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_No_04_01"); //Dann gehe und befreie dein Herz von den Zweifeln. Kehre zurück, wenn du bereit bist.

	Info_ClearChoices (DIA_Lord_Hagen_Knight);
};

FUNC VOID DIA_Lord_Hagen_Knight_Yes()
{
	AI_Output (other,self ,"DIA_Lord_Hagen_Knight_Yes_15_00"); //Ich bin bereit!
	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_01"); //(ernst) Dann soll es so sein!
	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_02"); //(ernst) Viele Männer sind diesen Weg gegangen und haben im Namen Innos ihr Leben gelassen.
	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_03"); //(ernst )Schwörst du ihren Tod durch deine Taten zu ehren und Innos' Ruhm zu verkünden?
	AI_Output (other,self ,"DIA_Lord_Hagen_Knight_Yes_15_04"); //Ich schwöre!
	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_05"); //Dann sollst du von nun an Mitglied sein in unserer Gemeinschaft.
	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_06"); //Hiermit ernenne ich dich zu einem Streiter Innos'.
	//AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_07"); //I give to you the weapons and armor of a knight. Bear them with pride, knight!

	CreateInvItems (self,ITAR_REVIVED_PAL_M,1);
	B_GiveInvItems (self,other,ITAR_REVIVED_PAL_M,1);

	/* if ((other.HitChance[NPC_TALENT_2H]) >= (other.HitChance[NPC_TALENT_1H])) //Damit der SC auch seine Lieblingswaffe bekommt ;-)
	{
		CreateInvItems (self,ItMw_2h_Pal_Sword,1);
		B_GiveInvItems (self,other,ItMw_2h_Pal_Sword,1);
	}
	else
	{
		CreateInvItems (self,ItMw_1h_Pal_Sword,1);
		B_GiveInvItems (self,other,ItMw_1h_Pal_Sword,1);
	};	 */	 
	
	AI_UnequipArmor (other);
	AI_EquipArmor 	(other,ITAR_REVIVED_PAL_M);

	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_08"); //Von nun an hast du Kraft deines Ranges Zugang zum Kloster.

	if ((Npc_IsDead(Albrecht))== FALSE)
	{
		AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_09"); //Den Gebrauch unserer Magie wird dich Albrecht lehren, sprich am Besten einfach mit ihm.
	};
	
	AI_Output (self ,other,"DIA_Lord_Hagen_Add_04_02"); //Und selbstverständlich stehen dir nun auch unsere Quartiere in der Oberstadt zur Verfügung.

	hero.guild = GIL_PAL;
	Npc_SetTrueGuild (other, GIL_PAL);
	
	Info_ClearChoices (DIA_Lord_Hagen_Knight);
};


//***********************************************
//	Wie kann ich mich würdig erweisen
//***********************************************

INSTANCE DIA_Lord_Hagen_WhatProof		(C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	991;
	condition	 = 	DIA_Lord_Hagen_WhatProof_Condition;
	information	 = 	DIA_Lord_Hagen_WhatProof_Info;
	permanent	 = 	FALSE; 
	description	 = 	"Wie kann ich mich würdig erweisen?";
};

FUNC INT DIA_Lord_Hagen_WhatProof_Condition ()
{	
	if (Hagen_GaveInfoKnight == TRUE)	
	&& (MIS_RescueBennet != LOG_SUCCESS)
	{
		return TRUE;
	};
};

FUNC VOID DIA_Lord_Hagen_WhatProof_Info ()
{
	AI_Output			(other, self, "DIA_Lord_Hagen_WhatProof_15_00"); //Wie kann ich mich würdig erweisen?
	AI_Output			(self, other, "DIA_Lord_Hagen_WhatProof_04_01"); //Deine Taten werden zeigen, ob du würdig bist.
	AI_Output			(self ,other, "DIA_Lord_Hagen_WhatProof_04_02"); //In Innos Namen kämpfen wir für Freiheit und Gerechtigkeit.
	AI_Output			(self ,other, "DIA_Lord_Hagen_WhatProof_04_03"); //Wir kämpfen gegen Beliar und seine Schergen, die Innos' gerechte Ordnung zerstören wollen.
	AI_Output			(other, self, "DIA_Lord_Hagen_WhatProof_15_04"); //Ich verstehe.
	AI_Output			(self ,other, "DIA_Lord_Hagen_WhatProof_04_05"); //Gar nichts verstehst du! Unsere Ehre ist unser Leben und unser Leben ist Innos.
	AI_Output			(self ,other, "DIA_Lord_Hagen_WhatProof_04_06"); //Ein Paladin zieht Innos preisend in die Schlacht und viele von uns haben ihr Leben auf dem Altar des ewigen Streits zwischen Gut und Böse gelassen.
	AI_Output			(self ,other, "DIA_Lord_Hagen_WhatProof_04_07"); //Dieser Tradition hat sich jeder einzelne von uns verpflichtet. Wenn wir scheitern, beflecken wir die Taten unser gefallen Kameraden.
	AI_Output			(self ,other, "DIA_Lord_Hagen_WhatProof_04_08"); //Nur wer dies wirklich versteht, ist würdig, ein Paladin zu sein.
};



//#####################################################################
//##
//##
//##							KAPITEL 3
//##
//##
//#####################################################################

// ************************************************************
// 	  				   EXIT KAP3
// ************************************************************

INSTANCE DIA_Lord_Hagen_KAP3_EXIT(C_INFO)
{
	npc			= PAL_200_Hagen;
	nr			= 999;
	condition	= DIA_Lord_Hagen_KAP3_EXIT_Condition;
	information	= DIA_Lord_Hagen_KAP3_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Lord_Hagen_KAP3_EXIT_Condition()
{
	if (Kapitel == 3)	
	{
		return TRUE;
	};
};
FUNC VOID DIA_Lord_Hagen_KAP3_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 	  				   PERM KAP 3
// ************************************************************

var int Hagen_KnowsEyeKaputt;
// --------------------------

INSTANCE DIA_Lord_Hagen_KAP3U4_PERM(C_INFO)
{
	npc			= PAL_200_Hagen;
	nr			= 998;
	condition	= DIA_Lord_Hagen_KAP3U4_PERM_Condition;
	information	= DIA_Lord_Hagen_KAP3U4_PERM_Info;
	permanent	= TRUE;
	description = "Wie sieht's aus?";
};                       
FUNC INT DIA_Lord_Hagen_KAP3U4_PERM_Condition()
{
	if (Kapitel == 3)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Lord_Hagen_KAP3U4_PERM_Info()
{	
	AI_Output (other,self ,"DIA_Lord_Hagen_KAP3U4_PERM_15_00"); //Wie ist die Lage?
	
	if (MIS_OLDWORLD == LOG_SUCCESS)
	{
		AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_04"); //Ich muß einen Weg finden, diese Expedition zu retten.
		AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_05"); //Wir müssen etwas gegen die Drachen unternehmen.
		if (Hagen_KnowsEyeKaputt == FALSE)
		{
			AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_06"); //(zu sich) Vielleicht kann das Auge Innos uns jetzt alle retten...
		};
	}
	else
	{
		AI_Output (self ,other,"DIA_Lord_Hagen_KAP3U4_PERM_04_01"); //Ich werde hier noch verrückt, ich bin Soldat, kein Bürokrat.
		AI_Output (self ,other,"DIA_Lord_Hagen_KAP3U4_PERM_04_02"); //Bei dem ganzen Papierkram, den ich erledigen muss, weiß ich noch nicht mal mehr, wie sich mein Schwert anfühlt.
	};
};

// ************************************************************
// 	  				   PERM KAP3U4
// ************************************************************

INSTANCE DIA_Lord_Hagen_EyeBroken(C_INFO)
{
	npc			= PAL_200_Hagen;
	nr			= 1;
	condition	= DIA_Lord_Hagen_EyeBroken_Condition;
	information	= DIA_Lord_Hagen_EyeBroken_Info;
	permanent	= FALSE;
	description = "Ich habe das Auge - es ist zerbrochen.";
};                       
FUNC INT DIA_Lord_Hagen_EyeBroken_Condition()
{
	if (Kapitel == 3)
	&& (MIS_ReadyForChapter4 == FALSE)
	&& (((Npc_HasItems (other,ItMi_InnosEye_Broken_MIS)) || (MIS_SCKnowsInnosEyeIsBroken  == TRUE)	))
	&& (MIS_Bennet_InnosEyeRepairedSetting != LOG_SUCCESS)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Lord_Hagen_EyeBroken_Info()
{	
	AI_Output (other, self, "DIA_Lord_Hagen_Add_15_07"); //Ich habe das Auge - es ist zerbrochen.
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_08"); //WAS? Bei Innos! Was hast du getan? Wir brauchen das Auge!
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_09"); //Sprich mit Pyrokar! Es muß einen Weg geben, es wieder zusammenzufügen!
	Hagen_KnowsEyeKaputt = TRUE;
};

//*********************************************************************
//	Info BACKINTOWN
//*********************************************************************

instance DIA_Lord_Hagen_BACKINTOWN		(C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	2;
	condition	 = 	DIA_Lord_Hagen_BACKINTOWN_Condition;
	information	 = 	DIA_Lord_Hagen_BACKINTOWN_Info;
	permanent	 = 	FALSE; 
	description	 = 	"Ich bringe dir Nachricht von Garond";
};
func int DIA_Lord_Hagen_BACKINTOWN_Condition ()
{	
	if (MIS_OLDWORLD == LOG_RUNNING)
	&& (Npc_HasItems (hero, ItWr_PaladinLetter_MIS) >= 1)
	&& (Kapitel == 3)
	{
		return TRUE;
	};
};
func void DIA_Lord_Hagen_BACKINTOWN_Info ()
{
	AI_Output	(other, self, "DIA_Lord_Hagen_BACKINTOWN_15_00"); //Ich bringe dir Nachricht von Garond. Hier, diese Zeilen hat er mir mitgegeben.
	B_GiveInvItems 	(other, self,ItWr_PaladinLetter_MIS,1);
	B_UseFakeScroll 	();  
	AI_Output (self, other, "DIA_Lord_Hagen_BACKINTOWN_04_01"); //Unsere Lage ist schlimmer, als ich befürchtet habe. Doch berichte du mir von der Situation im Minental.
	AI_Output (other, self, "DIA_Lord_Hagen_BACKINTOWN_15_02"); //Die Paladine haben sich in der Burg des Minentals verschanzt und sind von Orks umzingelt.
	AI_Output (other, self, "DIA_Lord_Hagen_BACKINTOWN_15_03"); //Die Schürferei hat viele Opfer gefordert und es gibt kaum noch Erz.
	AI_Output (other, self, "DIA_Lord_Hagen_BACKINTOWN_15_04"); //Tja, ich würde sagen, ohne Hilfe sind die Jungs verloren. So sieht's aus.
	AI_Output (self, other, "DIA_Lord_Hagen_BACKINTOWN_04_05"); //Ich werde einen Weg finden, diese Expedition zu retten. Du hast viel für uns getan. Innos wird dir danken ...
	AI_Output (other, self, "DIA_Lord_Hagen_BACKINTOWN_15_06"); //Ich bin weniger an seinem Dank interessiert als an seinem Auge.
	AI_Output (self, other, "DIA_Lord_Hagen_BACKINTOWN_04_07"); //Ja, natürlich. Ich stehe zu meinem Wort. Nimm diesen Brief. Er wird dir die Klostertore öffnen.
	AI_Output (self, other, "DIA_Lord_Hagen_BACKINTOWN_04_08"); //Sprich mit Pyrokar, dem obersten Feuermagier, und zeige ihm diese Ermächtigung. Er wird dir den Zugang zum Auge Innos' gewähren.
	
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_00"); //Eines noch, bevor du gehst...
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_01"); //Nimm diese Rune zum Dank von mir. Sie wird dich sicher zurück in die Stadt bringen, wann immer du willst.
	B_GiveInvItems (self, other, ItRu_TeleportSeaport, 1);
	
	
	CreateInvItems 		(self, ItWr_PermissionToWearInnosEye_MIS, 1);	
	B_GiveInvItems 		(self, other,ItWr_PermissionToWearInnosEye_MIS,1);
	MIS_InnosEyeStolen = TRUE;
	MIS_OLDWORLD = LOG_SUCCESS;
	
	B_LogEntry (TOPIC_INNOSEYE,"Lord Hagen hat mir ein Schreiben mitgegeben. Damit wird mir Meister Pyrokar im Kloster das Auge Innos überreichen.");

			B_StartOtherRoutine (Pedro,"Tot"); 
				if (Npc_IsDead (MiltenNW))	//Wichtig, damit Milten vor dem Kloster steht!!!!!
				{ 
					Wld_InsertNpc (PC_MAGE_NW ,"NW_MONASTERY_ENTRY_01");
					B_StartOtherRoutine (MiltenNW,"START");		//zur Sicherheit
				};		
	
			TEXT_Innoseye_Setting	=	TEXT_Innoseye_Setting_Broken; 
};

//--------Hier kommt der gesamte Befreie den schmied Klumpatsch-------------


//*********************************************************
//		Lasse Bennet aus dem Knast
//*********************************************************

var int Hagen_einmalBennet;
// -----------------------

INSTANCE DIA_Lord_Hagen_RescueBennet		(C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	3;
	condition	 = 	DIA_Lord_Hagen_RescueBennet_Condition;
	information	 = 	DIA_Lord_Hagen_RescueBennet_Info;
	permanent	 = 	TRUE; 
	description	 = 	"Ich muss mit dir über Bennet reden.";
};

FUNC INT DIA_Lord_Hagen_RescueBennet_Condition ()
{	
	if (MIS_RescueBennet == LOG_RUNNING)
	&& (Cornelius_IsLiar == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID DIA_Lord_Hagen_RescueBennet_Info ()
{
	AI_Output			(other, self, "DIA_Lord_Hagen_RescueBennet_15_00"); //Ich muss mit dir über Bennet reden.
	
	if (Hagen_einmalBennet == FALSE)
	{
		AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_04_01"); //Das ist doch dieser Söldner, der einen meiner Männer ermordet hat.
		Hagen_einmalBennet = TRUE;
	};
	
	Info_ClearChoices  (DIA_Lord_Hagen_RescueBennet);
	Info_AddChoice (DIA_Lord_Hagen_RescueBennet,DIALOG_BACK,DIA_Lord_Hagen_RescueBennet_Back);
	Info_AddChoice (DIA_Lord_Hagen_RescueBennet,"Wieso bist du dir so sicher, das Bennet der Mörder ist?",DIA_Lord_Hagen_RescueBennet_WhySure);
	/*
	if (RescueBennet_KnowsWitness == TRUE)
	{
		Info_AddChoice (DIA_Lord_Hagen_RescueBennet,"Wer ist der Zeuge?",DIA_Lord_Hagen_RescueBennet_Witness);
	};
	*/
	Info_AddChoice (DIA_Lord_Hagen_RescueBennet,"Ich glaube, Bennet ist unschuldig.",DIA_Lord_Hagen_RescueBennet_Innoscent);
		
	if (MIS_RescueBennet == LOG_RUNNING)
	&& (MIS_RitualInnosEyeRepair == LOG_RUNNING)
	&& (Hagen_KnowsEyeKaputt == TRUE)
	{
		Info_AddChoice (DIA_Lord_Hagen_RescueBennet,"Bennet könnte uns helfen, das Auge Innos wieder zu reparieren.",DIA_Lord_Hagen_RescueBennet_Hilfe);
	};
};

func void DIA_Lord_Hagen_RescueBennet_Hilfe()
{
	AI_Output (other, self, "DIA_Lord_Hagen_Add_15_16"); //Bennet könnte uns helfen, das Auge Innos wieder zu reparieren.
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_17"); //Und wenn er die Macht Innos selbst auf die Erde herabbringen könnte.
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_18"); //Er hat einen Mord an einem Paladin begangen. Dafür wird er hingerichtet werden!
};

FUNC VOID DIA_Lord_Hagen_RescueBennet_Back()
{
	Info_ClearChoices  (DIA_Lord_Hagen_RescueBennet);
};

FUNC VOID DIA_Lord_Hagen_RescueBennet_WhySure()
{
	AI_Output			(other, self, "DIA_Lord_Hagen_RescueBennet_WhySure_15_00"); //Wieso bist du dir so sicher, das Bennet der Mörder ist?
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_WhySure_04_01"); //Wir haben einen Zeugen.
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_WhySure_04_02"); //Wie du siehst, gibt es keinen Zweifel an der Schuld des Söldners.
	//neu zusammengefasst M.F.
	AI_Output			(other, self, "DIA_Lord_Hagen_RescueBennet_Witness_15_00"); //Wer ist der Zeuge?
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Witness_04_01"); //Cornelius, der Sekretär des Statthalters, hat den Mord gesehen.
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Witness_04_02"); //Seine Beschreibung trifft zweifelsfrei auf Bennet zu. Damit ist die Sache für mich erledigt.
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Witness_04_03"); //Der Söldner wird wegen Landesverrats hängen.

	B_LogEntry (TOPIC_RESCUEBENNET,"Cornelius, der Sekretär des Stadthalters, ist also der Zeuge. Er behauptet, den Mord beobachtet zu haben."); 

	RecueBennet_KnowsCornelius = TRUE;
	//RescueBennet_KnowsWitness = TRUE; 
};
/*
FUNC VOID DIA_Lord_Hagen_RescueBennet_Witness()
{
	AI_Output			(other, self, "DIA_Lord_Hagen_RescueBennet_Witness_15_00"); //Wer ist der Zeuge?
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Witness_04_01"); //Cornelius, der Sekretär des Statthalters, hat den Mord gesehen.
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Witness_04_02"); //Seine Beschreibung trifft zweifelsfrei auf Bennet zu. Damit ist die Sache für mich erledigt.
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Witness_04_03"); //Der Söldner wird wegen Landesverrats hängen.

	B_LogEntry (TOPIC_RESCUEBENNET,"Cornelius, der Sekretär des Stadthalters, ist also der Zeuge. Er behauptet, den Mord beobachtet zu haben."); 

	RecueBennet_KnowsCornelius = TRUE;
};
*/
FUNC VOID DIA_Lord_Hagen_RescueBennet_Innoscent()
{
	AI_Output			(other, self, "DIA_Lord_Hagen_RescueBennet_Innoscent_15_00"); //Ich glaube, Bennet ist unschuldig.
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Innoscent_04_01"); //Die Beweise sind eindeutig. Er ist schuldig.
	AI_Output			(other,self , "DIA_Lord_Hagen_RescueBennet_Innoscent_15_02"); //Was ist, wenn die Beweise nicht stimmen?
	AI_Output			(self ,other, "DIA_Lord_Hagen_RescueBennet_Innoscent_04_03"); //Sei vorsichtig, was du sagst. Du erhebst schwere Anschuldigungen.
	AI_Output			(self ,other, "DIA_Lord_Hagen_RescueBennet_Innoscent_04_04"); //Wenn du mir keine Beweise vorlegen kannst, dass der Zeuge lügt, dann solltest du lieber deinen Mund halten.
};


//**************************************************************
//	Cornelius hat gelogen.	
//**************************************************************

INSTANCE DIA_Lord_Hagen_Cornelius		(C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	3;
	condition	 = 	DIA_Lord_Hagen_Cornelius_Condition;
	information	 = 	DIA_Lord_Hagen_Cornelius_Info;
	permanent	 = 	TRUE; 
	description	 = 	"Cornelius hat gelogen.";
};

FUNC INT DIA_Lord_Hagen_Cornelius_Condition ()
{	
	if (Npc_HasItems (other,ItWr_CorneliusTagebuch_Mis) >= 1)
	&& (Cornelius_IsLiar == TRUE)
	&& (MIS_RescueBennet == LOG_RUNNING)
	{
		return TRUE;
	};
};

FUNC VOID DIA_Lord_Hagen_Cornelius_Info ()
{
	AI_Output			(other, self, "DIA_Lord_Hagen_Cornelius_15_00"); //Cornelius hat gelogen.
	AI_Output			(self, other, "DIA_Lord_Hagen_Cornelius_04_01"); //Woher weißt du das?
	AI_Output			(other,self , "DIA_Lord_Hagen_Cornelius_15_02"); //Hier, ich habe sein Tagebuch. Dort steht alles drin.
	AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_03"); //(erbost) Dieser kleine schleimige Verbrecher!
	AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_04"); //Angesichts der neuen Beweise bleibt mir wohl nichts anderes übrig.
	AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_05"); //Kraft meines vom König und der Kirche verliehenen Amtes verfüge ich, ...
	AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_06"); //... dass der Gefangene Bennet von allen Anschuldigungen entlastet und somit ein freier Mann ist.
	
	B_StartOtherRoutine (Bennet,"START");
	B_StartOtherRoutine (Hodges,"START");
	
	AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_07"); //Cornelius ist wegen Falschaussage unverzüglich in Gewahrsam zu nehmen.
	
	if (Npc_IsDead (Cornelius) == TRUE)
	{
		AI_Output			(other,self , "DIA_Lord_Hagen_Cornelius_15_08"); //Das kannst du dir sparen, Cornelius ist tot.
		AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_09"); //Dann hat er seine gerechte Strafe schon bekommen. Gut gemacht.
	}
	else if (CorneliusFlee == TRUE)
	{
		AI_Output			(other,self , "DIA_Lord_Hagen_Cornelius_15_10"); //Er hat sich aus dem Staub gemacht.
		AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_11"); //Früher oder später wird er hier auftauchen. Dann werden wir ihn verhaften.
		B_StartOtherRoutine (Cornelius,"FLED");
	}
	else 
	{
		B_StartOtherRoutine (Cornelius,"PRISON");
	};
	
	
	MIS_RescueBennet = LOG_SUCCESS;
	
	B_GivePlayerXP (XP_RescueBennet);
	
	if (hero.guild == GIL_MIL)
	{
		AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_12"); //Deine Taten würden einem der Unserigen zu Ehre gereichen.
	};
};
//--------Hier endet der gesamte Befreie den Schmied Klumpatsch-------------




//**************************************************************
//	Auge Innos ganz!	
//**************************************************************

INSTANCE DIA_Lord_Hagen_AugeAmStart	(C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	4;
	condition	 = 	DIA_Lord_Hagen_AugeAmStart_Condition;
	information	 = 	DIA_Lord_Hagen_AugeAmStart_Info;
	permanent	 = 	FALSE; 
	description	 = 	"Ich trage das Auge bei mir!";
};

FUNC INT DIA_Lord_Hagen_AugeAmStart_Condition ()
{	
	if (Kapitel <= 4)
	&& (MIS_ReadyForChapter4 == TRUE)
	{
		return TRUE;
	};
};

FUNC VOID DIA_Lord_Hagen_AugeAmStart_Info ()
{
	AI_Output (other, self, "DIA_Lord_Hagen_Add_15_10"); //Ich trage das Auge bei mir!
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_11"); //(ehrfürchtig) Du trägst das Auge!
	if (Hagen_KnowsEyeKaputt == TRUE)
	{
		AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_12"); //Und du hast es wieder zusammengefügt!
	};
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_13"); //Dann bist du ein Erwählter Innos!
	AI_Output (other, self, "DIA_Lord_Hagen_Add_15_14"); //Ich werde losziehen und alle Drachen im Minental töten!
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_15"); //Geh mit Innos und vernichte das Böse mit seiner Macht!
};


//#####################################################################
//##
//##
//##							KAPITEL 4
//##
//##
//#####################################################################


// ************************************************************
// 	  				   EXIT KAP4
// ************************************************************

INSTANCE DIA_Lord_Hagen_KAP4_EXIT(C_INFO)
{
	npc			= PAL_200_Hagen;
	nr			= 999;
	condition	= DIA_Lord_Hagen_KAP4_EXIT_Condition;
	information	= DIA_Lord_Hagen_KAP4_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Lord_Hagen_KAP4_EXIT_Condition()
{
	if (Kapitel == 4)	
	{
		return TRUE;
	};
};
FUNC VOID DIA_Lord_Hagen_KAP4_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};


///////////////////////////////////////////////////////////////////////
//	Info Antipaladine
///////////////////////////////////////////////////////////////////////

instance DIA_Lord_Hagen_ANTIPALADINE(C_INFO)
{
	npc		 	= 	PAL_200_Hagen;
	nr		 	= 	3;
	condition	 = 	DIA_Lord_Hagen_ANTIPALADINE_Condition;
	information	 = 	DIA_Lord_Hagen_ANTIPALADINE_Info;
	permanent	 = 	TRUE;

	description	 = 	"Die Elitekämpfer der Orks greifen das Land an.";
};

func int DIA_Lord_Hagen_ANTIPALADINE_Condition ()
{
	if ((TalkedTo_AntiPaladin == TRUE) || (Npc_HasItems (other,ItRi_OrcEliteRing)))
	&& (Hagen_SawOrcRing == FALSE)
	&& (hero.guild == GIL_PAL)
		{
				return TRUE;
		};
};
var int Hagen_SawOrcRing;

func void DIA_Lord_Hagen_ANTIPALADINE_Info ()
{
	AI_Output			(other, self, "DIA_Lord_Hagen_ANTIPALADINE_15_00"); //Die Elitekämpfer der Orks greifen das Land an.

	Log_CreateTopic (TOPIC_OrcElite, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_OrcElite, LOG_RUNNING);
	B_LogEntry (TOPIC_OrcElite,"Ich habe Lord Hagen von den heranrückenden Horden der orkischen Kriegsherren berichtet."); 

	if (TalkedTo_AntiPaladin == TRUE)
	&& (MIS_KillOrkOberst == 0)
		{
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_01"); //Wie kommst du darauf?
			AI_Output			(other, self, "DIA_Lord_Hagen_ANTIPALADINE_15_02"); //Ich habe mit einem von ihnen gesprochen. Dein Name ist dabei gefallen.
		};

		AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_03"); //Unsinn. Meine Leute haben mir bisher von keinem massiveren Übergriff der Orks berichtet.
		AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_04"); //Vielleicht haben sich einige ihrer Späher in den näher gelegenen Wäldern verirrt.

	if (Npc_HasItems (other,ItRi_OrcEliteRing))
		{
			AI_Output			(other, self, "DIA_Lord_Hagen_ANTIPALADINE_15_05"); //Das waren keine Späher. Ich habe einem von ihnen diesen Ring hier abgenommen.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_06"); //Zeig mal her.
			B_GiveInvItems 		(other, self, ItRi_OrcEliteRing,1);
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_07"); //Mmh. Das ist allerdings sehr beunruhigend.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_08"); //Das ist das Zeichen ihrer Stärke. Die Orks haben also ihre Palisaden verlassen und kämpfen nun auf offenem Feld.
			AI_Output			(other, self, "DIA_Lord_Hagen_ANTIPALADINE_15_09"); //Ich habe erst relativ wenige gesehen. Hauptsächlich ihre Heerführer und nur einige Krieger.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_10"); //So? Dann hecken sie etwas anderes aus. Das passt nicht zu den Orks, dass die Anführer alleine ihre Schutzpalisaden verlassen.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_11"); //Es wäre aber eine gute Gelegenheit, ihnen einen empfindlichen Schlag zu versetzen.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_12"); //Wenn sie ihre Führer verlieren, wird auch ihre Kampfmoral sinken.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_13"); //Du hast einen neuen Auftrag, Ritter. Geh und töte die Anführer, die du hier in der Gegend finden kannst.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_14"); //Bringe mir ihre Ringe. Das wird die Orks auf eine harte Probe stellen.
			
			B_LogEntry (TOPIC_OrcElite,"Ich konnte Hagen einen Ring der orkischen Kriegsherren als Beweis ihrer Anwesenheit bringen. Ich soll ihm alle bringen, die ich auftreiben kann."); 
	
			if (Npc_IsDead(Ingmar)==FALSE)
			&& (MIS_KillOrkOberst == 0)
			{
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_15"); //Frag Ingmar danach. Er kann dir einige taktische Tipps geben, was die Anführer der Orks angeht.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_16"); //Die Elitekrieger der Orks sind sein Spezialgebiet. Er hatte schon öfter mit ihnen zu tun.
			B_LogEntry (TOPIC_OrcElite,"Die Elitekrieger der Orks ist Ingmars Spezialgebiet"); 
			};
			

			Hagen_SawOrcRing = TRUE;
			B_GivePlayerXP (XP_PAL_OrcRing);
		}
		else
		{
			if  (MIS_KillOrkOberst == LOG_SUCCESS)
			{
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_17"); //Deine Aussage allein, dass du den obersten Kriegsherr der Orks getötet hast, reicht mir nicht.
			};
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_18"); //Ich brauche schon ein paar handfestere Indizien, wenn ich darauf reagieren soll.
		
			B_LogEntry (TOPIC_OrcElite,"Hagen will mir aber nicht so recht Glauben schenken. Er verlangt einen Beweis dafür, dass die Eltekrieger die zivilisierten Landschaften angreifen. Hätte mich auch gewundert, wenn nicht."); 
		};
};

///////////////////////////////////////////////////////////////////////
//	Info RingeBringen
///////////////////////////////////////////////////////////////////////
instance DIA_Lord_Hagen_RINGEBRINGEN		(C_INFO)
{
	npc		 = 	PAL_200_Hagen;
	nr		 = 	5;
	condition	 = 	DIA_Lord_Hagen_RINGEBRINGEN_Condition;
	information	 = 	DIA_Lord_Hagen_RINGEBRINGEN_Info;
	permanent	 = 	TRUE;

	description	 = 	"Ich habe noch etwas über die Heerführer der Orks zu berichten.";
};

func int DIA_Lord_Hagen_RINGEBRINGEN_Condition ()
{
	if (Hagen_SawOrcRing == TRUE)
	&& (Npc_HasItems (other,ItRi_OrcEliteRing) >= 1)
	&& (hero.guild == GIL_PAL)
		{
				return TRUE;
		};
};

var int OrkRingCounter;

func void DIA_Lord_Hagen_RINGEBRINGEN_Info ()
{
	AI_Output			(other, self, "DIA_Lord_Hagen_RINGEBRINGEN_15_00"); //Ich habe noch etwas über die Heerführer der Orks zu berichten.
	AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_01"); //Dann lass mal hören.

	var int Ringcount;
	var int XP_PAL_OrcRings;
	var int OrcRingGeld;
	var int HagensRingOffer;

	HagensRingOffer = 150; //Joly: Geld für einen Orkring

	Ringcount = Npc_HasItems(other, ItRi_OrcEliteRing);


	if (Ringcount == 1)
		{
			AI_Output		(other, self, "DIA_Lord_Hagen_RINGEBRINGEN_15_02"); //Ich kann dir einen weiteren Orkring geben.
			B_GivePlayerXP (XP_PAL_OrcRing);
			B_GiveInvItems (other, self, ItRi_OrcEliteRing,1);
			OrkRingCounter = OrkRingCounter + 1;
		}
		else
		{
			AI_Output		(other, self, "DIA_Lord_Hagen_RINGEBRINGEN_15_03"); //Ich kann dir einige weitere Orkringe geben.

			B_GiveInvItems (other, self, ItRi_OrcEliteRing,  Ringcount);

			XP_PAL_OrcRings = (Ringcount * XP_PAL_OrcRing);
			OrkRingCounter = (OrkRingCounter + Ringcount); 

			B_GivePlayerXP (XP_PAL_OrcRings);
		};

	AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_04"); //Ich bin stolz auf dich. Weiter so!

	if (OrkRingCounter <= 10)
	{
		AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_05"); //Es dürften noch einige von ihnen da draußen sein.
	}
	else if	(OrkRingCounter <= 20)
	{
		AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_06"); //Bald werden wir sie in die Knie gezwungen haben.
	}
	else
	{
		AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_07"); //Würde mich wundern, wenn du noch sehr viele von ihnen finden wirst.
		AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_08"); //Bring mir ruhig weiter ihre Ringe, aber ich denke, die Botschaft haben die Orks jetzt verstanden.
		TOPIC_END_OrcElite = TRUE;
	};

	AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_09"); //Hier. Ich gebe dir etwas Gold für deine Ausrüstung.

	OrcRingGeld	= (Ringcount * HagensRingOffer);	

	CreateInvItems (self, ItMi_Gold, OrcRingGeld); 
	B_GiveInvItems (self, other, ItMi_Gold, OrcRingGeld);
};

//#####################################################################
//##
//##
//##							KAPITEL 5
//##
//##
//#####################################################################

// ************************************************************
// 	  				   EXIT KAP5
// ************************************************************

INSTANCE DIA_Lord_Hagen_KAP5_EXIT(C_INFO)
{
	npc			= PAL_200_Hagen;
	nr			= 999;
	condition	= DIA_Lord_Hagen_KAP5_EXIT_Condition;
	information	= DIA_Lord_Hagen_KAP5_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Lord_Hagen_KAP5_EXIT_Condition()
{
	if (Kapitel == 5)	
	{
		return TRUE;
	};
};
FUNC VOID DIA_Lord_Hagen_KAP5_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

//****************************************************************************
//		Die Drachen sind tot
//****************************************************************************

INSTANCE DIA_Lord_Hagen_AllDragonsDead(C_INFO)
{
	npc			= PAL_200_Hagen;
	nr			= 4;
	condition	= DIA_Lord_Hagen_AllDragonsDead_Condition;
	information	= DIA_Lord_Hagen_AllDragonsDead_Info;
	permanent	= FALSE;
	description = "Die Drachen sind tot.";
};                       
FUNC INT DIA_Lord_Hagen_AllDragonsDead_Condition()
{
	if (Kapitel == 5)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Lord_Hagen_AllDragonsDead_Info()
{	
	AI_Output (other,self ,"DIA_Lord_Hagen_AllDragonsDead_15_00"); //Die Drachen sind tot.
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_19"); //Ich wußte, daß Innos dir die Kraft geben würde, die Drachen zu besiegen!
	AI_Output (self ,other,"DIA_Lord_Hagen_AllDragonsDead_04_02"); //Wo ist das Erz?
	AI_Output (other,self ,"DIA_Lord_Hagen_AllDragonsDead_15_03"); //Die Orks belagern immer noch die Burg im Minental. Bis die Belagerung nicht beendet ist, hat Garond keine Chance, die Burg zu verlassen.
	
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_20"); //(wütend) Verdammt noch mal!
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_21"); //Wenn Garond nicht fähig ist, der Lage Herr zu werden, muss ich mich eben selbst darum kümmern.
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_22"); //Die paar Orks halten mich nicht auf! Mich nicht!
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_23"); //Ich habe meinen Männern bereits Bescheid gegeben. Wir bereiten uns auf den Abmarsch vor.
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_24"); //Wir werden ALLE gehen. Ich lasse nur eine minimale Wache am Schiff zurück.
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_25"); //Das sollte dann wohl reichen, um den Orks endgültig den Garaus zu machen!

	MIS_SCVisitShip = LOG_RUNNING;
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine	(self,"ShipFree");	
	//Npc_ExchangeRoutine (Andre,"ShipFree");
	B_StartOtherRoutine (Andre,"ShipFree");
};

// ************************************************************
// 	  				   Ich brauche das Schiff
// ************************************************************

INSTANCE DIA_Lord_Hagen_NeedShip(C_INFO)
{
	npc			= PAL_200_Hagen;
	nr			= 4;
	condition	= DIA_Lord_Hagen_NeedShip_Condition;
	information	= DIA_Lord_Hagen_NeedShip_Info;
	permanent	= FALSE;
	description = "Ich brauche ein Schiff.";
};                       
FUNC INT DIA_Lord_Hagen_NeedShip_Condition()
{
	if (ItWr_SCReadsHallsofIrdorath == TRUE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Lord_Hagen_NeedShip_Info()
{	
	AI_Output (other,self ,"DIA_Lord_Hagen_NeedShip_15_00"); //Ich brauche ein Schiff.

	if (hero.guild == GIL_PAL)
	{
		AI_Output (self ,other,"DIA_Lord_Hagen_NeedShip_04_01"); //Das brauchen viele, Soldat.
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output (self ,other,"DIA_Lord_Hagen_NeedShip_04_02"); //(lacht) Das höre ich fast jeden Tag, Ehrwürdiger. Aber ...
	};

	AI_Output (self ,other,"DIA_Lord_Hagen_NeedShip_04_03"); //Du hast ja noch nicht einmal einen Kapitän, geschweige denn eine Mannschaft.
	AI_Output (other,self ,"DIA_Lord_Hagen_NeedShip_15_04"); //Was ist mit dem Schiff im Hafen?
	AI_Output (self ,other,"DIA_Lord_Hagen_NeedShip_04_05"); //Das gehört mir, und das bleibt auch so. Mit diesem Schiff werden wir das Erz abtransportieren.
	AI_Output (self ,other,"DIA_Lord_Hagen_NeedShip_04_06"); //Wenn das erledigt ist, dann kannst du mich ja noch mal fragen.
};


// ************************************************************
// 	  				 Tor auf
// ************************************************************

INSTANCE DIA_Lord_Hagen_GateOpen (C_INFO)
{
	npc			= PAL_200_Hagen;
	nr			= 5;
	condition	= DIA_Lord_Hagen_GateOpen_Condition;
	information	= DIA_Lord_Hagen_GateOpen_Info;
	permanent	= FALSE;
	description = "Die Orks haben die Burg im Minental gestürmt!";
};                       
FUNC INT DIA_Lord_Hagen_GateOpen_Condition()
{
	if (MIS_OCGateOpen == TRUE)
	&& (Npc_KnowsInfo (other, DIA_Lord_Hagen_AllDragonsDead))
	{
		return TRUE;
	};
};
FUNC VOID DIA_Lord_Hagen_GateOpen_Info()
{	
	AI_Output (other, self, "DIA_Lord_Hagen_Add_15_29"); //Die Orks haben die Burg im Minental gestürmt!
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_30"); //Bei Innos! Was genau ist da geschehen?
	AI_Output (other, self, "DIA_Lord_Hagen_Add_15_31"); //Irgendwie hat sich wohl das Tor geöffnet...
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_32"); //Irgendwie?! Wie ist das möglich... Es muß einen Verräter in der Burg gegeben haben!
};

// ************************************************************
// 	  						 PERM
// ************************************************************

INSTANCE DIA_Lord_Hagen_Perm5 (C_INFO)
{
	npc			= PAL_200_Hagen;
	nr			= 5;
	condition	= DIA_Lord_Hagen_Perm5_Condition;
	information	= DIA_Lord_Hagen_Perm5_Info;
	permanent	= TRUE;
	description = "Worauf wartest du?";
};                       
FUNC INT DIA_Lord_Hagen_Perm5_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Lord_Hagen_AllDragonsDead))
	{
		return TRUE;
	};
};
FUNC VOID DIA_Lord_Hagen_Perm5_Info()
{	
	AI_Output (other,self, "DIA_Lord_Hagen_Add_15_33"); //Worauf wartest du?
	if (MIS_OCGateOpen == FALSE)
	{
		AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_26"); //Wir warten noch auf unsere Ausrüstung und Verpflegung. Dann brechen wir auf!
	}
	else
	{
		AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_27"); //Jetzt, wo die Burg gestürmt wurde, brauchen wir um so mehr Vorräte.
		AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_28"); //Aber unser Aufbruch wird sich dadurch nicht lange verzögern.
	};
};
