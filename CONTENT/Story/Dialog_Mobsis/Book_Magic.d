//##########################################################################
//##
//##	Magic Books - Gothic II
//##
//##########################################################################



//##########################################################################
//##
//##	Magic Books - Revived
//##
//##########################################################################

FUNC VOID Use_BookstandRevived_MAGIC1_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"Alle Zauber werden durch die magische Energie des Anwenders ausgelöst.Der Anwender wird als Magier bezeichnet.");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLines	( nDocID,  0,"Jede Aktivierung eines Zaubers kostet den Magier einen Teil seiner Kraft. diese Kraft wird als Mana bezeichnet.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"When the gods gave mankind the gift of magic, they taught them to make magic runes as well. The servants of the gods have taken over the glorious task of creating these artifacts of divine power and using them. The magician's Circle determines which kind of magic he is able to understand and to use. ");
					Doc_PrintLine	( nDocID,  1,"");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic1 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic1 = TRUE;
					};	  
	};
};

FUNC VOID Use_BookstandRevived_MAGIC2_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   				); 	
					Doc_SetMargins	( nDocID,  0,  270, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"Elementare Arcanei");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_PrintLines	( nDocID,  0,"Einordung der Magie in das Gefüge des Irdischen");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Viel wurde geforscht über die Magie und ihrer Stellung zu den Elementen. Man kann mit Fug und Recht behaupten, dass die Magie als das absolute Element angesehen werden kann. Sie hat die Macht alle Elmente zu verändern und zu formen und ist ihnen somit augenscheinlich übergestellt.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Eine Verbindung von Element und Magie bringt jedes Element in seiner reinsten Form zutage, so gibt es an wenigen Stellen natürliche Vorkommen solcher Verbindungen und sie sind gar sehr begehrt. Auch die Fähigkeiten eines Magus Elemente scheinbar aus dem Nichts zu erschaffen sind Beweis, dass die magische Kraft das reinste und höchste Gut darstellt, das existiert.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic2 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic2 = TRUE;
					};	  
	};
};

FUNC VOID Use_BookstandRevived_MAGIC3_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"Wahre Macht");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_PrintLines	( nDocID,  0,"Die heilige Pflicht des Kundigen");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Es ist seine Macht, die den Magus von den normalen Menschen unterscheidet. Er, ausgestattet mit der Fähigkeit göttliche Kraft zu beeinflussen, ist ein Wesen, für welches die normalen Grenzen des Sterblichen nicht gelten müssen.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Hat der Magus erst einmal einen Grad erreicht, der es ihm ermöglicht die Grenzen seines Daseins zu sprengen, so kann er sich selbst auf eine Stufe über der des normalen Sterblichen stellen. Er kann Grenzen von Raum und Zeit durchdringen, selbst das Ende allen Seins, der Tod, ist kein Hindernis auf seinem Weg.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic3 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic3 = TRUE;
					};	  
	};
};

FUNC VOID Use_BookstandRevived_MAGIC4_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"Geheimnisse der Zauberei");
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Dem Magus selbst wohnt wohl keine Magie inne, er ist vielmehr in der Lage sich ihrer zu bedienen. Er selbst hat ausschließlich die Fähigkeit die Magie zu beeinflussen und zu lenken. Der in der Hohen Kunst der Magie eingeweihte Adept muss in der Lage sein, seinen Geist als Werkzeug zu benutzen");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Sein Geist ist es, der die allumgebene Arkane Kraft sammelt, sie formt, bündelt und letztendlich in die uns zugängliche Welt entlässt. Während dieser Zeit höchster Konzentration gelingt es dem Magus mit seinem Geist unsere Sphäre zu durchdringen und auf die Andere Seite zu blicken, von dort kommt die Kraft, der Magus selbst ist nur Leiter und Former dieser Kraft.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Barthos von Laran");

					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic4 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic4 = TRUE;
					};	  
	};
};

FUNC VOID Use_BookstandRevived_MAGIC5_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0," ");
					Doc_PrintLine	( nDocID,  0,"Göttergabe");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Seit Jahrhunderten versucht man das Wesen und den Ursprung der Magie zu ergründen. Doch wo soll man suchen? Wie kann man sie beschreiben? Sie ist die widersprüchlichste Kraft, die wir kennen. Sie kann töten und gleichzeitig heilen, Sie kann formen und zerstören.");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Wie sieht eine solche Kraft aus ? Wo kann man diese unsichtbare und doch so mächtige Kraft finden? Die Magie ist das, was sie ist. Das herrlichste und zugleich mächtigste Geschenk der Götter. Dem Nutzer und Wirker dieser Kraft ist damit auch ein göttliches Geschenk gegeben. Eine heilige Kraft, die nur wenige Auserwählte in der Lage sind zu kontrollieren.");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1,"Barthos von Laran");

					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic5 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic5 = TRUE;
					};	  
	};
};

