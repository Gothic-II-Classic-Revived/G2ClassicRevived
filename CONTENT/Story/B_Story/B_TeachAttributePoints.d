// **********************
// B_TeachAttributePoints
// ----------------------
// Kosten abh. v. Gilde
// **********************

// ----------------------------
func int B_TeachAttributePoints (var C_NPC slf, var C_NPC oth, var int attrib, var int points, var int teacherMAX)
{
	var string concatText;

	// ------ Kostenberechnung ------
	var int kosten; 
	
	kosten = (B_GetLearnCostAttribute (oth, attrib) * points);
	
	
	//EXIT IF...
	
	// ------ falscher Parameter ------
	if (attrib!=ATR_STRENGTH) && (attrib!=ATR_DEXTERITY) && (attrib!=ATR_MANA_MAX)
	{
		Print ("*** ERROR: Wrong Parameter ***");
		return FALSE;
	};
	
	// ------ Lernen NICHT über teacherMax ------
	var int realAttribute;
	realAttribute = B_GetRealAttribute (oth, attrib);
	
	if (realAttribute >= teacherMAX)				//Wenn der Spieler schon das teacherMAX erreicht oder überschritten hat
	{
		concatText = ConcatStrings (PRINT_NoLearnOverPersonalMAX, IntToString(teacherMAX));
		PrintScreen	(concatText, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNYOUREBETTER");
	
		return FALSE;
	};
	
	if ((realAttribute + points) > teacherMAX)
	{
		concatText = ConcatStrings (PRINT_NoLearnOverPersonalMAX, IntToString(teacherMAX));
		PrintScreen	(concatText, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNOVERPERSONALMAX");
	
		return FALSE;
	};
		
	// ------ Player hat zu wenig Lernpunkte ------
	if (oth.lp < kosten)
	{
		PrintScreen	(PRINT_NotEnoughLP, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNNOPOINTS");
		
		return FALSE;
	};
		
		
	// FUNC
				
	// ------ Lernpunkte abziehen ------			
	oth.lp = oth.lp - kosten;
		
	B_RaiseRealAttributeLearnCounter (oth, attrib, points);
	B_RaiseAttribute (oth, attrib, points);
	
	return TRUE;
};
