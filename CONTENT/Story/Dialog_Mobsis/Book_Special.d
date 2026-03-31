//##########################################################################
//##
//##	Special Books - Gothic II
//##
//##########################################################################

var int FireContest_Once;
FUNC VOID Use_Bookstand_01_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{		
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, "Die Prüfung des Feuers"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					Doc_PrintLines	( nDocID,  0, "So ein Novize nicht erwählt ist, mag es sein, das er trotzdem die Bereitschaft verspürt sich der Prüfung der Magie zu unterwerfen. Wenn er diesen Entschluß reiflich überlegt hat und er darauf besteht, ist es ihm gewährt, die Prüfung zu verlangen und kein Magier darf sie ihm verweigern. Doch nicht nur die Prüfung der Magie wird ihm auferlegt, sondern er soll durch das Feuer seine Erleuchtung finden. Wenn er vor dem hohen Rat darauf besteht, so soll ihm die PRÜFUNG DES FEUERS gewährt werden.");
			
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "In dieser Prüfung soll gleichermaßen die Klugheit, Stärke und das Geschick des Novizen gefordert werden. So soll er drei Prüfungen erfüllen, jede empfangen durch einen der Magier des hohen Rates, bevor er den Eid der Flamme schwört und den Bund mit dem Feuer eingehen kann."); 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "So ist es Innos Wille und so soll es geschehen."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Der hohe Rat"					);
					Doc_Show		( nDocID );

					
		if  (hero.guild == GIL_NOV)
		{
			if (FireContest_Once == FALSE)
			{
				KNOWS_FIRE_CONTEST = TRUE; 
				
				Log_CreateTopic (TOPIC_FireContest,LOG_MISSION);
				Log_SetTopicStatus	(TOPIC_FireContest,LOG_RUNNING);
				B_LogEntry (TOPIC_FireContest,"Als Novize habe ich das Recht die Prüfung des Feuers zu fordern. Dabei wird mir jeder der drei Magier aus dem hohen Rat eine Prüfung stellen. Wenn ich sie bestehe, werde ich in den Kreis des Feuers aufgenommen.");
			
				//B_GivePlayerXP (XP_BookstandFireContest);
				FireContest_Once = TRUE;
			};
		};
	};
};

