// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Lares_Kap1_EXIT(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 999;
	condition	= DIA_Lares_Kap1_EXIT_Condition;
	information	= DIA_Lares_Kap1_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Lares_Kap1_EXIT_Condition()
{
	if (Kapitel == 1)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_Kap1_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

///////////////////////////////////////////////////////////////////////
//	Info HaltsMaul
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Lares_HaltsMaul		(C_INFO)
{
	npc		 = 	SLD_449_Lares;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Lares_HaltsMaul_Condition;
	information	 = 	DIA_Addon_Lares_HaltsMaul_Info;
	important	 = 	TRUE;
	permanent	 = 	TRUE;
};

func int DIA_Addon_Lares_HaltsMaul_Condition ()
{
	if (Lares_HaltsMaul == TRUE)
	&& (Npc_IsInState (self,ZS_Talk))
		{
			return TRUE;
		};	
};

func void DIA_Addon_Lares_HaltsMaul_Info ()
{
	AI_Output	(self, other, "DIA_Addon_Lares_HaltsMaul_09_01"); //Wir sehen uns später am Hafen.
	AI_StopProcessInfos (self);
};

// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Lares_PICKPOCKET (C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 900;
	condition	= DIA_Lares_PICKPOCKET_Condition;
	information	= DIA_Lares_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_100;
};                       

FUNC INT DIA_Lares_PICKPOCKET_Condition()
{
	C_Beklauen (95, 350);
};
 
FUNC VOID DIA_Lares_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Lares_PICKPOCKET);
	Info_AddChoice		(DIA_Lares_PICKPOCKET, DIALOG_BACK 			,DIA_Lares_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Lares_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Lares_PICKPOCKET_DoIt);
};

func void DIA_Lares_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Lares_PICKPOCKET);
};
	
func void DIA_Lares_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Lares_PICKPOCKET);
};
// ************************************************************
// 			  				   Hallo 
// ************************************************************
instance DIA_Lares_HALLO		(C_INFO)
{
	npc			= SLD_449_Lares;
	nr		 	= 2;
	condition	= DIA_Lares_HALLO_Condition;
	information	= DIA_Lares_HALLO_Info;
	permanent 	= FALSE;
	important 	= TRUE; 
};
func int DIA_Lares_HALLO_Condition ()
{	
	return TRUE;
};
func void DIA_Lares_HALLO_Info ()
{
	AI_Output (self, other, "DIA_Lares_HALLO_09_00"); //Ich werd verrückt, was machst du denn hier?
	
	if (Mil_310_schonmalreingelassen == FALSE)
	&& (Mil_333_schonmalreingelassen == FALSE)
	{
		AI_Output (self, other, "DIA_Lares_HALLO_09_01"); //Bist du bis hierher GESCHWOMMEN?
		AI_Output (self, other, "DIA_Lares_HALLO_09_02"); //(lacht) Das ist auch ein Weg, an den Stadttorwachen vorbeizukommen.
		B_GivePlayerXP (500); //wer's schafft...	
	};
			
	Info_ClearChoices 	(DIA_Lares_HALLO);
	
	Info_AddChoice 		(DIA_Lares_HALLO,"Sind wir uns schon mal begegnet?",DIA_Lares_HALLO_NO);
	Info_AddChoice 		(DIA_Lares_HALLO,"Hey, Lares alter Gauner...",DIA_Lares_HALLO_YES);
};
FUNC VOID DIA_Lares_HALLO_NO()
{
	AI_Output (other, self, "DIA_Lares_HALLO_NO_15_00"); //Sind wir uns schon mal begegnet?
	AI_Output (self, other, "DIA_Lares_HALLO_NO_09_01"); //Mann, du kannst dich nicht mehr an mich erinnern?! Ich hab mich im Neuen Lager rumgetrieben.
	AI_Output (self, other, "DIA_Lares_HALLO_NO_09_02"); //Die Liste für die Mine ... Mann, wir hatten echt 'ne Menge Spaß. Erinnerst du dich denn noch an Lee?
	
	Info_ClearChoices 	(DIA_Lares_HALLO);
	
	Info_AddChoice 		(DIA_Lares_HALLO,"Natürlich kenne ich Lee noch!",DIA_Lares_HALLO_LEE);
	Info_AddChoice 		(DIA_Lares_HALLO,"Lee...?",DIA_Lares_HALLO_NOIDEA);
};
FUNC VOID DIA_Lares_HALLO_YES()
{
	AI_Output (other, self, "DIA_Lares_HALLO_YES_15_00"); //Hey, Lares, alter Gauner, wie bist du hier her gekommen?
	AI_Output (self, other, "DIA_Lares_HALLO_YES_09_01"); //Ich konnte gerade noch rechtzeitig aus dem Minental fliehen, zusammen mit Lee und ein paar anderen Jungs.
	AI_Output (self, other, "DIA_Lares_HALLO_YES_09_02"); //Du kannst dich doch noch an Lee erinnern, oder?
	
	Info_ClearChoices 	(DIA_Lares_HALLO);
	
	Info_AddChoice 		(DIA_Lares_HALLO,"Natürlich kenne ich Lee noch!",DIA_Lares_HALLO_LEE);
	Info_AddChoice 		(DIA_Lares_HALLO,"Lee...?",DIA_Lares_HALLO_NOIDEA);
};

// ------------------------------	
	func void B_Lares_AboutLee()
	{
		AI_Output (self, other, "B_Lares_AboutLee_09_00"); //Ich bin damals mit ihm aus der Kolonie abgehauen. Kurz nachdem die Barriere zerstört wurde.
		AI_Output (self, other, "B_Lares_AboutLee_09_01"); //Er ist jetzt mit seinen Jungs auf dem Hof von Onar, dem Großbauern.
		AI_Output (self, other, "B_Lares_AboutLee_09_02"); //Er hat einen Deal mit dem Bauern gemacht. Er und seine Jungs verteidigen den Hof und Onar füttert sie dafür durch.
	};
// ------------------------------	

FUNC VOID DIA_Lares_HALLO_LEE()
{
	AI_Output (other, self, "DIA_Lares_HALLO_LEE_15_00"); //Natürlich kenne ich Lee noch!
	B_Lares_AboutLee();
	
	Info_ClearChoices 	(DIA_Lares_HALLO);
};
FUNC VOID DIA_Lares_HALLO_NOIDEA()
{
	AI_Output (other, self, "DIA_Lares_HALLO_NOIDEA_15_00"); //Lee...?
	AI_Output (self, other, "DIA_Lares_HALLO_NOIDEA_09_01"); //Du hast wohl 'ne Menge mitgemacht, was? Lee war der Anführer der Söldner im Neuen Lager.
	B_Lares_AboutLee();
	
	Info_ClearChoices 	(DIA_Lares_HALLO);
};

