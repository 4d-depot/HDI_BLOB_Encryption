Case of 
	: (FORM Event:C1606.code=On Selection Change:K2:29)
		
		showDocument
		
	: (FORM Event:C1606.code=On Clicked:K2:4)
		If (Not:C34(Undefined:C82(Form:C1466.currentAnalysis)))
			If (Form:C1466.currentAnalysis=Null:C1517)
				resetWebAreas
			End if 
		End if 
End case 