//--------------------------------------
var int FinalDragonEquipment_Once;
FUNC VOID Use_FINALDRAGONEQUIPMENT_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
	
		var int nDocID;
		
		nDocID = 		Doc_Create		()			  ;							
						Doc_SetPages	( nDocID,  2 );                         
						Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0); 
						Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0);
					
						Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
						Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  	
	
						Doc_PrintLine	( nDocID,  0, "");
						Doc_PrintLines	( nDocID,  0, "...Ich hoffe, dass die Kuppel das Erz vor dem Zugriff Beliars zu schützen vermag. Der König ist einfältig genug zu glauben, dass wir die Kuppel zum Schutz vor Ausbrüchen errichten, doch solange wir mit diesen Ratschlagen unsere höheren Zeile erreichen, soll es uns recht sein. Ich hoffe, das uns genug Zeit bleibt uns auf den Kampf vorzubereiten. Sobald die Kuppel um das Minental erschaffen ist, werde ich mit all meiner mir zur Verfügung stehenden Macht versuchen in den bevorstehenden Kampf einzugreifen.");
						Doc_PrintLine	( nDocID,  0, "");
			
		if  (hero.guild == GIL_KDF)
		{	
			PlayerGetsAmulettOfDeath = TRUE;
			PLAYER_TALENT_RUNES[SPL_MasterOfDisaster] = TRUE; 
			B_LogEntry (TOPIC_TalentRunes,"Zutaten für die Rune ´Heiliges Geschoss´: 1 geweihtes Wasser, aber keine Spruchrolle");
			
						Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "...ich habe, genau nach Anleitung einfach Innos geweihtes Wasser auf einen Runenrohling geträufelt und am Runentisch zusammengeführt. Der Runenstein ist zerstört, ich glaube, dieser Spruch ist wirklich nur dem Einen zugänglich."); 
						Doc_PrintLines	( nDocID,  1, "Die Heilige Aura Innos habe ich dem Klosterschtz übergeben. Sie wird von nun an, vom Klostervorsteher aufbewahrt, bis zu dem Tag, an dem sich der Eine offenbart."	);
						Doc_PrintLines	( nDocID,  1, "Die Tränen Innos mögen in dem bevorstehenden Kampf eine Rolle spielen. Doch ist es wohl zu gefährlich sie offen aufzubewahren. Ich werde sie hier in der Bibliothek lassen."	);
						Doc_Show		( nDocID );		
		}
		else if (hero.guild == GIL_PAL)
		{
			PAL_KnowsAbout_FINAL_BLESSING = TRUE;
			PLAYER_TALENT_RUNES[SPL_PalTeleportSecret] 		= TRUE; 		
			PrintScreen	(PRINT_LearnPalTeleportSecret, -1, -1, FONT_Screen, 2);
			
			Log_CreateTopic (TOPIC_TalentRunes,LOG_NOTE);
			B_LogEntry (TOPIC_TalentRunes,"Um eine Rune zu erschaffen, benötige ich für jede Rune unterschiedliche Zutaten. Mit diesen Zutaten und einem Runenrohling kann ich dann die gewünschte Rune am Runentisch erschaffen.");
			B_LogEntry (TOPIC_TalentRunes,"Zutaten für die Rune ´Geheimer Teleport´: 1 Geweihtes Wasser");
			
						Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "Um in den geheimen Ort zu gelangen muss man eine Teleportrune bauen. Dazu benötigst du einen Runenrohling und eine kleines Fläschchen geweihtes Wasser. Mit der erstellten Runen kannst du dich in den Raum teleporteiren."); 
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "Ich bin nun sehr sicher, dass es die Tränen Innos waren, mit den die Paladine aus der vorderen Zeit, die längst vergessene Hohe Schwertweihe abgehalten haben. Es sollte also möglich sein, mit dem von mir entdeckten Fläschchen eine geweihten Waffe zusätzliche Kraft zu geben."	);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_Show		( nDocID );
		}
		else
		{
			PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] 	= TRUE;	
			PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] 	= TRUE;	
			
			PrintScreen			(PRINT_LearnSmith, -1, -1, FONT_Screen, 2);
			Npc_SetTalentSkill 	(self, NPC_TALENT_SMITH, 1);
			Log_CreateTopic (TOPIC_TalentSmith,LOG_NOTE);
			B_LogEntry (TOPIC_TalentSmith,"Um eine Waffe zu schmiede, brauche ich zunächst ein Stück Rohstahl. An einem Schmiedefeuer muss ich den Stahl erhitzen und anschließend an einem Amboss in die gewünschte Form bringen. Für hochwertigere Waffe benötigt man häufig noch Substanzen, welche der Waffe besondere Eigenschaften verleihen.");
			B_LogEntry (TOPIC_TalentSmith,"Wenn ich 4 Erz und 5 Drachenblut hinzugebe, kann ich mir einen ´ERZ-DRACHENTÖTER´ schmieden.");
			B_LogEntry (TOPIC_TalentSmith,"Wenn ich 5 Erz und 5 Drachenblut hinzugebe, kann ich mir einen ´GROßEN ERZ-DRACHENTÖTER´ schmieden.");
			PlayerGetsFinalDJGArmor = TRUE;
			DJG_KnowsAbout_Purifying = TRUE;
						
						Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
						Doc_PrintLine	( nDocID,  1, "");
						//Doc_PrintLines	( nDocID,  1, "From: Weapons of the Dragon Lord."); 
						Doc_PrintLines	( nDocID,  1, "Um eine Rüstung aus Drachenschuppen so hart wie möglich zu machen, können die Schuppen mit dem Erz überzogen werden, das im Tal auf der Insel Karynis abgebaut wird.'"					);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_PrintLines	( nDocID,  1, "Um eine dem Drachenherren würdige Klinge zu erhalten, muss man die Klinge in Drachenblut tränken. Schon die Beigabe einer Menge von 5 kleinen Phiolen verleiht dem Stahl eine Härte und Schärfe, der nichts entgegen zu setzten ist.'"					);
						Doc_PrintLine	( nDocID,  1, "");
						//Doc_PrintLines	( nDocID,  1, "Note: 'Karynis' probably refers to what is now known as Khorinis.");
						Doc_PrintLine	( nDocID,  1, "Anmerkung:");
						Doc_PrintLines	( nDocID,  1, "Ich bin mir nun ziemlich sicher, dass die Tränen Innos' das sind, was die Paladine der alten Zeit in dem längst vergessenen Ritual der Weihe des Schwertes verwendet haben. Das bedeutet, dass ich mit der kleinen Flasche, die ich gefunden habe, die Kräfte eines geweihten Schwertes wiedererlangen kann."	);
						Doc_PrintLine	( nDocID,  1, "");
						Doc_Show		( nDocID );
		};
		
		if FinalDragonEquipment_Once == FALSE
		{
			B_GivePlayerXP (XP_FinalDragonEquipment);
			FinalDragonEquipment_Once = TRUE;
		};
	};
};

