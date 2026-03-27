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
	Hagen_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime hher ist...
	
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
		Hagen_Schulden = Hagen_Schulden + 500;						//PLUS Mrder-Malus
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
	
	// ------ Schaf gettet (nahezu uninteressant - in der City gibt es keine Schafe) ------
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
	
	Wld_InsertNpc (BDT_1020_Wegelagerer, "NW_TROLLAREA_PATH_47");	//Joly: //ADDON strt dann nicht mehr
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
	AI_Output (other,self ,"DIA_Hagen_Teach_15_00"); //Let us begin.
	
	Info_ClearChoices 	(DIA_Hagen_Teach);
	Info_AddChoice 		(DIA_Hagen_Teach,	DIALOG_BACK		,DIA_Hagen_Teach_Back);
	Info_AddChoice		(DIA_Hagen_Teach, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(other, NPC_TALENT_2H, 1))			,DIA_Hagen_Teach_2H_1);
	Info_AddChoice		(DIA_Hagen_Teach, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent(other, NPC_TALENT_2H, 5))			,DIA_Hagen_Teach_2H_5);

};
FUNC VOID DIA_Hagen_Teach_Back ()
{
	if (other.HitChance[NPC_TALENT_2H] >= 100)
	{
		AI_Output (self,other,"DIA_Hagen_Teach_04_00"); //You are now a worthy swordmaster. I can teach you no more.
		AI_Output (self,other,"DIA_Hagen_Teach_04_01"); //May your future deeds be guided by the wisdom of a swordmaster.
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
	AI_Output			(other, self, "DIA_Lord_Hagen_Knight_15_00"); //I want to take up service with the order.
	
	if (MIS_RescueBennet == LOG_SUCCESS)
	{
		AI_Output			(self, other, "DIA_Lord_Hagen_Knight_04_01"); //Good, you have proven that you have the courage, the skill and the knowledge to serve Innos.
		AI_Output			(self ,other, "DIA_Lord_Hagen_Knight_04_02"); //Your deeds bear witness to a pure heart.
		AI_Output			(self ,other, "DIA_Lord_Hagen_Knight_04_03"); //If it is your wish, then I shall bid you welcome to our order.
		
		Info_ClearChoices (DIA_Lord_Hagen_Knight);
		Info_AddChoice (DIA_Lord_Hagen_Knight,"Ich bin mir noch nicht sicher.",DIA_Lord_Hagen_Knight_No);
		Info_AddChoice (DIA_Lord_Hagen_Knight,"Ich bin bereit!",DIA_Lord_Hagen_Knight_Yes);
	}
	else
	{
		AI_Output			(self ,other, "DIA_Lord_Hagen_Knight_04_04"); //To be a warrior of Innos means to devote yourself entirely to the cause of Innos.
		AI_Output			(self ,other, "DIA_Lord_Hagen_Knight_04_05"); //Only the noblest and bravest warriors are accepted into our order.
		AI_Output			(self ,other, "DIA_Lord_Hagen_Knight_04_06"); //If you are truly determined to become a paladin, you must prove that you are worthy.
	};
	
	Hagen_GaveInfoKnight = TRUE;	
};

FUNC VOID DIA_Lord_Hagen_Knight_No ()
{
	AI_Output (other,self ,"DIA_Lord_Hagen_Knight_No_15_00"); //I'm not quite sure yet.
	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_No_04_01"); //Then go and free your heart of doubt. Return when you are prepared.

	Info_ClearChoices (DIA_Lord_Hagen_Knight);
};

FUNC VOID DIA_Lord_Hagen_Knight_Yes()
{
	AI_Output (other,self ,"DIA_Lord_Hagen_Knight_Yes_15_00"); //I am ready!
	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_01"); //(serious) Then so shall it be!
	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_02"); //(serious) Many men have taken this path and given their lives in the name of Innos.
	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_03"); //(serious) Do you swear that your deeds will honor their deaths and proclaim the fame of Innos?
	AI_Output (other,self ,"DIA_Lord_Hagen_Knight_Yes_15_04"); //I swear!
	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_05"); //Then, from now on, you are a member of our fellowship.
	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_06"); //I hereby appoint you a warrior of Innos.
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

	AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_08"); //Henceforth, by virtue of your rank, you shall have access to the monastery.

	if ((Npc_IsDead(Albrecht))== FALSE)
	{
		AI_Output (self ,other,"DIA_Lord_Hagen_Knight_Yes_04_09"); //Albrecht will teach you our magic, just go and talk to him.
	};
	
	AI_Output (self ,other,"DIA_Lord_Hagen_Add_04_02"); //And, of course, our quarters in the upper end of the city are now open to you.

	hero.guild = GIL_PAL;
	Npc_SetTrueGuild (other, GIL_PAL);
	
	Info_ClearChoices (DIA_Lord_Hagen_Knight);
};


//***********************************************
//	Wie kann ich mich wrdig erweisen
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
	AI_Output			(other, self, "DIA_Lord_Hagen_WhatProof_15_00"); //How can I prove myself worthy?
	AI_Output			(self, other, "DIA_Lord_Hagen_WhatProof_04_01"); //Your deeds will show whether you are worthy.
	AI_Output			(self ,other, "DIA_Lord_Hagen_WhatProof_04_02"); //We fight for freedom and justice in the name of Innos.
	AI_Output			(self ,other, "DIA_Lord_Hagen_WhatProof_04_03"); //We fight against Beliar and his henchmen, who want to destroy the just order of Innos.
	AI_Output			(other, self, "DIA_Lord_Hagen_WhatProof_15_04"); //I understand.
	AI_Output			(self ,other, "DIA_Lord_Hagen_WhatProof_04_05"); //You understand nothing at all! Our honor is our life and our life is Innos.
	AI_Output			(self ,other, "DIA_Lord_Hagen_WhatProof_04_06"); //A paladin goes to battle praising Innos, and many of us have lost their lives on the altar of the eternal strife between Good and Evil.
	AI_Output			(self ,other, "DIA_Lord_Hagen_WhatProof_04_07"); //Every single one of us has committed himself to this tradition. If we fail, we tarnish the deeds of our fallen comrades.
	AI_Output			(self ,other, "DIA_Lord_Hagen_WhatProof_04_08"); //Only he who truly understands this is worthy of being a paladin.
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
	AI_Output (other,self ,"DIA_Lord_Hagen_KAP3U4_PERM_15_00"); //How's the situation?
	
	if (MIS_OLDWORLD == LOG_SUCCESS)
	{
		AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_04"); //I must find a way to rescue this expedition.
		AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_05"); //We must do something against the dragons.
		if (Hagen_KnowsEyeKaputt == FALSE)
		{
			AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_06"); //(to himself) Perhaps the Eye of Innos can save us all now...
		};
	}
	else
	{
		AI_Output (self ,other,"DIA_Lord_Hagen_KAP3U4_PERM_04_01"); //I shall go mad here. I am a soldier, not a bureaucrat.
		AI_Output (self ,other,"DIA_Lord_Hagen_KAP3U4_PERM_04_02"); //With all this paperwork that I must do, I barely remember what my sword feels like in my hand.
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
	AI_Output (other, self, "DIA_Lord_Hagen_Add_15_07"); //I have the Eye - it is broken.
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_08"); //WHAT? By Innos! What have you done? We need the Eye!
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_09"); //Speak to Pyrokar! There must be a way to put it back together.
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
	AI_Output	(other, self, "DIA_Lord_Hagen_BACKINTOWN_15_00"); //I bring you news from Garond. Here, he gave me these lines for you.
	B_GiveInvItems 	(other, self,ItWr_PaladinLetter_MIS,1);
	B_UseFakeScroll 	();  
	AI_Output (self, other, "DIA_Lord_Hagen_BACKINTOWN_04_01"); //Our situation is worse than I had feared. But report to me on the situation in the Valley of Mines.
	AI_Output (other, self, "DIA_Lord_Hagen_BACKINTOWN_15_02"); //The paladins are holed up in the castle in the Valley of mines, surrounded by orcs.
	AI_Output (other, self, "DIA_Lord_Hagen_BACKINTOWN_15_03"); //There were many casualties in the prospecting operations, and there's barely any ore left.
	AI_Output (other, self, "DIA_Lord_Hagen_BACKINTOWN_15_04"); //Well, I should say that, without any help, the lads are lost. That's how it looks.
	AI_Output (self, other, "DIA_Lord_Hagen_BACKINTOWN_04_05"); //I shall find a way to rescue this expedition. You have done much for us. Innos will thank you...
	AI_Output (other, self, "DIA_Lord_Hagen_BACKINTOWN_15_06"); //I'm not all that interested in his gratitude. I want his eye.
	AI_Output (self, other, "DIA_Lord_Hagen_BACKINTOWN_04_07"); //Yes, of course. I stand by my word. Take this letter. It will open the monastery gates to you.
	AI_Output (self, other, "DIA_Lord_Hagen_BACKINTOWN_04_08"); //Speak with Pyrokar, the highest Fire Magician, and show him this authorization. He will grant you access to the Eye of Innos.
	
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_00"); //One more thing, before you go...
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_01"); //Take this rune as a token of my gratitude. It will take you safely back to the city whenever you want.
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
					B_StartOtherRoutine (MiltenNW,"Start");		//zur Sicherheit
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
	AI_Output			(other, self, "DIA_Lord_Hagen_RescueBennet_15_00"); //I need to talk to you about Bennet.
	
	if (Hagen_einmalBennet == FALSE)
	{
		AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_04_01"); //But that's the mercenary who murdered one of my men.
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
	AI_Output (other, self, "DIA_Lord_Hagen_Add_15_16"); //Bennet could help us to repair the Eye of Innos.
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_17"); //Even if he could summon down the power of Innos himself to earth...
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_18"); //He has murdered a paladin. He will be executed for that!
};

FUNC VOID DIA_Lord_Hagen_RescueBennet_Back()
{
	Info_ClearChoices  (DIA_Lord_Hagen_RescueBennet);
};

FUNC VOID DIA_Lord_Hagen_RescueBennet_WhySure()
{
	AI_Output			(other, self, "DIA_Lord_Hagen_RescueBennet_WhySure_15_00"); //How come you're so sure that Bennet is the killer?
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_WhySure_04_01"); //We have a witness.
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_WhySure_04_02"); //As you see, there is no doubt about the mercenary's guilt.
	//neu zusammengefasst M.F.
	AI_Output			(other, self, "DIA_Lord_Hagen_RescueBennet_Witness_15_00"); //Who is that witness?
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Witness_04_01"); //Cornelius, the governor's secretary, saw the murder.
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Witness_04_02"); //His description fits Bennet, no doubt about that. As far as I am concerned, that settles the matter.
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Witness_04_03"); //The mercenary will hang for treason.

	B_LogEntry (TOPIC_RESCUEBENNET,"Cornelius, der Sekretär des Stadthalters, ist also der Zeuge. Er behauptet, den Mord beobachtet zu haben."); 

	RecueBennet_KnowsCornelius = TRUE;
	//RescueBennet_KnowsWitness = TRUE; 
};
/*
FUNC VOID DIA_Lord_Hagen_RescueBennet_Witness()
{
	AI_Output			(other, self, "DIA_Lord_Hagen_RescueBennet_Witness_15_00"); //Wer ist der Zeuge?
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Witness_04_01"); //Cornelius, der Sekretr des Statthalters, hat den Mord gesehen.
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Witness_04_02"); //Seine Beschreibung trifft zweifelsfrei auf Bennet zu. Damit ist die Sache fr mich erledigt.
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Witness_04_03"); //Der Sldner wird wegen Landesverrats hngen.

	B_LogEntry (TOPIC_RESCUEBENNET,"Cornelius, der Sekretr des Stadthalters, ist also der Zeuge. Er behauptet, den Mord beobachtet zu haben."); 

	RecueBennet_KnowsCornelius = TRUE;
};
*/
FUNC VOID DIA_Lord_Hagen_RescueBennet_Innoscent()
{
	AI_Output			(other, self, "DIA_Lord_Hagen_RescueBennet_Innoscent_15_00"); //I believe that Bennet is innocent.
	AI_Output			(self, other, "DIA_Lord_Hagen_RescueBennet_Innoscent_04_01"); //The evidence is clear. He is guilty.
	AI_Output			(other,self , "DIA_Lord_Hagen_RescueBennet_Innoscent_15_02"); //So what if the proof is wrong?
	AI_Output			(self ,other, "DIA_Lord_Hagen_RescueBennet_Innoscent_04_03"); //Be careful what you say. You raise some serious accusations.
	AI_Output			(self ,other, "DIA_Lord_Hagen_RescueBennet_Innoscent_04_04"); //If you cannot present me with evidence that the witness lied, then you had best hold your tongue.
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
	AI_Output			(other, self, "DIA_Lord_Hagen_Cornelius_15_00"); //Cornelius lied.
	AI_Output			(self, other, "DIA_Lord_Hagen_Cornelius_04_01"); //How do you know that?
	AI_Output			(other,self , "DIA_Lord_Hagen_Cornelius_15_02"); //Here, I've got his diary. Everything's in there.
	AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_03"); //(furious) That slimy little criminal!
	AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_04"); //In view of the new evidence, there is nothing else I can do.
	AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_05"); //By virtue of the office granted me by king and church, I declare...
	AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_06"); //... that the prisoner Bennet is exonerated of all charges and is thereby a free man.
	
	B_StartOtherRoutine (Bennet,"Start");
	B_StartOtherRoutine (Hodges,"Start");
	
	AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_07"); //Cornelius is to be taken into immediate custody for perjury.
	
	if (Npc_IsDead (Cornelius) == TRUE)
	{
		AI_Output			(other,self , "DIA_Lord_Hagen_Cornelius_15_08"); //Save yourself the trouble. Cornelius is dead.
		AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_09"); //Then he has already received his just punishment. Well done.
	}
	else if (CorneliusFlee == TRUE)
	{
		AI_Output			(other,self , "DIA_Lord_Hagen_Cornelius_15_10"); //He's made himself scarce.
		AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_11"); //Sooner or later, he will turn up. Then we shall arrest him.
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
		AI_Output			(self ,other, "DIA_Lord_Hagen_Cornelius_04_12"); //Your deeds would redound to the honor of one of our own.
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
	AI_Output (other, self, "DIA_Lord_Hagen_Add_15_10"); //I carry the Eye!
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_11"); //(reverently) You bear the Eye!
	if (Hagen_KnowsEyeKaputt == TRUE)
	{
		AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_12"); //And you have put it back together!
	};
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_13"); //Then you are a Chosen of Innos!
	AI_Output (other, self, "DIA_Lord_Hagen_Add_15_14"); //I shall set out and kill all the dragons in the Valley of Mines!
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_15"); //Go with Innos and destroy Evil with his power!
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
	AI_Output			(other, self, "DIA_Lord_Hagen_ANTIPALADINE_15_00"); //The orcs' elite warriors are attacking the land.

	Log_CreateTopic (TOPIC_OrcElite, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_OrcElite, LOG_RUNNING);
	B_LogEntry (TOPIC_OrcElite,"Ich habe Lord Hagen von den heranrückenden Horden der orkischen Kriegsherren berichtet."); 

	if (TalkedTo_AntiPaladin == TRUE)
	&& (MIS_KillOrkOberst == 0)
		{
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_01"); //What makes you say that?
			AI_Output			(other, self, "DIA_Lord_Hagen_ANTIPALADINE_15_02"); //I talked to one of them. Your name was mentioned.
		};

		AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_03"); //Nonsense. My people have not reported a massive invasion of orcs so far.
		AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_04"); //Perhaps some of their scouts got lost in the nearby woods.

	if (Npc_HasItems (other,ItRi_OrcEliteRing))
		{
			AI_Output			(other, self, "DIA_Lord_Hagen_ANTIPALADINE_15_05"); //Those were no scouts. I took this ring from one of them.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_06"); //Show me.
			B_GiveInvItems 		(other, self, ItRi_OrcEliteRing,1);
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_07"); //Mmh. That is certainly disturbing.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_08"); //That is a sign of their strength. So the orcs have left their palisades and are fighting on the open field.
			AI_Output			(other, self, "DIA_Lord_Hagen_ANTIPALADINE_15_09"); //I haven't seen a whole lot so far. Mainly their warlords, and only a few fighters.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_10"); //So? Then they must be plotting something else. That is rather unlike orcs that their leaders should leave their protective palisades by themselves.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_11"); //It would be a good opportunity, however, to deliver them a telling blow.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_12"); //If they lose their leaders, their morale will sink as well.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_13"); //You have a new assignment, knight. Go and kill the orc leaders you can find here in the area.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_14"); //Bring me their rings. That will be a tough blow to the orcs.
			
			B_LogEntry (TOPIC_OrcElite,"Ich konnte Hagen einen Ring der orkischen Kriegsherren als Beweis ihrer Anwesenheit bringen. Ich soll ihm alle bringen, die ich auftreiben kann."); 
	
			if (Npc_IsDead(Ingmar)==FALSE)
			&& (MIS_KillOrkOberst == 0)
			{
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_15"); //Ask Ingmar about this. He can give you a few tactical hints for fighting the orc leaders.
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_16"); //The orcs' elite warriors are his specialty. He has often had to deal with them.
			B_LogEntry (TOPIC_OrcElite,"Die Elitekrieger der Orks ist Ingmars Spezialgebiet"); 
			};
			

			Hagen_SawOrcRing = TRUE;
			B_GivePlayerXP (XP_PAL_OrcRing);
		}
		else
		{
			if  (MIS_KillOrkOberst == LOG_SUCCESS)
			{
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_17"); //Your word alone that you have killed the chief warlord of the orcs is not enough for me.
			};
			AI_Output			(self, other, "DIA_Lord_Hagen_ANTIPALADINE_04_18"); //I need more tangible evidence if I am to respond to this.
		
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
	AI_Output			(other, self, "DIA_Lord_Hagen_RINGEBRINGEN_15_00"); //There's something else I have to report about the orcish warlords.
	AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_01"); //Then tell me.

	var int Ringcount;
	var int XP_PAL_OrcRings;
	var int OrcRingGeld;
	var int HagensRingOffer;

	HagensRingOffer = 150; //Joly: Geld fr einen Orkring

	Ringcount = Npc_HasItems(other, ItRi_OrcEliteRing);


	if (Ringcount == 1)
		{
			AI_Output		(other, self, "DIA_Lord_Hagen_RINGEBRINGEN_15_02"); //I can give you another orc ring.
			B_GivePlayerXP (XP_PAL_OrcRing);
			B_GiveInvItems (other, self, ItRi_OrcEliteRing,1);
			OrkRingCounter = OrkRingCounter + 1;
		}
		else
		{
			AI_Output		(other, self, "DIA_Lord_Hagen_RINGEBRINGEN_15_03"); //I can give you some more orc rings.

			B_GiveInvItems (other, self, ItRi_OrcEliteRing,  Ringcount);

			XP_PAL_OrcRings = (Ringcount * XP_PAL_OrcRing);
			OrkRingCounter = (OrkRingCounter + Ringcount); 

			B_GivePlayerXP (XP_PAL_OrcRings);
		};

	AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_04"); //I am proud of you. Carry on!

	if (OrkRingCounter <= 10)
	{
		AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_05"); //There may still be a few of them out there.
	}
	else if	(OrkRingCounter <= 20)
	{
		AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_06"); //Soon we shall have forced them to their knees.
	}
	else
	{
		AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_07"); //I would be amazed if you still found very many of them.
		AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_08"); //You are welcome to keep bringing me their rings, but I think the orcs have gotten the message now.
		TOPIC_END_OrcElite = TRUE;
	};

	AI_Output			(self, other, "DIA_Lord_Hagen_RINGEBRINGEN_04_09"); //Here. Let me give you some gold towards your equipment.

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
	AI_Output (other,self ,"DIA_Lord_Hagen_AllDragonsDead_15_00"); //The dragons are dead.
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_19"); //I knew that Innos would give you the strength to defeat the dragons!
	AI_Output (self ,other,"DIA_Lord_Hagen_AllDragonsDead_04_02"); //Where is the ore?
	AI_Output (other,self ,"DIA_Lord_Hagen_AllDragonsDead_15_03"); //The orcs are still besieging the castle in the Valley of Mines. Garond stands no chance of leaving the castle before the siege is ended.
	
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_20"); //(furious) Damnit!
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_21"); //If Garond isn't capable of handling the situation, then I shall have to see to it myself.
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_22"); //A few orcs won't stop me! Not me!
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_23"); //I have already informed my men. We are preparing for departure.
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_24"); //We shall ALL go. I shall leave only a minimal guard on the ship.
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_25"); //That should be enough then to finally put an end to the orcs!

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
	AI_Output (other,self ,"DIA_Lord_Hagen_NeedShip_15_00"); //I need a ship.

	if (hero.guild == GIL_PAL)
	{
		AI_Output (self ,other,"DIA_Lord_Hagen_NeedShip_04_01"); //So do a lot of people, soldier.
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output (self ,other,"DIA_Lord_Hagen_NeedShip_04_02"); //(laughs) I hear that almost every day, reverend. But...
	};

	AI_Output (self ,other,"DIA_Lord_Hagen_NeedShip_04_03"); //You do not even have a captain, to say nothing of a crew.
	AI_Output (other,self ,"DIA_Lord_Hagen_NeedShip_15_04"); //What about the ship in the harbor?
	AI_Output (self ,other,"DIA_Lord_Hagen_NeedShip_04_05"); //It belongs to me, and that's that. We shall transport the ore with this ship.
	AI_Output (self ,other,"DIA_Lord_Hagen_NeedShip_04_06"); //Once that is done, then you can ask me again.
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
	AI_Output (other, self, "DIA_Lord_Hagen_Add_15_29"); //The orcs have stormed the castle in the Valley of Mines!
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_30"); //By Innos! What exactly happened there?
	AI_Output (other, self, "DIA_Lord_Hagen_Add_15_31"); //Somehow the gate must have opened...
	AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_32"); //Somehow?! How is that possible... There must have been a traitor in the castle!
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
	AI_Output (other,self, "DIA_Lord_Hagen_Add_15_33"); //What are you waiting for?
	if (MIS_OCGateOpen == FALSE)
	{
		AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_26"); //We are still waiting for our equipment and provisions. Then we set off!
	}
	else
	{
		AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_27"); //Now that the castle has been stormed, we need even more provisions.
		AI_Output (self ,other, "DIA_Lord_Hagen_Add_04_28"); //But that will not delay our departure for long.
	};
};
