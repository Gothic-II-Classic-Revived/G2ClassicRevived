///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_AngarDJG_EXIT   (C_INFO)
{
	npc         = NONE_705_ANGAR;
	nr          = 999;
	condition   = DIA_AngarDJG_EXIT_Condition;
	information = DIA_AngarDJG_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_AngarDJG_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_AngarDJG_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_AngarDJG_HALLO		(C_INFO)
{
	npc		 = 	NONE_705_ANGAR;
	nr		 = 	5;
	condition	 = 	DIA_AngarDJG_HALLO_Condition;
	information	 = 	DIA_AngarDJG_HALLO_Info;

	description	 = 	"Kenne ich dich nicht?";
};

func int DIA_AngarDJG_HALLO_Condition ()
{
	return TRUE;
};

func void DIA_AngarDJG_HALLO_Info ()
{
	AI_Output			(other, self, "DIA_AngarDJG_HALLO_15_00"); //Kenne ich dich nicht? Du bist Cor Angar, du warst Templer im Sumpflager.
	AI_Output			(self, other, "DIA_AngarDJG_HALLO_04_01"); //(resigniert) Nenn mich Angar. Meinen Titel habe ich abgelegt. Die Bruderschaft des Schläfers hat sich aufgelöst.
	AI_Output			(self, other, "DIA_AngarDJG_HALLO_04_02"); //Seltsam, aber du kommst mir auch irgendwie bekannt vor. Ich kann mich aber kaum an dich erinnern.
	AI_Output			(other, self, "DIA_AngarDJG_HALLO_15_03"); //Was ist los mit dir?
	AI_Output			(self, other, "DIA_AngarDJG_HALLO_04_04"); //(winkt ab) Ach. Ich habe schon lange nicht mehr richtig schlafen können. Ständig diese Alpträume.
	B_LogEntry (TOPIC_Dragonhunter,"Ich habe Angar im Minental gefunden.");
};


///////////////////////////////////////////////////////////////////////
//	B_SCTellsAngarAboutMadPsi
///////////////////////////////////////////////////////////////////////
func void B_SCTellsAngarAboutMadPsi ()
{	
	if (Angar_KnowsMadPsi == FALSE)
	{
		AI_Output			(other, self, "DIA_Angar_B_SCTellsAngarAboutMadPsi_15_00"); //Die Bruderschaft des Schläfers ist dem Bösen verfallen.
		AI_Output			(other, self, "DIA_Angar_B_SCTellsAngarAboutMadPsi_15_01"); //Deine ehemaligen Freunde aus dem Sumpflager wandeln in schwarzen Kutten über das Land und sind ziemlich sauer auf alles, was sich bewegt.
		AI_Output			(self, other, "DIA_Angar_B_SCTellsAngarAboutMadPsi_04_02"); //Wovon redest du da?
	};
};

func void B_SCTellsAngarAboutMadPsi2 ()
{	
	if (Angar_KnowsMadPsi == FALSE)
	{
		AI_Output			(other, self, "DIA_Angar_B_SCTellsAngarAboutMadPsi2_15_00"); //Sie dienen jetzt dem Feind und sind nur noch seelenlose Krieger des Bösen.
		AI_Output			(self, other, "DIA_Angar_B_SCTellsAngarAboutMadPsi2_04_01"); //Bei allen Göttern. Hätte ich mich doch nicht so blenden lassen. Das wird mir niemals wieder passieren, das schwöre ich.
		B_GivePlayerXP (XP_Angar_KnowsMadPsi);
		Angar_KnowsMadPsi = TRUE;
	};
};


///////////////////////////////////////////////////////////////////////
//	Info Wiekommstduhierher
///////////////////////////////////////////////////////////////////////
instance DIA_Angar_WIEKOMMSTDUHIERHER		(C_INFO)
{
	npc		 = 	NONE_705_ANGAR;
	nr		 = 	6;
	condition	 = 	DIA_Angar_WIEKOMMSTDUHIERHER_Condition;
	information	 = 	DIA_Angar_WIEKOMMSTDUHIERHER_Info;

	description	 = 	"Wie kommst du hierher?";
};

func int DIA_Angar_WIEKOMMSTDUHIERHER_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_AngarDJG_HALLO))
		{
				return TRUE;
		};
};