// ************************************************************
// 							Teleporter
// ************************************************************
instance DIA_Addon_Lares_Teleportstation		(C_INFO)
{
	npc		 = 	SLD_449_Lares;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Lares_Teleportstation_Condition;
	information	 = 	DIA_Addon_Lares_Teleportstation_Info;

	description	 = 	"Hast du schon mal einen Teleportstein benutzt?";
};
func int DIA_Addon_Lares_Teleportstation_Condition ()
{
	if (SCUsed_TELEPORTER == TRUE)			//SC hat schon mal einen Teleporter benutzt
	{
		return TRUE;
	};
};
func void DIA_Addon_Lares_Teleportstation_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Lares_Teleportstation_15_00"); //Hast du schon mal einen Teleportstein benutzt?
	AI_Output	(self, other, "DIA_Addon_Lares_Teleportstation_09_01"); //Nein, aber ich hörte davon. Die Wassermagier sind sich bei den Dingern noch nicht sicher.
	AI_Output	(other, self, "DIA_Addon_Lares_Teleportstation_15_02"); //Ich hab's schon ausprobiert.
	AI_Output	(self, other, "DIA_Addon_Lares_Teleportstation_09_03"); //(lacht) War ja klar. Du hast vor gar nichts Angst, was?	
		B_GivePlayerXP (XP_Ambient);
};

// ************************************************************
// 								Hilfe
// ************************************************************
var int DIA_Addon_Lares_RangerHelp_gilde_OneTime_Waffe;
var int DIA_Addon_Lares_RangerHelp_gilde_OneTime_geld;
var int DIA_Addon_Lares_RangerHelp_gilde_OneTime_ruestung;
// ------------------------------------------------------------
instance DIA_Addon_Lares_RangerHelp		(C_INFO)
{
	npc		 	= SLD_449_Lares;
	nr		 	= 2;
	condition	= DIA_Addon_Lares_RangerHelp_Condition;
	information	= DIA_Addon_Lares_RangerHelp_Info;
	permanent	= TRUE;
	description	= "Ich brauche deine Hilfe";
};
func int DIA_Addon_Lares_RangerHelp_Condition ()
{
	if 
	(
		   (Lares_RangerHelp == TRUE)
		&& (DIA_Addon_Lares_RangerHelp_gilde_OneTime_Waffe == FALSE)
		&& (DIA_Addon_Lares_RangerHelp_gilde_OneTime_geld == FALSE)
		&& (DIA_Addon_Lares_RangerHelp_gilde_OneTime_ruestung == FALSE)
	)
	|| (Npc_IsInState (Moe, ZS_Attack))
	{
		return TRUE;
	};
};
func void DIA_Addon_Lares_RangerHelp_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Lares_RangerHelp_15_00"); //Ich brauche deine Hilfe
	AI_Output	(self, other, "DIA_Addon_Lares_RangerHelp_09_01"); //Und was genau schwebt dir da vor?
	
	Info_ClearChoices	(DIA_Addon_Lares_RangerHelp);
	Info_AddChoice (DIA_Addon_Lares_RangerHelp, DIALOG_BACK, DIA_Addon_Lares_RangerHelp_nix );
	
	if (Npc_IsInState (Moe, ZS_Attack))
	{
		Info_AddChoice (DIA_Addon_Lares_RangerHelp, "Dieser Typ da belästigt mich!", DIA_Addon_Lares_RangerHelp_Moe);
	};
		
	if (DIA_Addon_Lares_RangerHelp_gilde_OneTime_Waffe == FALSE)
	&& (Lares_RangerHelp == TRUE)
	{
		Info_AddChoice	(DIA_Addon_Lares_RangerHelp, "Ich brauche eine bessere Waffe.", DIA_Addon_Lares_RangerHelp_waffe );
	};

	if (DIA_Addon_Lares_RangerHelp_gilde_OneTime_ruestung == FALSE)
	&& (Lares_RangerHelp == TRUE)
	{
		Info_AddChoice	(DIA_Addon_Lares_RangerHelp, "Wie sieht's mit 'ner besseren Rüstung aus?", DIA_Addon_Lares_RangerHelp_ruestung );
	};

	if (DIA_Addon_Lares_RangerHelp_gilde_OneTime_geld == FALSE)
	&& (Lares_RangerHelp == TRUE)
	{
		Info_AddChoice	(DIA_Addon_Lares_RangerHelp, "Ich brauche Geld.", DIA_Addon_Lares_RangerHelp_geld );
	};
};
func void DIA_Addon_Lares_RangerHelp_ruestung ()
{
	AI_Output (other, self, "DIA_Addon_Lares_RangerHelp_ruestung_15_00"); //Wie sieht's mit 'ner besseren Rüstung aus?
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_ruestung_09_01"); //Mmh. Ich glaube, Matteo verkauft Rüstungen. Aber er will sicher 'ne Menge Geld dafür sehen.
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_ruestung_09_02"); //Allerdings könntest du billiger rankommen, wenn du kein Problem damit hast, dich ein bisschen mit der Miliz anzulegen ...
	AI_Output (other, self, "DIA_Addon_Lares_RangerHelp_ruestung_15_03"); //Wie meinst du das?
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_ruestung_09_04"); //Neben Matteos Haus ist ein Lagerplatz. Aber die Waren wurden alle von der Miliz beschlagnahmt.
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_ruestung_09_05"); //Geh zu Zuris am Marktplatz und besorg dir einen Schlafzauber. Damit legst du die Wache schlafen.
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_ruestung_09_06"); //Ich bin mir sicher, dass du in Matteos Lager eine brauchbare Rüstung finden wirst ...
	DIA_Addon_Lares_RangerHelp_gilde_OneTime_ruestung = TRUE;
};
func void DIA_Addon_Lares_RangerHelp_waffe ()
{
	AI_Output (other, self, "DIA_Addon_Lares_RangerHelp_waffe_15_00"); //Ich brauche eine bessere Waffe.
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_waffe_09_01"); //Damit kann ich dir leider nicht dienen. Hast du es schon mal am Marktplatz versucht?
	DIA_Addon_Lares_RangerHelp_gilde_OneTime_Waffe = TRUE;
};
func void DIA_Addon_Lares_RangerHelp_geld ()
{
	AI_Output (other, self, "DIA_Addon_Lares_RangerHelp_geld_15_00"); //Ich brauche Geld.
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_geld_09_01"); //Das brauchen wir alle. Soll heißen, ich kann dir nichts geben. Aber Lehmar, der Geldverleiher, schuldet mir noch einen Gefallen.
	AI_Output (self, other, "DIA_Addon_Lares_RangerHelp_geld_09_02"); //Geh zu ihm und leih dir das Geld, das du brauchst. Den Rest regle ich dann schon. Du findest Lehmar im Hafenviertel an der Grenze zur Unterstadt.
	DIA_Addon_Lares_RangerHelp_gilde_OneTime_geld = TRUE;
	RangerHelp_LehmarKohle = TRUE;
	Info_ClearChoices	(DIA_Addon_Lares_RangerHelp);
};
func void DIA_Addon_Lares_RangerHelp_nix ()
{
	Info_ClearChoices	(DIA_Addon_Lares_RangerHelp);
};
// ------------------------------------------------------------
// Moe
// ------------------------------------------------------------
func void DIA_Addon_Lares_RangerHelp_Moe()
{
	AI_Output (other, self, "DIA_Addon_Lares_Moe_15_00"); //Dieser Typ da belästigt mich ...
	AI_Output (self, other, "DIA_Addon_Lares_Moe_09_01"); //Das haben wir gleich ...
	Info_ClearChoices (DIA_Addon_Lares_RangerHelp);
	AI_StopProcessInfos (self);
	other.aivar[AIV_INVINCIBLE] = FALSE;
	B_Attack (self, Moe, AR_GuardStopsFight, 0);
};



