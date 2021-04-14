//%attributes = {}
//decryptFile
#DECLARE($encryptedFile : 4D:C1709.File; $passPhrase : Text; $salt : Integer; $decryptedFile : 4D:C1709.File)->$result : Boolean
// AES-type decryption : as encrypted blob size is a multiple of 16 bytes, some final null bytes may have been added.
var $fileContent; $blobToDecrypt; $blobDecrypted : Blob
var $contentLength; $offset : Integer
$blobToDecrypt:=$encryptedFile.getContent()
$result:=Decrypt data BLOB:C1774($blobToDecrypt; $passPhrase; $salt; $blobDecrypted)
If ($result)
	// Retrieve original file length at the beginning of the decrypted blob
	BLOB TO VARIABLE:C533($blobDecrypted; $contentLength; $offset)
	COPY BLOB:C558($blobDecrypted; $fileContent; $offset; 0; $contentLength)
	$decryptedFile.setContent($fileContent)
End if 