func void DIA_Angar_WIEKOMMSTDUHIERHER_Info ()
{
	AI_Output			(other, self, "DIA_Angar_WIEKOMMSTDUHIERHER_15_00"); //Wie kommst du hierher?
	AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_04_01"); //Nach dem Fall der magischen Barriere habe ich mich in den Bergen versteckt. Wurde Zeit, dass ich etwas unternehme.
	AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_04_02"); //Ich bin tagelang umher geirrt, bis ich auf einmal in der Burg wach geworden bin. Frag mich nicht, was passiert ist. Ich weiß es nicht.
	AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_04_03"); //Zu allem Übel habe ich auch noch mein Amulett verloren, das ich schon seit Jahren besitze. Ich werde wahnsinnig, wenn ich es nicht wieder finde.

	Log_CreateTopic (TOPIC_AngarsAmulett, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_AngarsAmulett, LOG_RUNNING);
	B_LogEntry (TOPIC_AngarsAmulett,"Angar hat sein Amulett verloren und versucht es nun verzweifelt wieder zu finden."); 


	Info_AddChoice	(DIA_Angar_WIEKOMMSTDUHIERHER, DIALOG_BACK, DIA_Angar_WIEKOMMSTDUHIERHER_gehen );
	Info_AddChoice	(DIA_Angar_WIEKOMMSTDUHIERHER, "Wo genau hast dein Amulett verloren?", DIA_Angar_WIEKOMMSTDUHIERHER_amulett );

	if (SC_KnowsMadPsi == TRUE)
	{
	Info_AddChoice	(DIA_Angar_WIEKOMMSTDUHIERHER, "Die Bruderschaft des Schläfers ist dem Bösen verfallen.", DIA_Angar_WIEKOMMSTDUHIERHER_andere );
	}
	else
	{
	Info_AddChoice	(DIA_Angar_WIEKOMMSTDUHIERHER, "Was ist mit den anderen aus dem Sumpflager passiert?", DIA_Angar_WIEKOMMSTDUHIERHER_andere );
	};

	if (DJG_Angar_SentToStones == FALSE)
	{
	Info_AddChoice	(DIA_Angar_WIEKOMMSTDUHIERHER, "Was willst du nun tun?", DIA_Angar_WIEKOMMSTDUHIERHER_nun );
	};
};
func void DIA_Angar_WIEKOMMSTDUHIERHER_amulett ()
{
	AI_Output			(other, self, "DIA_Angar_WIEKOMMSTDUHIERHER_amulett_15_00"); //Wo genau hast dein Amulett verloren?

	if (DJG_Angar_SentToStones == FALSE)
	{
		AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_amulett_04_01"); //Irgendwo im Süden, kurz bevor ich hier in der Burg wach wurde.
		B_LogEntry (TOPIC_AngarsAmulett,"Das Amulett soll sich irgendwo im Süden befinden. Angar wird losziehen um es zu suchen."); 
	}
	else
	{
		AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_amulett_04_02"); //Es muss hier irgendwo sein.
		B_LogEntry (TOPIC_AngarsAmulett,"Das Amulett befindet sich in der Nähe der Bergfestung im Süden des Tals der Minen."); 
	};
	AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_amulett_04_03"); //Ich schätze, es ist mir gestohlen worden. Ich muss es unbedingt wieder haben.
};

func void DIA_Angar_WIEKOMMSTDUHIERHER_andere ()
{
	if (SC_KnowsMadPsi == TRUE)
	{
		B_SCTellsAngarAboutMadPsi ();
	}
	else
	{
		AI_Output			(other, self, "DIA_Angar_WIEKOMMSTDUHIERHER_andere_15_00"); //Was ist mit den anderen aus dem Sumpflager passiert?
	};
	
	AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_andere_04_01"); //Das Letzte, an das ich mich erinnere, ist, dass die Barriere von einem Nerven zerfetzenden Schrei begleitet in sich zusammen fiel.
	AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_andere_04_02"); //Von panischer Angst gepackt fielen wir zu Boden und krümmten uns vor Schmerzen. Diese Stimmen. Sie wurden immer lauter.
	AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_andere_04_03"); //Und dann, als es vorbei war, verfielen sie alle dem Wahnsinn und verschwanden laut schreiend in der grauen Nacht.
	AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_andere_04_04"); //Ich hab sie nie wieder gesehen.
	
	if (SC_KnowsMadPsi == TRUE)
	{
		B_SCTellsAngarAboutMadPsi2 ();
	};
};

