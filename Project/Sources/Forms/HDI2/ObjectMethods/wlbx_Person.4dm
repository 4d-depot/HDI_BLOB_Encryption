Case of 
	: ((FORM Event:C1606.code=On Selection Change:K2:29) | (FORM Event:C1606.code=On Clicked:K2:4))
		Form:C1466.analyses:=Form:C1466.currentPerson.analyses.orderBy("date")
		resetWebAreas
		If (Form:C1466.analyses.length>0)
			GOTO OBJECT:C206(*; "wlbx_Analysis")
			LISTBOX SELECT ROW:C912(*; "wlbx_Analysis"; 1; lk replace selection:K53:1)
			showDocument
		End if 
		
End case 