// ************************************************************
// ***														***
// 							Gothic II
// ***														***
// ************************************************************



// ************************************************************
// 			  			Paladine und GILDE
// ************************************************************

// ------------------------------------------------------------
// 			  					About Sld
// ------------------------------------------------------------
var int Lares_WorkForLee;
var int Lares_WayToOnar;
// ------------------------------------------------------------
instance DIA_Lares_AboutSld (C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	10;
	condition	 = 	DIA_Lares_AboutSld_Condition;
	information	 = 	DIA_Lares_AboutSld_Info;
	permanent    =  TRUE;
	description	 = 	"Erzähl mir mehr über Lee und seine Söldner...";
};
func int DIA_Lares_AboutSld_Condition ()
{	
	if (other.guild == GIL_NONE)
	&& (Lares_WayToOnar == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lares_AboutSld_Info ()
{
	AI_Output (other,self,  "DIA_ADDON_Lares_AboutSld_15_00"); //Erzähl mir mehr über Lee und seine Söldner...
	AI_Output (self, other, "DIA_ADDON_Lares_AboutSld_09_01"); //Was willst du wissen?
	
	Info_ClearChoices (DIA_Lares_AboutSld);
	Info_AddChoice (DIA_Lares_AboutSld, DIALOG_BACK, DIA_Lares_AboutSld_BACK);
	Info_AddChoice (DIA_Lares_AboutSld, "Warum bist DU nicht bei Lee und seinen Söldnern?", DIA_Lares_AboutSld_WhyNotYou);
	Info_AddChoice (DIA_Lares_AboutSld, "Erzähl mir mehr über die Söldner...", DIA_Lares_AboutSld_Sld);
};
func void DIA_Lares_AboutSld_BACK()
{
	Info_ClearChoices (DIA_Lares_AboutSld);
};
func void DIA_Lares_AboutSld_Sld()
{	
	AI_Output (other,self,  "DIA_Lares_AboutSld_15_00"); //Erzähl mir mehr über die Söldner.
	AI_Output (self, other, "DIA_Lares_AboutSld_09_01"); //Also wenn du noch so 'n harter Junge bist wie damals, solltest du mit ihnen keine Probleme haben.
	AI_Output (self, other, "DIA_Lares_AboutSld_09_02"); //Die meisten von ihnen sind Raufbolde und wer sich nicht durchsetzen kann, kommt auch nicht weit.
	AI_Output (self, other, "DIA_Lares_AboutSld_09_03"); //(lacht) Wenn du zart besaitet bist, hast du keine Chance, bei ihnen zu landen ...
};	
func void DIA_Lares_AboutSld_WhyNotYou()
{
	AI_Output (other, self, "DIA_Lares_WhyInCity_15_00"); //Warum bist DU nicht bei Lee und seinen Söldnern?
	AI_Output (self, other, "DIA_Lares_WhyInCity_09_01"); //Bin ich doch! Nur eben nicht auf dem Hof.
	AI_Output (self, other, "DIA_Lares_WhyInCity_09_02"); //Ich bin sozusagen unser Vorposten in der Stadt. Wir wollen ja schließlich nicht, dass das Schiff ohne uns abfährt.
	AI_Output (self, other, "DIA_Lares_WhyInCity_09_03"); //Warum bist DU in die Stadt gekommen?
	Lares_WorkForLee = TRUE;
	
	Info_AddChoice (DIA_Lares_AboutSld, "Ich muss unbedingt mit den Paladinen reden!", DIA_Lares_AboutSld_Paladine);
	Info_AddChoice (DIA_Lares_AboutSld, "Von welchem Schiff hast du geredet?", DIA_Lares_AboutSld_Schiff);
};
func void DIA_Lares_AboutSld_Schiff()
{	
	AI_Output (other,self , "DIA_Lares_Schiff_15_00"); //Von welchem Schiff hast du geredet?
	AI_Output (self, other, "DIA_Lares_Schiff_09_01"); //Es liegt am Hochseehafen, hinter den Felsen. Lee und ein paar von seinen Leuten wollen unbedingt hier weg.
	AI_Output (self, other, "DIA_Lares_Schiff_09_02"); //Aber das kann noch dauern ...
	AI_Output (other,self , "DIA_Lares_Schiff_15_03"); //Warum?
	AI_Output (self, other, "DIA_Lares_Schiff_09_04"); //Das fragst du am besten Lee, wenn du ihn triffst ... Er hat Pläne...

	Info_AddChoice (DIA_Lares_AboutSld, "Wie komme ich zum Hof des Großbauern?", DIA_Lares_AboutSld_WayToOnar); 
};
func void DIA_Lares_AboutSld_WayToOnar()
{
	AI_Output (other,self, "DIA_Lares_WegZumHof_15_00"); //Wie komme ich zum Hof des Großbauern?
	AI_Output (self, other, "DIA_Addon_Lares_WegZumHof_09_00"); //Es ist ganz einfach. Du gehst aus dem Osttor der Hafenstadt und dann immer auf dem Weg in Richtung Osten.
	AI_Output (self, other, "DIA_Lares_WegZumHof_09_01"); //Ich kann dich hinbringen, wenn du willst. Hab sowieso schon zu lange hier rumgehangen.
	AI_Output (self, other, "DIA_Lares_WegZumHof_09_02"); //Hier im Hafen gibt es zwar für gewöhnlich keine Miliz, aber ich muss ja nicht riskieren, dass einer von ihnen Verdacht schöpft ...
	Lares_WayToOnar = TRUE;
};	

func void DIA_Lares_AboutSld_Paladine ()
{
	AI_Output (other, self, "DIA_Lares_Paladine_15_00"); //Ich muss unbedingt mit den Paladinen reden!
	AI_Output (self, other, "DIA_Lares_Paladine_09_01"); //Was willst du denn von DENEN?
	AI_Output (other, self, "DIA_Lares_Paladine_15_02"); //Sie haben ein mächtiges Amulett, das Auge Innos'. Ich muss es haben.
	AI_Output (self, other, "DIA_Lares_Paladine_09_03"); //Und du denkst, sie werden es dir geben? Du kommst ja nicht mal ins obere Viertel.
	
	AI_Output (other, self, "DIA_Lares_Paladine_15_04"); //Ich werde schon einen Weg finden.
	AI_Output (self, other, "DIA_Lares_Paladine_09_05"); //Klar, wenn du dich bei den Bürgern einschmeicheln oder Laufbursche für die Miliz spielen willst ...
	
	AI_Output (other, self, "DIA_Lares_Alternative_15_00"); //Hab' ich eine Alternative?
	AI_Output (self, other, "DIA_Lares_Alternative_09_01"); //Wenn ich du wäre, würde ich zu Onars Hof gehen und mit Lee reden.
	AI_Output (self, other, "DIA_Lares_Alternative_09_02"); //Ich bin mir sicher, wir finden einem Weg, dich ins obere Viertel zu bringen.

	AI_Output (other, self, "DIA_Lares_WhyPalHere_15_00"); //Weißt du, warum die Paladine hier sind?
	AI_Output (self, other, "DIA_Lares_WhyPalHere_09_01"); //Das weiß keiner so genau ... Viele denken, es wäre wegen der Orks, aber ich denke, es gibt einen anderen Grund.
	AI_Output (self, other, "DIA_Lares_WhyPalHere_09_02"); //Hat wahrscheinlich was mit der alten Strafkolonie zu tun.
};

// ************************************************************
// 			  			GuildOfThieves
// ************************************************************
// ------------------------------------------------------------
// About Thieves
// ------------------------------------------------------------
instance DIA_Lares_GuildOfThieves (C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	14;
	condition	 = 	DIA_Lares_GuildOfThieves_Condition;
	information	 = 	DIA_Lares_GuildOfThieves_Info;
	permanent    =  FALSE;
	description	 = 	"Weißt du etwas über eine Diebesgilde in der Stadt?";
};
func int DIA_Lares_GuildOfThieves_Condition ()
{	
	if (MIS_Andre_GuildOfThieves == LOG_RUNNING)
	{
		return TRUE;
	};
};
func void DIA_Lares_GuildOfThieves_Info ()
{
	AI_Output (other, self, "DIA_Lares_GuildOfThieves_15_00"); //Weißt du etwas über eine Diebesgilde in der Stadt?
	AI_Output (self, other, "DIA_Lares_GuildOfThieves_09_01"); //Du kannst Fragen stellen ...
	AI_Output (self, other, "DIA_Lares_GuildOfThieves_09_02"); //Natürlich gibt es eine Diebesgilde hier. Wie in jeder größeren Stadt.
	AI_Output (self, other, "DIA_Lares_GuildOfThieves_09_03"); //Und jeder kleine Taschendieb oder Hehler hängt wahrscheinlich irgendwie mit drin.
};	
// ------------------------------------------------------------
// Wo finden?
// ------------------------------------------------------------
instance DIA_Lares_WhereGuildOfThieves (C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	15;
	condition	 = 	DIA_Lares_WhereGuildOfThieves_Condition;
	information	 = 	DIA_Lares_WhereGuildOfThieves_Info;
	permanent    =  FALSE;
	description	 = 	"Weißt du, wo ich die Diebesgilde finden kann?";
};
func int DIA_Lares_WhereGuildOfThieves_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Lares_GuildOfThieves))
	&& (DG_gefunden == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lares_WhereGuildOfThieves_Info ()
{
	AI_Output (other, self, "DIA_Lares_WhereGuildOfThieves_15_00"); //Weißt du, wo ich die Diebesgilde finden kann?
	AI_Output (self, other, "DIA_Lares_WhereGuildOfThieves_09_01"); //(lacht) Nichts gegen dich, aber wenn ich es wüsste, würde ich es dir nicht sagen.
	AI_Output (self, other, "DIA_Lares_WhereGuildOfThieves_09_02"); //Diese Leute reagieren für gewöhnlich SEHR empfindlich auf so was.
	AI_Output (self, other, "DIA_Lares_WhereGuildOfThieves_09_03"); //Wenn du dich mit ihnen einlassen willst, wäre ich sehr vorsichtig.
};
// ------------------------------------------------------------
// Meersalz Schlssel
// ------------------------------------------------------------
instance DIA_Lares_GotKey (C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	16;
	condition	 = 	DIA_Lares_GotKey_Condition;
	information	 = 	DIA_Lares_GotKey_Info;
	permanent    =  FALSE;
	description	 = 	"Ich habe hier diesen vom Meersalz zerfressenen Schlüssel ...";
};
func int DIA_Lares_GotKey_Condition ()
{	
	if (Npc_KnowsInfo (other, DIA_Lares_WhereGuildOfThieves))
	&& (Npc_HasItems (other, ItKe_ThiefGuildKey_MIS))
	&& (DG_gefunden == FALSE) 
	{
		return TRUE;
	};
};
func void DIA_Lares_GotKey_Info ()
{
	AI_Output (other, self, "DIA_Lares_GotKey_15_00"); //Ich habe hier diesen vom Meersalz zerfressenen Schlüssel ...
	AI_Output (self, other, "DIA_Lares_GotKey_09_01"); //Und?
	AI_Output (other, self, "DIA_Lares_GotKey_15_02"); //Ich denke, er wird mich zum Versteck der Diebesgilde führen ...
	AI_Output (self, other, "DIA_Lares_GotKey_09_03"); //Tja, es könnte der Schlüssel zur Kanalisation sein.

	AI_Output (other, self, "DIA_Lares_Kanalisation_15_00"); //Wo finde ich die Kanalisation?
	AI_Output (self, other, "DIA_Lares_Kanalisation_09_01"); //Was weiß ich ... sie endet für gewöhnlich im Meer.
};

// ************************************************************
// 		  			Important fr andere Gilden
// ************************************************************
instance DIA_Lares_OtherGuild (C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	1;
	condition	 = 	DIA_Lares_OtherGuild_Condition;
	information	 = 	DIA_Lares_OtherGuild_Info;
	permanent    =  FALSE;
	important 	 = 	TRUE;
};
func int DIA_Lares_OtherGuild_Condition ()
{	
	if (Npc_IsInState (self, ZS_Talk))
	&& (other.guild != GIL_NONE)//ADDON
	{
		return TRUE;
	};
};
func void DIA_Lares_OtherGuild_Info ()
{
	if (other.guild == GIL_MIL)
	|| (other.guild == GIL_PAL)
	{
		if (other.guild == GIL_MIL)
		{
			AI_Output (self, other, "DIA_Lares_OtherGuild_09_00"); //Du bist jetzt bei der Miliz!
			AI_Output (self, other, "DIA_Lares_OtherGuild_09_01"); //(lacht) Ich lach' mich tot - ein ehemaliger Sträfling bei der Miliz ...
		}
		else //GIL_PAL
		{
			AI_Output (self, other, "DIA_Lares_OtherGuild_09_02"); //Du bist jetzt also ein Paladin des Königs!
		};
	
		AI_Output (self, other, "DIA_Lares_OtherGuild_09_03"); //(verschmitzt) So was kannst auch nur du bringen ...
	
		if (Lares_WorkForLee == TRUE)
		{
			AI_Output (self, other, "DIA_Lares_OtherGuild_09_04"); //(besorgt) Du wirst doch nicht verpfeifen, dass ich für Lee arbeite, oder?
			AI_Output (other,self , "DIA_Lares_OtherGuild_15_05"); //Du kennst mich doch ...
		};
	};
	
	if (other.guild == GIL_KDF) 
	|| (other.guild == GIL_NOV)
	{
		AI_Output (self, other, "DIA_Lares_OtherGuild_09_06"); //Ich fasse es nicht. Du bist ins Kloster gegangen. Wie ist es da?
		AI_Output (other,self , "DIA_Lares_OtherGuild_15_07"); //Anders.
		AI_Output (self, other, "DIA_Lares_OtherGuild_09_08"); //Kann ich mir denken.
	};
		
	if (other.guild == GIL_SLD) 
	|| (other.guild == GIL_DJG)
	{
		AI_Output (self, other, "DIA_Lares_OtherGuild_09_09"); //I heard you've been accepted.
		//AI_Output (self, other, "DIA_Addon_Lares_OtherGuild_09_00"); //I heard that you have been accepted to join Lee.
		AI_Output (self, other, "DIA_Lares_OtherGuild_09_10"); //Gratuliere.
	};
};


// ------------------------------------------------------------
// Lass uns gehen...
// ------------------------------------------------------------
instance DIA_Lares_GoNow (C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	10;
	condition	 = 	DIA_Lares_GoNow_Condition;
	information	 = 	DIA_Lares_GoNow_Info;
	permanent    =  TRUE;
	description	 = 	"Okay, lass uns gehen.";
};
func int DIA_Lares_GoNow_Condition ()
{	
	if (Lares_WayToOnar == TRUE)
	&& ((Kapitel < 3) && (hero.guild != GIL_SLD))
	&& (Npc_GetDistToWP(self,"NW_CITY_HABOUR_02_B")<500)
			{
				return TRUE;
			};
};
func void DIA_Lares_GoNow_Info ()
{
	AI_Output (other, self, "DIA_Lares_GoNow_15_00"); //Okay, lass uns gehen.
	AI_Output (self, other, "DIA_Addon_Lares_GoNow_09_04"); //Wohin?
	AI_Output (other, self, "DIA_Addon_Lares_GoNow_Onar_15_00"); //Zu Onars Hof.
	
	LaresGuide_ZuOnar = TRUE;
	Npc_ExchangeRoutine (self, "GUIDE");

 	AI_Output (self, other, "DIA_Lares_GoNow_09_01"); //Dann wollen wir mal ... Folge mir.
	AI_StopProcessInfos (self);
	
	Lares_Guide = Wld_GetDay();
	self.aivar[AIV_PARTYMEMBER] = TRUE;
	
	if (Npc_KnowsInfo (other, DIA_Moe_Hallo) == FALSE)
	{
		Npc_SetRefuseTalk (Moe,30);
	};
};

///////////////////////////////////////////////////////////////////////
//	Info OnarFarmGuide Stop
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Lares_OnarFarmGuide		(C_INFO)
{
	npc		 = 	SLD_449_Lares;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Lares_OnarFarmGuide_Condition;
	information	 = 	DIA_Addon_Lares_OnarFarmGuide_Info;
	important	 = 	TRUE;
};

func int DIA_Addon_Lares_OnarFarmGuide_Condition ()
{
	if (LaresGuide_ZuOnar == TRUE) 
	&& (Npc_GetDistToWP(self,"NW_CITY_TO_FOREST_11")<500)
		{
			return TRUE;
		};
};

func void DIA_Addon_Lares_OnarFarmGuide_Info ()
{	
	AI_UnequipArmor	(self);
	AI_EquipArmor 	(self, ITAR_REVIVED_ORG_H);

	AI_Output	(self, other, "DIA_Addon_Lares_ArrivedPortalInterWeiter_09_00"); //Was ist los? Geht's noch?
	
	AI_Output	(other, self, "DIA_Addon_Lares_PortalInterWEITER_15_01"); //(genervt) Ja, ja.
};

// ************************************************************
// 			  					Angekommen 
// ************************************************************
instance DIA_Lares_GUIDE		(C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	1;
	condition	 = 	DIA_Lares_GUIDE_Condition;
	information	 = 	DIA_Lares_GUIDE_Info;
	permanent    =  FALSE;
	important	 = 	TRUE;
};
func int DIA_Lares_GUIDE_Condition ()
{	
	if (LaresGuide_ZuOnar == TRUE)
	&& (Npc_GetDistToWP(self,"NW_BIGFARM_LAKE_03")<500)
	{
		return TRUE;
	};
};
func void DIA_Lares_GUIDE_Info ()
{
	if Lares_Guide > (Wld_GetDay()-2)
	{
		AI_Output (self, other, "DIA_Lares_GUIDE_09_00"); //So, wir sind da.
	}
	else
	{
		AI_Output (self, other, "DIA_Lares_GUIDE_09_01"); //Kommst du auch noch? Ich dachte schon, du hättest dich von den Wölfen fressen lassen.
	};
	AI_Output (self, other, "DIA_Lares_GUIDE_09_02"); //So, den Rest des Weges wirst du alleine zurücklegen. Ich muss zurück in die Stadt, hab noch ein paar Sachen zu erledigen ...
	AI_Output (self, other, "DIA_Lares_GUIDE_09_03"); //Folge einfach dem Weg hier, und denk daran - setz dich durch und lass dir nichts gefallen, dann läuft schon alles glatt.
	
	AI_Output (self, other, "DIA_Addon_Lares_HaltsMaul_09_01"); //Wir sehen uns später am Hafen.

	AI_StopProcessInfos (self);
	
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	AI_UnequipArmor	(self);
	AI_EquipArmor 	(self, ITAR_Vlk_L);
	
	Npc_ExchangeRoutine (self,"Start");
	LaresGuide_ZuOnar = FALSE; //Joly: schluss mit Onar guide
};

// ************************************************************
// 			  				  LEHRER
// ************************************************************
// ------------------------------------------------------------
// Wanna Learn
// ------------------------------------------------------------
instance DIA_Lares_DEX		(C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	20;
	condition	 = 	DIA_Lares_DEX_Condition;
	information	 = 	DIA_Lares_DEX_Info;
	permanent 	 =  FALSE;
	description	 = 	"Kannst du mir was beibringen?";
};
func int DIA_Lares_DEX_Condition ()
{	
	return TRUE;
};
func void DIA_Lares_DEX_Info ()
{
	AI_Output (other, self, "DIA_Lares_DEX_15_00"); //Kannst du mir was beibringen?
	AI_Output (self, other, "DIA_Addon_Lares_DEX_Add_09_01"); //Klar. Wenn du willst, helfe ich dir, geschickter und stärker zu werden.

	Lares_TeachDEX = TRUE;
	
	Log_CreateTopic (Topic_CityTeacher,LOG_NOTE);
	B_LogEntry (Topic_CityTeacher,"Lares kann mir dabei helfen, geschickter und stärker zu werden.");
};
// ------------------------------------------------------------
// 			  				   TEACH 
// ------------------------------------------------------------
var int Lares_MerkeDEX;
var int Lares_MerkeSTR;
//-----------------------------------
instance DIA_Lares_TEACH		(C_INFO)
{
	npc		  	 = 	SLD_449_Lares;
	nr			 = 	20;
	condition	 = 	DIA_Lares_TEACH_Condition;
	information	 = 	DIA_Lares_TEACH_Info;
	permanent	 = 	TRUE;
	description	 = 	"Bring mir was bei.";
};
func int DIA_Lares_TEACH_Condition ()
{	
	if (Lares_TeachDEX == TRUE)
	{
		return TRUE;
	};
};
func void DIA_Lares_TEACH_Info ()
{
	AI_Output (other,self ,"DIA_Addon_Lares_Teach_15_00"); //Bring mir was bei.
	
	Lares_MerkeDEX = other.attribute[ATR_DEXTERITY];
	Lares_MerkeSTR = other.attribute[ATR_STRENGTH];
	
	Info_ClearChoices   (DIA_Lares_TEACH);
	Info_AddChoice 		(DIA_Lares_TEACH, DIALOG_BACK, DIA_Lares_TEACH_BACK);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX1	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)),DIA_Lares_TEACH_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX5	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)	,DIA_Lares_TEACH_5);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR1	, B_GetLearnCostAttribute(other, ATR_STRENGTH)),DIA_Lares_TEACHSTR_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR5	, B_GetLearnCostAttribute(other, ATR_STRENGTH)*5)	,DIA_Lares_TEACHSTR_5);
};
func void DIA_Lares_TEACH_BACK()
{
	if (other.attribute[ATR_DEXTERITY] > Lares_MerkeDEX)
	{
		AI_Output (self, other, "DIA_Lares_TEACH_BACK_09_00"); //Du hast schon etwas an Geschicklichkeit gewonnen.
	};
	if (other.attribute[ATR_STRENGTH] > Lares_MerkeSTR)
	{
		AI_Output (self, other, "DIA_Addon_Lares_TEACH_BACK_Add_09_00"); //(abschätzend) Gut. Deine Stärke hat zugenommen.
	};
	
	Info_ClearChoices (DIA_Lares_TEACH);
};
func void DIA_Lares_TEACH_1()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 1, T_MED);
	
	Info_ClearChoices   (DIA_Lares_TEACH);
	Info_AddChoice 		(DIA_Lares_TEACH, DIALOG_BACK, DIA_Lares_TEACH_BACK);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX1	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)),DIA_Lares_TEACH_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX5	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)	,DIA_Lares_TEACH_5);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR1	, B_GetLearnCostAttribute(other, ATR_STRENGTH)),DIA_Lares_TEACHSTR_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR5	, B_GetLearnCostAttribute(other, ATR_STRENGTH)*5)	,DIA_Lares_TEACHSTR_5);
};
func void DIA_Lares_TEACH_5()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 5, T_MED);
	
	Info_ClearChoices   (DIA_Lares_TEACH);
	Info_AddChoice 		(DIA_Lares_TEACH, DIALOG_BACK, DIA_Lares_TEACH_BACK);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX1	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)),DIA_Lares_TEACH_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX5	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)	,DIA_Lares_TEACH_5);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR1	, B_GetLearnCostAttribute(other, ATR_STRENGTH)),DIA_Lares_TEACHSTR_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR5	, B_GetLearnCostAttribute(other, ATR_STRENGTH)*5)	,DIA_Lares_TEACHSTR_5);
};
func void DIA_Lares_TEACHSTR_1()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 1, T_LOW);
	
	Info_ClearChoices   (DIA_Lares_TEACH);
	Info_AddChoice 		(DIA_Lares_TEACH, DIALOG_BACK, DIA_Lares_TEACH_BACK);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX1	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)),DIA_Lares_TEACH_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX5	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)	,DIA_Lares_TEACH_5);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR1	, B_GetLearnCostAttribute(other, ATR_STRENGTH)),DIA_Lares_TEACHSTR_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR5	, B_GetLearnCostAttribute(other, ATR_STRENGTH)*5)	,DIA_Lares_TEACHSTR_5);
};
func void DIA_Lares_TEACHSTR_5()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 5, T_LOW);
	
	Info_ClearChoices   (DIA_Lares_TEACH);
	Info_AddChoice 		(DIA_Lares_TEACH, DIALOG_BACK, DIA_Lares_TEACH_BACK);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX1	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)),DIA_Lares_TEACH_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnDEX5	, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)	,DIA_Lares_TEACH_5);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR1	, B_GetLearnCostAttribute(other, ATR_STRENGTH)),DIA_Lares_TEACHSTR_1);
	Info_AddChoice		(DIA_Lares_TEACH, B_BuildLearnString(PRINT_LearnSTR5	, B_GetLearnCostAttribute(other, ATR_STRENGTH)*5)	,DIA_Lares_TEACHSTR_5);
};