func void DIA_Angar_WIEKOMMSTDUHIERHER_nun ()
{
	AI_Output			(other, self, "DIA_Angar_WIEKOMMSTDUHIERHER_nun_15_00"); //Was willst du nun tun?
	AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_nun_04_01"); //Ich werde mich erst einmal erholen, damit ich mich auf die Suche nach meinem verlorenen Amulett machen kann.
	AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_nun_04_02"); //Ich habe etwas von Drachen gehört.
	AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_nun_04_03"); //Es wird auch erzählt, dass viele Krieger ins Minental gekommen sind, um sie zu jagen.
	AI_Output			(self, other, "DIA_Angar_WIEKOMMSTDUHIERHER_nun_04_04"); //Ich denke darüber nach, mich ihnen anzuschließen.

	Angar_willDJGwerden = TRUE;

};

func void DIA_Angar_WIEKOMMSTDUHIERHER_gehen ()
{
	Info_ClearChoices	(DIA_Angar_WIEKOMMSTDUHIERHER);
};

///////////////////////////////////////////////////////////////////////
//	Info SCTellsAngarAboutMadPsi2
///////////////////////////////////////////////////////////////////////
instance DIA_Angar_SCTellsAngarAboutMadPsi2		(C_INFO)
{
	npc		 = 	NONE_705_ANGAR;
	nr		 = 	7;
	condition	 = 	DIA_Angar_SCTellsAngarAboutMadPsi2_Condition;
	information	 = 	DIA_Angar_SCTellsAngarAboutMadPsi2_Info;

	description	 = 	"Die Bruderschaft des Schläfers ist dem Bösen verfallen."; //Joly: falls erst nach DIA_Angar_WIEKOMMSTDUHIERHER  (SC_KnowsMadPsi == TRUE)
};

func int DIA_Angar_SCTellsAngarAboutMadPsi2_Condition ()
{
	if (SC_KnowsMadPsi == TRUE)
	&& (Angar_KnowsMadPsi == FALSE)
	&& (Npc_KnowsInfo(other, DIA_Angar_WIEKOMMSTDUHIERHER))
		{
				return TRUE;
		};
};

func void DIA_Angar_SCTellsAngarAboutMadPsi2_Info ()
{
	B_SCTellsAngarAboutMadPsi ();
	B_SCTellsAngarAboutMadPsi2 ();
};

///////////////////////////////////////////////////////////////////////
//	Info FoundAmulett
///////////////////////////////////////////////////////////////////////
instance DIA_Angar_FOUNDAMULETT		(C_INFO)
{
	npc		 = 	NONE_705_ANGAR;
	nr		 = 	7;
	condition	 = 	DIA_Angar_FOUNDAMULETT_Condition;
	information	 = 	DIA_Angar_FOUNDAMULETT_Info;

	description	 = 	"Ich habe dein Amulett gefunden.";
};

func int DIA_Angar_FOUNDAMULETT_Condition ()
{
	if 	(Npc_HasItems (other,ItAm_Mana_Angar_MIS))
		&& (Npc_KnowsInfo(other, DIA_Angar_WIEKOMMSTDUHIERHER))
		{
				return TRUE;
		};
};

func void B_AngarsAmulettAbgeben()
{
	AI_Output			(other, self, "DIA_Angar_FOUNDAMULETT_15_00"); //Ich habe dein Amulett gefunden.
	AI_Output			(self, other, "DIA_Angar_FOUNDAMULETT_04_01"); //Danke. Ich dachte schon, ich würde es nie wieder sehen.

	AI_Output			(other, self, "DIA_Angar_FOUNDAMULETT_besonders_15_00"); //Was macht es für dich so besonders?
	AI_Output			(self, other, "DIA_Angar_FOUNDAMULETT_besonders_04_01"); //Es war ein Geschenk.
	AI_Output			(other, self, "DIA_Angar_FOUNDAMULETT_besonders_15_02"); //Verstehe.

	B_GiveInvItems (other, self, ItAm_Mana_Angar_MIS,1);
	
	DJG_AngarGotAmulett = TRUE;
	B_GivePlayerXP (XP_AngarDJGUndeadMage); 
};