//##########################################################################
//##
//##	Special Books - Revived
//##
//##########################################################################

FUNC VOID UseItWrFokusbuch()
{  
	var int			nDocID;	
	nDocID = 	Doc_Create		()			  ;	 
	Doc_SetPages	( nDocID,  2 );

			Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
			Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);

  			Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
			Doc_PrintLine	( nDocID,  0,"Kapitel 23");
			Doc_PrintLine	( nDocID,  0, "");
			Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
			Doc_PrintLine	( nDocID,  0,"Die gebündelte Macht");
			Doc_PrintLine	( nDocID,  0, "");
			Doc_PrintLines	( nDocID,  0,"Die dem Stein innewohnende Kraft nimmt kontinuierlich zu und wird durch die Worte des Magiers entfesselt. Ob dauerhaft oder als einzelner Schlag, das liegt allein in seinem Ermessen.");
			Doc_PrintLine	( nDocID,  0, "");
			Doc_PrintLines	( nDocID,  0,"Zugleich wird der Fokus jedoch frei von der Macht, er ist nunmehr eine leere Hülle.");

			Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
			Doc_PrintLine	( nDocID,  1,  "");
			Doc_PrintLines	( nDocID,  1,"Die Worte der Macht, um  die in einem Fokus aufbewahrte Energie freizulassen sind vielen Künstlern der arkanen Kraft zugänglich. Auch einen neues Artefakt mit Energie zu füllen ist mehr magische Gepflogenheit geworden denn ein Geheimnis der Wissenden.");
			Doc_PrintLine	( nDocID,  1,  "");
			Doc_PrintLines	( nDocID,  1,"Doch einen gebrauchten Fokusstein wieder erneut aufzuladen, verstehen nur Auserwählte.Diese Formel aus uralten Tagen dient als Zeichen der hohen Gabe.");
			Doc_PrintLine	( nDocID,  1, "");
			Doc_PrintLines	( nDocID,  1,"So dann Wissender öffne deinen Geist für die Worte alter Macht");
					
			Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_Special1 == FALSE)
				{
					REV_ReadBook(BookType_Special);
					RevivedBookstandRead_Special1 = TRUE;
				};	  
};

FUNC VOID UseItWrCryptbuch()
{  
	var int			nDocID;	
	nDocID = 	Doc_Create		()			  ;	 
	Doc_SetPages	( nDocID,  2 );

			Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
			Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);

  			Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
  			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
			Doc_PrintLine	( nDocID,  0,"Kapitel 23");
			Doc_PrintLine	( nDocID,  0, "");
			Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
			Doc_PrintLine	( nDocID,  0,"Die gebündelte Macht");
			Doc_PrintLine	( nDocID,  0, "");
			Doc_PrintLines	( nDocID,  0,"Die dem Stein innewohnende Kraft nimmt kontinuierlich zu und wird durch die Worte des Magiers entfesselt. Ob dauerhaft oder als einzelner Schlag, das liegt allein in seinem Ermessen.");
			Doc_PrintLine	( nDocID,  0, "");
			Doc_PrintLines	( nDocID,  0,"Zugleich wird der Fokus jedoch frei von der Macht, er ist nunmehr eine leere Hülle.");

			Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
			Doc_PrintLine	( nDocID,  1,  "");
			Doc_PrintLines	( nDocID,  1,"Die Worte der Macht, um  die in einem Fokus aufbewahrte Energie freizulassen sind vielen Künstlern der arkanen Kraft zugänglich. Auch einen neues Artefakt mit Energie zu füllen ist mehr magische Gepflogenheit geworden denn ein Geheimnis der Wissenden.");
			Doc_PrintLine	( nDocID,  1,  "");
			Doc_PrintLines	( nDocID,  1,"Doch einen gebrauchten Fokusstein wieder erneut aufzuladen, verstehen nur Auserwählte.Diese Formel aus uralten Tagen dient als Zeichen der hohen Gabe.");
			Doc_PrintLine	( nDocID,  1, "");
			Doc_PrintLines	( nDocID,  1,"So dann Wissender öffne deinen Geist für die Worte alter Macht");
					
			Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_Special2 == FALSE)
				{
					REV_ReadBook(BookType_Special);
					RevivedBookstandRead_Special2 = TRUE;
				};	  
};