//#################################
//##
//##	Kapitel 2
//##
//#################################

// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Lares_Kap2_EXIT(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 999;
	condition	= DIA_Lares_Kap2_EXIT_Condition;
	information	= DIA_Lares_Kap2_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Lares_Kap2_EXIT_Condition()
{
	if (Kapitel == 2)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_Kap2_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

//#################################
//##
//##	Kapitel 3
//##
//#################################

// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Lares_Kap3_EXIT(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 999;
	condition	= DIA_Lares_Kap3_EXIT_Condition;
	information	= DIA_Lares_Kap3_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Lares_Kap3_EXIT_Condition()
{
	if (Kapitel == 3)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_Kap3_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 		Gibt's was Neues?			 
// ************************************************************
INSTANCE DIA_Lares_AnyNews(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 5;
	condition	= DIA_Lares_AnyNews_Condition;
	information	= DIA_Lares_AnyNews_Info;
	permanent	= TRUE;
	description = "Irgendwas Neues passiert?";
};                       
FUNC INT DIA_Lares_AnyNews_Condition()
{
	if (Kapitel == 3)
	&& (MIS_SCKnowsInnosEyeIsBroken == TRUE)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_AnyNews_Info()
{	
	AI_Output (other,self ,"DIA_Lares_AnyNews_15_00"); //Irgendwas Neues passiert?
	if (MIS_RescueBennet == LOG_SUCCESS)
	{
		AI_Output (self ,other,"DIA_Lares_AnyNews_09_01"); //Für die besten Nachrichten bist du ja selbst verantwortlich. Bennet haben sie wieder laufen lassen, er ist schon wieder auf dem Hof.
		AI_Output (self ,other,"DIA_Lares_AnyNews_09_02"); //Geh mal hin, ich denke, er will sich auch noch selbst bei dir bedanken.
	}
	else
	{
		AI_Output (self ,other,"DIA_Lares_AnyNews_09_03"); //Das kann mal wohl sagen. Die Paladine haben Bennet, unseren Schmied, verhaftet.
		
		if (MIS_RescueBennet == LOG_RUNNING)
		{
			AI_Output (other,self ,"DIA_Lares_AnyNews_15_04"); //Ich habe bereits davon gehört, schlimme Sache.
			AI_Output (self ,other,"DIA_Lares_AnyNews_09_05"); //Das kann man wohl sagen.
		}
		else
		{
			AI_Output (other,self ,"DIA_Lares_AnyNews_15_06"); //Wie ist das passiert?
			AI_Output (self ,other,"DIA_Lares_AnyNews_09_07"); //Bennet war in der Stadt, um Vorräte einzukaufen. Na ja, er ist nicht zurückgekommen.
			AI_Output (self ,other,"DIA_Lares_AnyNews_09_08"); //Wenn du Genaueres erfahren willst, frag am besten Hodges, er war mit Bennet in der Stadt.
			
			MIS_RescueBennet = LOG_RUNNING;
		};
	};
};

// ************************************************************
// 		Hast du was von Bennet gehrt?			 
// ************************************************************
INSTANCE DIA_Lares_NewsAboutBennet(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 6;
	condition	= DIA_Lares_NewsAboutBennet_Condition;
	information	= DIA_Lares_NewsAboutBennet_Info;
	permanent	= FALSE;
	description = "Hast du was von Bennet gehört?";
};                       
FUNC INT DIA_Lares_NewsAboutBennet_Condition()
{
	if (MIS_RescueBennet == LOG_RUNNING)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_NewsAboutBennet_Info()
{	
	AI_Output (other,self ,"DIA_Lares_NewsAboutBennet_15_00"); //Hast du was von Bennet gehört?
	AI_Output (self ,other,"DIA_Lares_NewsAboutBennet_09_01"); //Sie haben ihn anscheinend in die Kaserne gebracht und dort in den Kerker geschmissen.
	AI_Output (other,self ,"DIA_Lares_NewsAboutBennet_15_02"); //Wie können wir ihn da rausholen?
	AI_Output (self ,other,"DIA_Lares_NewsAboutBennet_09_03"); //Ich habe noch keine Idee, ich komme nicht bis zu seiner Zelle, um mit ihm zu reden.
	AI_Output (self ,other,"DIA_Lares_NewsAboutBennet_09_04"); //Ich kann eigentlich nur die Ohren offen halten, aber hier erfährt man nichts.
};

//#################################
//##
//##	Kapitel 4
//##
//#################################

// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Lares_Kap4_EXIT(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 999;
	condition	= DIA_Lares_Kap4_EXIT_Condition;
	information	= DIA_Lares_Kap4_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Lares_Kap4_EXIT_Condition()
{
	if (Kapitel == 4)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_Kap4_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

//****************************************
//	Wieso bist du nicht auf Drachenjagd?
//****************************************

INSTANCE DIA_Lares_Kap4_PERM(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 6;
	condition	= DIA_Lares_Kap4_PERM_Condition;
	information	= DIA_Lares_Kap4_PERM_Info;
	permanent	= TRUE;
	description = "Wieso bist du nicht auf der Drachenjagd?";
};                       
FUNC INT DIA_Lares_Kap4_PERM_Condition()
{
	if (Kapitel == 4)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_Kap4_PERM_Info()
{	
	AI_Output (other,self ,"DIA_Lares_Kap4_PERM_15_00"); //Why aren't you out hunting dragons?
	AI_Output (self ,other,"DIA_Lares_Kap4_PERM_09_01"); //That's not my kind of thing, I'll leave that to the others.
	AI_Output (self ,other,"DIA_Lares_Kap4_PERM_09_02"); //Nah, nah. Fresh sea air - that's what I need now.
};

//#################################
//##
//##	Kapitel 5
//##
//#################################

// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Lares_Kap5_EXIT(C_INFO)
{
	npc			= SLD_449_Lares;
	nr			= 999;
	condition	= DIA_Lares_Kap5_EXIT_Condition;
	information	= DIA_Lares_Kap5_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Lares_Kap5_EXIT_Condition()
{
	if (Kapitel == 5)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Lares_Kap5_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

//****************************************************************
//	Lares anheuern
//****************************************************************

///////////////////////////////////////////////////////////////////////
//	Hast du Lust diese Insel zu verlassen?
///////////////////////////////////////////////////////////////////////
instance DIA_Lares_KnowWhereEnemy		(C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	5;
	condition	 = 	DIA_Lares_KnowWhereEnemy_Condition;
	information	 = 	DIA_Lares_KnowWhereEnemy_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"Hast du Lust, diese Insel zu verlassen?";
};
func int DIA_Lares_KnowWhereEnemy_Condition ()
{	
	if (MIS_SCKnowsWayToIrdorath == TRUE)
	&& (Lares_IsOnBoard == FALSE) 
	{
		return TRUE;
	};
};
func void DIA_Lares_KnowWhereEnemy_Info ()
{
	AI_Output			(other, self, "DIA_Lares_KnowWhereEnemy_15_00"); //Would you fancy leaving this island?
	AI_Output			(self, other, "DIA_Lares_KnowWhereEnemy_09_01"); //More than anything. What have you got in mind?
	AI_Output			(other, self, "DIA_Lares_KnowWhereEnemy_15_02"); //I found out where the leader of the dragons is hiding. He's on an island, not far from here.
	AI_Output			(other, self, "DIA_Lares_KnowWhereEnemy_15_03"); //I intend to get rid of him for good.
	AI_Output			(self, other, "DIA_Lares_KnowWhereEnemy_09_04"); //Sounds like a blast. If you can use me, I'm in.
	AI_Output			(self, other, "DIA_Lares_KnowWhereEnemy_09_05"); //Couldn't you use a teacher for dexterity or combat with one-handed weapons on your journey?
	
	if (crewmember_count >= Max_Crew)
	{
		AI_Output			(other,self , "DIA_Lares_KnowWhereEnemy_15_06"); //The ship's already full, but I'll get back to you if there is a change.
	}
	else 
	{
		Info_ClearChoices (DIA_Lares_KnowWhereEnemy);
		Info_AddChoice (DIA_Lares_KnowWhereEnemy,"Ich kann dich nicht gebrauchen.",DIA_Lares_KnowWhereEnemy_No);
		Info_AddChoice (DIA_Lares_KnowWhereEnemy,"Ich wusste, dass ich mich auf dich verlassen kann.",DIA_Lares_KnowWhereEnemy_Yes);
	};
};

FUNC VOID DIA_Lares_KnowWhereEnemy_Yes ()
{
	AI_Output (other,self ,"DIA_Lares_KnowWhereEnemy_Yes_15_00"); //I knew I could rely on you.
	AI_Output (other,self ,"DIA_Lares_KnowWhereEnemy_Yes_15_01"); //We're all going to meet at the ship.
	AI_Output (self ,other,"DIA_Lares_KnowWhereEnemy_Yes_09_02"); //A man of action, that's what I like. See you later.
	
	Lares_IsOnBoard	 = LOG_SUCCESS;
	crewmember_Count = (Crewmember_Count +1);
	
	if (MIS_ReadyforChapter6 == TRUE)
		{
			Npc_ExchangeRoutine (self,"SHIP"); 
		}
		else
		{
			Npc_ExchangeRoutine (self,"WAITFORSHIP"); 
		};

	Info_ClearChoices (DIA_Lares_KnowWhereEnemy);
};

FUNC VOID DIA_Lares_KnowWhereEnemy_No ()
{
	AI_Output (other,self ,"DIA_Lares_KnowWhereEnemy_No_15_00"); //I appreciate your offer, but I have no use for you.
	AI_Output (self ,other,"DIA_Lares_KnowWhereEnemy_No_09_01"); //You must know what you want. If you want to talk about it later, you know where to find me.

	if (hero.guild == GIL_DJG)
	{
		Lares_IsOnBoard	 = LOG_OBSOLETE;
	}
	else
	{
		Lares_IsOnBoard	 = LOG_FAILED;
	};	
	Info_ClearChoices (DIA_Lares_KnowWhereEnemy);
};


///////////////////////////////////////////////////////////////////////
//	I kann dich doch nicht gebrauchen!
///////////////////////////////////////////////////////////////////////
instance DIA_Lares_LeaveMyShip		(C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	5;
	condition	 = 	DIA_Lares_LeaveMyShip_Condition;
	information	 = 	DIA_Lares_LeaveMyShip_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"Es ist besser, wenn du nicht mitkommst.";
};
func int DIA_Lares_LeaveMyShip_Condition ()
{	
	if (Lares_IsOnBOard == LOG_SUCCESS)
	&& (MIS_ReadyforChapter6 == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Lares_LeaveMyShip_Info ()
{
	AI_Output			(other, self, "DIA_Lares_LeaveMyShip_15_00"); //It's better if you don't come along.
	AI_Output			(self, other, "DIA_Lares_LeaveMyShip_09_01"); //As you like, but in the future, think about what you promise to whom.
	
	if (hero.guild == GIL_DJG)
	{
		Lares_IsOnBoard	 = LOG_OBSOLETE;
	}
	else
	{
		Lares_IsOnBoard	 = LOG_FAILED;
	};				//Log_Obsolete ->der Sc kann ihn wiederholen, Log_Failed ->hat die Schnauze voll, kommt nicht mehr mit! 
	crewmember_Count = (Crewmember_Count -1);
	
	Npc_ExchangeRoutine (self,"ShipOff"); 
};

///////////////////////////////////////////////////////////////////////
//	Ich habs mir berlegt!
///////////////////////////////////////////////////////////////////////
instance DIA_Lares_StillNeedYou		(C_INFO)
{
	npc			 = 	SLD_449_Lares;
	nr			 = 	5;
	condition	 = 	DIA_Lares_StillNeedYou_Condition;
	information	 = 	DIA_Lares_StillNeedYou_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"Hast du noch Interesse an der Überfahrt?";
};
func int DIA_Lares_StillNeedYou_Condition ()
{	
	if ((Lares_IsOnBOard == LOG_OBSOLETE)		
	|| (Lares_IsOnBOard == LOG_FAILED))
	&& (crewmember_count < Max_Crew)
	{
		return TRUE;
	};
};
func void DIA_Lares_StillNeedYou_Info ()
{
	AI_Output			(other, self, "DIA_Lares_StillNeedYou_15_00"); //Are you still interested in the voyage?
	
	if (Lares_IsOnBoard == LOG_OBSOLETE)
	{
		AI_Output	(self, other, "DIA_Lares_StillNeedYou_09_01"); //Normally, I don't let people treat me like that, but since you're one of us, I'll let you get away with it this time.
		AI_Output	(self, other, "DIA_Lares_StillNeedYou_09_02"); //We'll meet on the ship.
		
		Lares_IsOnBoard	 = LOG_SUCCESS;
		crewmember_Count = (Crewmember_Count +1);
	
		if (MIS_ReadyforChapter6 == TRUE)
			{
				Npc_ExchangeRoutine (self,"SHIP"); 
			}
			else
			{
				Npc_ExchangeRoutine (self,"WAITFORSHIP"); 
			};
	}
	else
	{
		AI_Output	(self, other, "DIA_Lares_StillNeedYou_09_03"); //Don't take it personally, but I think you were right.
		AI_Output	(self, other, "DIA_Lares_StillNeedYou_09_04"); //It's better if I stay here.
		
		AI_StopProcessInfos (self);
	};	
};


