func void DIA_Angar_FOUNDAMULETT_Info ()
{
	B_AngarsAmulettAbgeben ();
	
	AI_Output			(other, self, "DIA_Angar_FOUNDAMULETT_nun_15_00"); //Was hast du jetzt vor?
	AI_Output			(self, other, "DIA_Angar_FOUNDAMULETT_nun_04_01"); //Nichts wie raus aus diesem verfluchten Tal.
	AI_Output			(self, other, "DIA_Angar_FOUNDAMULETT_nun_04_02"); //Vielleicht sehen wir uns noch mal wieder. Leb wohl.

	AI_StopProcessInfos (self);
	if 	((Npc_GetDistToWP(self,"OC_TO_MAGE")<1000) == FALSE) //Joly: Damit Angar nicht am OC Tor rumkronkelt, wenn er noch im OC ist.
	{ 
		Npc_ExchangeRoutine	(self,"LeavingOW");
	};
};

///////////////////////////////////////////////////////////////////////
//	Info DJG_Anwerben
///////////////////////////////////////////////////////////////////////
instance DIA_Angar_DJG_ANWERBEN		(C_INFO)
{
	npc		 = 	NONE_705_ANGAR;
	nr		 = 	8;
	condition	 = 	DIA_Angar_DJG_ANWERBEN_Condition;
	information	 = 	DIA_Angar_DJG_ANWERBEN_Info;

	description	 = 	"Vielleicht kann ich dir helfen, dein Amulett zu finden.";
};

func int DIA_Angar_DJG_ANWERBEN_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Angar_WIEKOMMSTDUHIERHER))
		&& (DJG_AngarGotAmulett == FALSE)
		{
				return TRUE;
		};
};

func void DIA_Angar_DJG_ANWERBEN_Info ()
{
	AI_Output			(other, self, "DIA_Angar_DJG_ANWERBEN_15_00"); //Vielleicht kann ich dir helfen, dein Amulett zu finden.
	AI_Output			(self, other, "DIA_Angar_DJG_ANWERBEN_04_01"); //Warum nicht. Hilfe kann nicht schaden.


	if (DJG_Angar_SentToStones == FALSE)
		{
		Info_AddChoice	(DIA_Angar_DJG_ANWERBEN, "Ich muss gehen.", DIA_Angar_DJG_ANWERBEN_gehen );
		Info_AddChoice	(DIA_Angar_DJG_ANWERBEN, "Wo willst du suchen?", DIA_Angar_DJG_ANWERBEN_wo );
		Info_AddChoice	(DIA_Angar_DJG_ANWERBEN, "Wann willst du gehen?", DIA_Angar_DJG_ANWERBEN_wann );
		};
	
	if (Angar_willDJGwerden == TRUE)
		{
		Info_AddChoice	(DIA_Angar_DJG_ANWERBEN, "Was ist mit den Drachenjägern?", DIA_Angar_DJG_ANWERBEN_DJG );
		};
};
func void DIA_Angar_DJG_ANWERBEN_DJG ()
{
	AI_Output			(other, self, "DIA_Angar_DJG_ANWERBEN_DJG_15_00"); //Was ist mit den Drachenjägern?
	AI_Output			(self, other, "DIA_Angar_DJG_ANWERBEN_DJG_04_01"); //Ich werde später mit ihnen sprechen. Vielleicht können sie noch einen starken Arm gebrauchen.

};

func void DIA_Angar_DJG_ANWERBEN_wann ()
{
	AI_Output			(other, self, "DIA_Angar_DJG_ANWERBEN_wann_15_00"); //Wann willst du gehen?
	AI_Output			(self, other, "DIA_Angar_DJG_ANWERBEN_wann_04_01"); //Sobald ich mich wieder besser fühle.
};

func void DIA_Angar_DJG_ANWERBEN_wo ()
{
	AI_Output			(other, self, "DIA_Angar_DJG_ANWERBEN_wo_15_00"); //Wo willst du suchen?
	AI_Output			(self, other, "DIA_Angar_DJG_ANWERBEN_wo_04_01"); //Ich werde in den Süden gehen. Dort, wo ich als letztes gewesen bin.
	//AI_Output			(self, other, "DIA_Angar_DJG_ANWERBEN_wo_04_02"); //There is a cave tomb there, surrounded by many boulders.
};
func void DIA_Angar_DJG_ANWERBEN_gehen ()
{
	AI_Output			(other, self, "DIA_Angar_DJG_ANWERBEN_gehen_15_00"); //Ich muss gehen.
	AI_Output			(self, other, "DIA_Angar_DJG_ANWERBEN_gehen_04_01"); //Pass auf deinen Rücken auf.
	
	AI_StopProcessInfos (self);
};




