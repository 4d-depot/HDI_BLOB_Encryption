//%attributes = {}
//encryptFile
#DECLARE($originalFile : 4D:C1709.File; $passPhrase : Text; $salt : Integer; $encryptedFile : 4D:C1709.File)->$result : Boolean
// AES-type encryption : as resulting blob size is a multiple of 16 bytes, some final null bytes may be added.
var $fileContent; $blobToEncrypt; $blobEncrypted : Blob
var $contentLength; $offset : Integer
$fileContent:=$originalFile.getContent()
// Store original file length at the beginning of the blob to encrypt
$contentLength:=BLOB size:C605($fileContent)
VARIABLE TO BLOB:C532($contentLength; $blobToEncrypt; $offset)
COPY BLOB:C558($fileContent; $blobToEncrypt; 0; $offset; $contentLength)
$result:=Encrypt data BLOB:C1773($blobToEncrypt; $passPhrase; $salt; $blobEncrypted)
If ($result)
	$encryptedFile.setContent($blobEncrypted)
End if 
