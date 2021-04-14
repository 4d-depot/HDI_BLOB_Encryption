Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		initForm
		
		Form:C1466.trace:=False:C215
		Form:C1466.Person:=ds:C1482.Person.all()
		Form:C1466.lastDocument:=Folder:C1567(fk desktop folder:K87:19).file("TempDoc.PDF")
		Form:C1466.passphrase:="myFabulousPassPhrase"
		Form:C1466.duration:=""
		
	: (FORM Event:C1606.code=On Unload:K2:2)
		resetWebAreas
		
		If (Form:C1466.lastDocument.exists)
			Form:C1466.lastDocument.delete()
		End if 
		
End case 