///////////////////////////////////////////////////////////////////////
//	Info Wasmachstdu
///////////////////////////////////////////////////////////////////////
instance DIA_AngarDJG_WASMACHSTDU		(C_INFO)
{
	npc		 = 	NONE_705_ANGAR;
	nr		 = 	9;
	condition	 = 	DIA_AngarDJG_WASMACHSTDU_Condition;
	information	 = 	DIA_AngarDJG_WASMACHSTDU_Info;

	description	 = 	"Stimmt irgendwas nicht?";
};

func int DIA_AngarDJG_WASMACHSTDU_Condition ()
{
	if 	(
		(Npc_GetDistToWP(self,"PATH_TO_PLATEAU03_002")<8000) 
		&&	(Npc_KnowsInfo(other, DIA_Angar_DJG_ANWERBEN)) 
		&& (DJG_AngarGotAmulett == FALSE)
		)
			{
				return TRUE;
			};
};

func void DIA_AngarDJG_WASMACHSTDU_Info ()
{
	AI_Output			(other, self, "DIA_AngarDJG_WASMACHSTDU_15_00"); //Stimmt irgendwas nicht?
	AI_Output			(self, other, "DIA_AngarDJG_WASMACHSTDU_04_01"); //Hörst du das? Ich hab noch nie in meinem Leben so ein fürchterliches Geräusch gehört!
	AI_Output			(other, self, "DIA_AngarDJG_WASMACHSTDU_15_02"); //Was meinst du? Ich höre nichts!
	AI_Output			(self, other, "DIA_AngarDJG_WASMACHSTDU_04_03"); //Die ganze Umgebung hier stinkt nach Tod und Verderben. Die verfaulten Kreaturen bewachen den Felseneingang zur Gruft da vorne.
	AI_Output			(self, other, "DIA_AngarDJG_WASMACHSTDU_04_04"); //Etwas Grauenvolles verbirgt sich darin und schickt seine Schergen an die Oberfläche dieser Welt.
	AI_Output			(self, other, "DIA_AngarDJG_WASMACHSTDU_04_05"); //Ich bin mir fast sicher, dass mir mein Amulett hier irgendwo abhanden gekommen ist.

	AI_Output			(self, other, "DIA_AngarDJG_WHATSINTHERE_04_01"); //Irgendetwas lässt mich nicht an diesen Felseingang heran!
	AI_Output			(self, other, "DIA_AngarDJG_WHATSINTHERE_04_02"); //Er wird von einer magischen Kreatur bewacht. Ich hab es nachts die Gegend absuchen sehen. Ein abscheuliches Wesen.
	AI_Output			(self, other, "DIA_AngarDJG_WHATSINTHERE_04_03"); //Es schwebt zwischen den Bäumen hin und her und man hat den Eindruck, dass es alles Leben in seiner Umgebung aufsaugt wie einen Schwamm.

	if (Angar_willDJGwerden == TRUE)
	{
	Info_AddChoice	(DIA_AngarDJG_WASMACHSTDU, "Hast du mit den Drachenjägern gesprochen?", DIA_AngarDJG_WASMACHSTDU_DJG );
	};
};
func void DIA_AngarDJG_WASMACHSTDU_DJG ()
{
	AI_Output			(other, self, "DIA_AngarDJG_WASMACHSTDU_DJG_15_00"); //Hast du mit den Drachenjägern gesprochen?
	AI_Output			(self, other, "DIA_AngarDJG_WASMACHSTDU_DJG_04_01"); //Ja. Aber ich hatte eine Gemeinschaft erwartet, wie sie bei uns im Sumpflager üblich war.
	AI_Output			(self, other, "DIA_AngarDJG_WASMACHSTDU_DJG_04_02"); //Die Jungs sind nichts anderes als ein wild zusammengewürfelter Haufen von Idioten. Nichts für mich.
};

///////////////////////////////////////////////////////////////////////
//	Info WantToGoInThere
///////////////////////////////////////////////////////////////////////
instance DIA_AngarDJG_WANTTOGOINTHERE		(C_INFO)
{
	npc		 = 	NONE_705_ANGAR;
	nr		 = 	11;
	condition	 = 	DIA_AngarDJG_WANTTOGOINTHERE_Condition;
	information	 = 	DIA_AngarDJG_WANTTOGOINTHERE_Info;

	description	 = 	"Lass uns zusammen gehen.";
};