FUNC VOID Use_BookstandRevived_MAGIC6_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Manche Zauber können mit einer bestimmten größeren Anzahl von magischer Energie gespeist werden, diese werden auch Aufladungszauber genannt.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Andere Zauber werden aufrechterhalten, solange der Magier sein Mana in dieses Spruch einfliessen lässt. Solche Zauber heissen Investierungszauber.");

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Das besondere an diesen magischen Formeln ist, das sie, obwohl als Runen geschaffen,von jedem der magische Energie in sich trägt gesprochen werden können.Die Magie die diese Formeln umgibt, kann sofort aktiviert werden. Es gibt keine Einschränkungen für Teleportationszauber.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");

					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic6 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic6 = TRUE;
					};	  
	};
};

FUNC VOID Use_BookstandRevived_MAGIC7_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"Machtvolle Kunst");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Ein Werk für den Eingweihten der Arkanen Kunst");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Die Fähigkeiten die göttliche Macht zu kanalisieren wächst in dem Magier. Anfangs keimt sie nur wie ein kleiner Schössling auf dem Feld und man muss ihn pflegen, damit er nicht verkümmert. Doch wenn dieser Schössling erst einmal herangewachsen ist, entfaltet er seine volle Pracht");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1,"Er wächst und wächst und wird stärker mit jedem Tag. So ergeht es auch dem gelehrigen Magus. Seine anfänglich sehr geringen Kräfte wachsen und gedeihen und entfalten mit der Zeit eine Macht, die in ihrer Vollendung nicht absehbar ist. Diese Macht zu ihrer höchsten Vollendung zu führen ist die heilige Pflicht eines jeden Magus, denn dieser Schößling gesät von den Göttern selbst ist das größte Geschenk, welches ein Sterblicher empfangen kann.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic7 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic7 = TRUE;
					};	  
	};
};

FUNC VOID UseGolemBook1()
{   
		var int nDocID;
		nDocID = Doc_Create(); 

		Doc_SetPages	( nDocID,  2 );
		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
		Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);
		Doc_PrintLine	( nDocID,  0,"Arkanum Golum - Band I");
		Doc_PrintLine	( nDocID,  0, "=====================");
		Doc_PrintLines	( nDocID,  0,"(Magie der Golems)");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0,"Nur wer schon einmal einem dieser aus den Elementen erschaffenen Kreaturen begegnet ist, wird wirklich verstehen, welchen Respekt diese magieschen Wesen einem abenteuerlustigen Wanderer einflößen können.");
		Doc_PrintLine	( nDocID,  0, "");

		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLine	( nDocID,  1,"Steingolem");
		Doc_PrintLine	( nDocID,  1,"------------");
		Doc_PrintLines	( nDocID,  1,"Diese steinernen Kolosse sind im Kampf fast unverwundbar. Schwerter, Äxte und Bögen scheinen diesen Monstren nichts anhaben zu können.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1,"Der einzige glaubhafte Bericht von der Bezwingung eines solchen Leviathans stammt von einem Söldner. Er schrieb davon, wie der stumpfe Aufprall seines Kriegshammers Risse in den Golem trieb, bis dieser schlußendlich zerbarst.");

		Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic8 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic8 = TRUE;
					};	  
};

FUNC VOID UseGolemBook2()
{   
		var int nDocID;
		nDocID = Doc_Create(); 
		Doc_SetPages	( nDocID,  2 );

		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
		Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
		Doc_PrintLine	( nDocID,  0,"Arkanum Golum - Band II");
		Doc_PrintLine	( nDocID,  0, "======================");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLine	( nDocID,  0,"Eisgolem");
		Doc_PrintLine	( nDocID,  0,"---------");
		Doc_PrintLines	( nDocID,  0,"Den Steingolems verwandt sind die Eisgolems, deren physische Substanz jedoch völlig aus gefrorenem Wasser zu bestehen scheint. Jede uns bekannte Waffe scheint an der glatten Oberfläche dieser eisigen Wesen abzugleiten.");
		Doc_PrintLines	( nDocID,  0,"Auch sei der abenteuerlustige Wanderer gewarnt vor dem Eisatem dieser Kreatur, schließt sie doch jeden Ahnungslosen im Nu in einer Säule aus Eis ein.");

		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
		Doc_PrintLines	( nDocID,  1,"Einst berichtete ein Feuermagier von der Begegnung mit einem solchen Geschöpf, doch schien er keine ernste Bedrohung darin erkannt zu haben.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1,"Feuergolem");
		Doc_PrintLine	( nDocID,  1,"------------");
		Doc_PrintLines	( nDocID,  1,"Berichten zufolge können diese feurigen Geschöpfe ihre Opfer mit nur einer Berührung in ein Flammenmeer verwandeln.");
		Doc_PrintLines	( nDocID,  1,"Erst im letzten Jahr stieß eine Jagdgruppe im Hochland auf solch einen wandelnden Gluthaufen. Der Ausgang ist unklar, doch sollen Blitze und Eis die Höllenkreatur gestoppt haben.");
		
		Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Magic9 == FALSE)
					{
						REV_ReadBook(BookType_Magic);
						RevivedBookstandRead_Magic9 = TRUE;
					};	  
};