//%attributes = {"invisible":true}
Form:C1466.pages:=ds:C1482.INFO.all().orderBy("PageNumber").toCollection()
Form:C1466.tabs:=New object:C1471("values"; Form:C1466.pages.extract("TabTitle"); "index"; 0)

ST SET ATTRIBUTES:C1093(*; "winp_information@"; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; Choose:C955(Is macOS:C1572; 18; 17))
