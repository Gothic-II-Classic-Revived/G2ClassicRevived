//##########################################################################
//##
//##	Teaching Books - Gothic II
//##
//##########################################################################



//##########################################################################
//##
//##	Teaching Books - Revived
//##
//##########################################################################

FUNC VOID UseLehren_der_Goetter1()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		); 					
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0,"");										
				Doc_PrintLines	( nDocID,  0,"Höre die Worte der Götter, denn es ist ihr Wille, dass sie gehört werden. Befolge die Lehren der Götter, denn es ist ihr Wille, dass sie befolgt werden. Achte die Priester der Götter, denn sie sind erwählt.");
				Doc_PrintLine	( nDocID,  0,"");

				Doc_PrintLines	( nDocID,  0,"Die Worte Innos : Und möget ihr nicht verstehen, so zweifelt nicht an den Worten der Priester, ihr Tun ist gerecht und weise. Denn ich bin die aufgehende Sonne, das Licht und das Leben. Und alles was da wider der Sonne, ist wider mir und soll verbannt sein auf immer und ewig in die Schatten.");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLines	( nDocID,  1,"Die Worte Adanos: Arbeite und lebe, denn der Tag ist gemacht dafür, dass der Mensch arbeite. Suche das Lernen und Wissen, auf dass Du es weitergeben kannst, denn so bist Du geschaffen worden. Wer aber müßig und faul, der soll verbannt werden auf immer und ewig in die Schatten.");
				Doc_PrintLine	( nDocID,  1,"");

				Doc_PrintLines	( nDocID,  1,"Die Worte Beliar: Wer aber handelt unrecht und gegen den Willen der Götter, den will ich strafen, den Körper mit Schmerz , Leid und Tod, den Geist werde ich aber zu mir nehmen auf immer und ewig in die Schatten.");
				
				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_Teachings1 == FALSE)
				{
					REV_ReadBook(BookType_Teachings);
					RevivedBookstandRead_Teachings1 = TRUE;
				};	  
};

FUNC VOID UseLehren_der_Goetter2()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0,""); 					
				Doc_PrintLines	( nDocID,  0,"Vom Anbeginn der Zeit: Es ward noch kein Tag oder Nacht und kein Wesen zog über die Welt. Da erschien der Welt Innos und sein Licht erhellte alles. Und Innos schenkte der Welt das Leben. Da aber kein Wesen im Licht des Innos leben kann, schuf er die Sonne. Das Licht war aber noch zu stark. Da teilte sich Innos und schuf Beliar. Beliar brachte die Nacht. Nun konnten die Menschen sein. Da teilte sich Innos erneut und schuf Adanos. Adanos gab den Menschen die Vielseitigkeit, Wissen, Neugier und Mut. Innos war sehr zufrieden mit sich und seinem Werk.");
				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,"Und er beschloss die Menschen Adanos ganz zu überlassen, um zu ruhen. Beliar aber wurde von Neid zerfressen, denn die Menschen beteten nicht zu ihm und ruhten des Nachts. Da wurde er zornig und er formte sich einen Menschen. Einen Menschen, der nur ihn anbeten sollte. Der Mensch aber ward genau so wie alle anderen Menschen. Beliar wurde so stark von Zorn erfüllt, dass er den Menschen tötete und sprach: Wenn sie mich nicht anbeten, dann sollen sie mich fürchten. Und er schuf den Tod und nahm den Menschen das Leben.");

				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_Teachings2 == FALSE)
				{
					REV_ReadBook(BookType_Teachings);
					RevivedBookstandRead_Teachings2 = TRUE;
				};	  
};

FUNC VOID UseLehren_der_Goetter3()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0,"");			
				Doc_PrintLines	( nDocID,  0,"Innos gab den Menschen die Macht ihn zu hören und zu ihm zu sprechen. Er gab ihnen die Macht große Wunder zu vollbringen. Und er nannte sie Magie. Mit dieser Macht konnten die Menschen die Welt frei nach ihrem Willen gestalten. Es gab keine Grenzen, die Innos ihnen aufzeigte. Und so hatten die Menschen Teil an der göttlichen Schöpferkraft. Aber die Menschen waren sich alle gleich und das gefiel ihnen nicht. Also nahm er denen die unzufrieden waren, die Kraft. Die wenigen, die sich dankbar zeigten, stellte Innos über alle anderen");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,"Diese Menschen wurden alsbald verehrt und gefürchtet und wurden Priester genannt. Doch auch unter ihnen gab es viele, die bald unzufrieden waren. Und so kam es, dass sie zu Adanos beteten und ihren Ursprung vergassen. Die Riege der Priester war gespalten. Kriege wurden entfesselt und auch der Glaube an die göttliche Allmacht war bald schon nur noch Mythos. So teilten sich die Priester. Die dem Adanos folgten nannte man nun Magier des Wassers, die Geweihten des Innos hießen aber die Magier des Feuers.");

				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_Teachings3 == FALSE)
				{
					REV_ReadBook(BookType_Teachings);
					RevivedBookstandRead_Teachings3 = TRUE;
				};	  
};