func int DIA_AngarDJG_WANTTOGOINTHERE_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_AngarDJG_WASMACHSTDU))
		&& (DJG_AngarGotAmulett == FALSE)
		{
				return TRUE;
		};
};

func void DIA_AngarDJG_WANTTOGOINTHERE_Info ()
{
	AI_Output			(other, self, "DIA_AngarDJG_WANTTOGOINTHERE_15_00"); //Lass uns zusammen gehen.
	AI_Output			(self, other, "DIA_AngarDJG_WANTTOGOINTHERE_04_01"); //Ich werde es versuchen. Aber sieh dich vor.

	AI_StopProcessInfos (self);  

	if (Npc_IsDead(SkeletonMage_Angar))
	{
		Npc_ExchangeRoutine	(self,"Zwischenstop"); 
	}
	else
	{
		Npc_ExchangeRoutine	(self,"Angriff");
		DJG_AngarAngriff = TRUE; 
	};
		self.aivar[AIV_PARTYMEMBER] = TRUE;
};

///////////////////////////////////////////////////////////////////////
//	Info UndeadMageDead
///////////////////////////////////////////////////////////////////////
instance DIA_AngarDJG_UndeadMageDead		(C_INFO)
{
	npc		 = 	NONE_705_ANGAR;
	nr		 = 	13;
	condition	 = 	DIA_AngarDJG_UndeadMageDead_Condition;
	information	 = 	DIA_AngarDJG_UndeadMageDead_Info;
	important	 = 	TRUE;
};

func int DIA_AngarDJG_UndeadMageDead_Condition ()
{
	if 	(
		(Npc_GetDistToWP(self,"FORTRESS_MINE_022")<1000) 
		&& (DJG_AngarAngriff == TRUE)
		&& (DJG_AngarGotAmulett == FALSE)
		&& (!Npc_IsDead(SkeletonMage_Angar))
		)
			{
				return TRUE;
			};
};

func void DIA_AngarDJG_UndeadMageDead_Info ()
{
	AI_Output			(self, other, "DIA_AngarDJG_UNDEADMAGECOMES_04_00"); //(flüstert) Da ist es! Hörst du das?
	AI_Output			(self, other, "DIA_AngarDJG_UndeadMageDead_04_00"); //(brüllt) Nur Tod und Verderben. Ich muss hier weg.
	AI_StopProcessInfos (self);
	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Npc_ExchangeRoutine	(self,"RunToEntrance");
};

///////////////////////////////////////////////////////////////////////
//	Info Wasistlos
///////////////////////////////////////////////////////////////////////
instance DIA_Angar_WASISTLOS		(C_INFO)
{
	npc		 = 	NONE_705_ANGAR;
	nr		 = 	14;
	condition	 = 	DIA_Angar_WASISTLOS_Condition;
	information	 = 	DIA_Angar_WASISTLOS_Info;
	important	 = 	TRUE;
	description	 = 	"Worum geht es?";
};

func int DIA_Angar_WASISTLOS_Condition ()
{
	if 	(
		(Npc_GetDistToWP(self,"FORTRESS_MINE_022")<1000) 				
		&& (DJG_AngarGotAmulett == FALSE)
		&& (Npc_IsDead(SkeletonMage_Angar))
		)	
			{
					return TRUE;
			};
};

func void DIA_Angar_WASISTLOS_Info ()
{
	AI_Output			(self, other, "DIA_Angar_WASISTLOS_04_01"); //Ich kann nicht weiter mit dir gehen.
	AI_Output			(other, self, "DIA_Angar_WASISTLOS_15_00"); //Worum geht es?
	AI_Output			(self, other, "DIA_Angar_WASISTLOS_04_02"); //Irgendwas sagt mir, dass ich hier nicht mehr lebend raus komme.
	AI_Output			(self, other, "DIA_Angar_WASISTLOS_04_03"); //Ich kann es nicht erklären, aber ...
	
	if (SC_KnowsMadPsi == TRUE)
	{
		AI_Output			(self, other, "DIA_Angar_WASISTLOS_04_04"); //Ich muss so schnell wie möglich weg aus diesem verfluchten Land, sonst wird es mir nicht besser ergehen als meinen Brüdern.
	}
	else
	{
		AI_Output			(self, other, "DIA_Angar_WASISTLOS_04_05"); //Jedes Mal, wenn ich gegen eine ... dieser Ausgeburten der Hölle antrete, dann habe ich das Gefühl, gegen meine eigenen Leute zu kämpfen.
	};

	AI_StopProcessInfos (self);

	B_LogEntry (TOPIC_Dragonhunter,"Angar ist einfach gegangen. Bei diesen Untoten hat er das Gefühl gegen seine eigenen Leute zu kämpfen.");
			
	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Npc_ExchangeRoutine	(self,"LeavingOW");
};

