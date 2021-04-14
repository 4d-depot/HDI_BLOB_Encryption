//%attributes = {}
If (Not:C34(Undefined:C82(Form:C1466.currentAnalysis)))
	If (Form:C1466.currentAnalysis#Null:C1517)
		resetWebAreas
		
		var $encryptedDocument : 4D:C1709.File
		$encryptedDocument:=Folder:C1567(fk data folder:K87:12).folder("Documents").file(Form:C1466.currentAnalysis.fileName)
		
		var $begin : Integer
		$begin:=Milliseconds:C459
		
		If (Form:C1466.trace)
			TRACE:C157
		End if 
		decryptFile($encryptedDocument; Form:C1466.passphrase; Form:C1466.currentAnalysis.ID; Form:C1466.lastDocument)
		
		Form:C1466.duration:=Choose:C955(Form:C1466.trace; "Trace mode"; "Decryption processed in "+String:C10(Milliseconds:C459-$begin)+"ms")
		
		WA OPEN URL:C1020(*; "wweb_Encrypted"; "file://"+Convert path system to POSIX:C1106($encryptedDocument.platformPath))
		WA OPEN URL:C1020(*; "wweb_Decrypted"; "file://"+Form:C1466.lastDocument.path)
		
	End if 
End if 
