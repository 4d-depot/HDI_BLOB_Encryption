//%attributes = {}
#DECLARE($step : Integer)

var $ps; $win : Integer
var $options : Object
var $cr : Text

Case of 
	: (Count parameters:C259=0)
		
		// This is for DOT NOTATION only. Do NOT change 16R5 !!! See below for more info
		//Modify $option variable (below) for minimal version
		If (Application version:C493<"1900")  // 19
			ALERT:C41("Sorry, this \"How do I\" (HDI) example must be used with a newer version of 4D (v19 and above)"; "Quit")
			QUIT 4D:C291
		Else 
			$ps:=New process:C317(Current method name:C684; 0; Current method name:C684; 0)
		End if 
		
	Else 
		
		$cr:=Char:C90(Carriage return:K15:38)
		
		If (Shift down:C543)  //  for debug purpose only
			$win:=Open form window:C675("HDI"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
		Else 
			$win:=Open form window:C675("HDI"; Pop up form window:K39:11; Horizontally centered:K39:1; Vertically centered:K39:4)
		End if 
		
		$options:=New object:C1471
		
		$options.title:="Encrypt and decrypt my own data"+$cr+"with the 4D algorithm"
		
		$options.blog:="https://blog.4d.com/encrypt-your-own-data-with-the-4d-algorithm/"
		$options.info:="Encryption"
		
		$options.minimumVersion:="1900"  // 1660 means 16R6   1601 means 16.1 (do not use !)
		
		DIALOG:C40("HDI"; $options)
		CLOSE WINDOW:C154
		
		If ($options.quit=True:C214)
			QUIT 4D:C291
		Else 
			
			$win:=Open form window:C675("HDI2"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
			DIALOG:C40("HDI2")
			CLOSE WINDOW:C154
			
		End if 
		
End case 