///////////////////////////////////////////////////////////////////////
//	Info Whyareyouhere
///////////////////////////////////////////////////////////////////////
instance DIA_Angar_WHYAREYOUHERE		(C_INFO)
{
	npc		 = 	NONE_705_ANGAR;
	nr		 = 15;
	condition	 = 	DIA_Angar_WHYAREYOUHERE_Condition;
	information	 = 	DIA_Angar_WHYAREYOUHERE_Info;

	description	 = 	"Angar? Was machst du denn hier?";
};

func int DIA_Angar_WHYAREYOUHERE_Condition ()
{
	if (Npc_GetDistToWP(self,"OW_CAVALORN_01")<1000) 				
		{
			return TRUE;
		};
};

func void DIA_Angar_WHYAREYOUHERE_Info ()
{
	AI_Output			(other, self, "DIA_Angar_WHYAREYOUHERE_15_00"); //Angar? Was machst du denn hier?
	AI_Output			(self, other, "DIA_Angar_WHYAREYOUHERE_04_01"); //Ich war auf dem Weg zum Pass, da sind mir die Orks in die Quere gekommen. Ich konnte die gottverdammten Kerle nicht abschütteln.
	AI_Output			(self, other, "DIA_Angar_WHYAREYOUHERE_04_02"); //Ich warte noch eine Weile ab und verzieh' mich dann über den Pass. Wir sehen uns drüben!

	B_LogEntry (TOPIC_Dragonhunter,"Ich habe Angar noch einmal getroffen, er sitzt immer noch im Minental fest.");
	B_GivePlayerXP (XP_AngarDJGAgain); 
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info PermKap4
///////////////////////////////////////////////////////////////////////
instance DIA_Angar_PERMKAP4		(C_INFO)
{
	npc		 = 	NONE_705_ANGAR;
	condition	 = 	DIA_Angar_PERMKAP4_Condition;
	information	 = 	DIA_Angar_PERMKAP4_Info;
	permanent	 = 	TRUE;

	description	 = 	"Kann ich dich wirklich alleine lassen?";
};

func int DIA_Angar_PERMKAP4_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Angar_WHYAREYOUHERE))
		{
				return TRUE;
		};
};

func void DIA_Angar_PERMKAP4_Info ()
{
	AI_Output			(other, self, "DIA_Angar_PERMKAP4_15_00"); //Kann ich dich wirklich alleine lassen?
	//AI_Output			(self, other, "DIA_Angar_PERMKAP4_04_01"); //Sure. Off you go. I'll see you.

	AI_Output			(other, self, "DIA_AngarDJG_WANTTOGOINTHERE_15_00"); //Lass uns zusammen gehen.
	AI_Output			(self, other, "DIA_AngarDJG_WANTTOGOINTHERE_04_01"); //Ich werde es versuchen. Aber sieh dich vor.

	AI_StopProcessInfos (self);	
	self.aivar[AIV_PARTYMEMBER] = TRUE;
};



// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Angar_PICKPOCKET (C_INFO)
{
	npc			= NONE_705_ANGAR;
	nr			= 900;
	condition	= DIA_Angar_PICKPOCKET_Condition;
	information	= DIA_Angar_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_60;
};                       

FUNC INT DIA_Angar_PICKPOCKET_Condition()
{
	C_Beklauen (47, 55);
};
 
FUNC VOID DIA_Angar_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Angar_PICKPOCKET);
	Info_AddChoice		(DIA_Angar_PICKPOCKET, DIALOG_BACK 		,DIA_Angar_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Angar_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Angar_PICKPOCKET_DoIt);
};

func void DIA_Angar_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Angar_PICKPOCKET);
};
	
func void DIA_Angar_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Angar_PICKPOCKET);
};

















































