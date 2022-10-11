//%attributes = {}
//JCL_frm_isExist
//20220425 hisa wat
//フォームがあるかどうか、確認する
//フォームメソッドがあるかで確認する。

C_POINTER:C301($1; $tblPtr)
$tblPtr:=$1
C_TEXT:C284($2; $form_name)
$form_name:=$2
C_BOOLEAN:C305($0; $exist)
$exist:=False:C215

ARRAY TEXT:C222($arynames; 0)

FORM GET NAMES:C1167($tblPtr->; $arynames)

$index:=Find in array:C230($arynames; $form_name)
If ($index#-1)
	$exist:=True:C214
	
End if 
////テーブルフォーム
////https://kb.4d-japan.com/Tips/2385/

//ARRAY TEXT($ref_objects; 0)
//C_LONGINT($i)
//C_LONGINT($table_NO)

//For ($table_NO; 1; Get last table number)
//If (Is table number valid($table_NO))
//METHOD GET PATHS FORM(Table($table_NO)->; $ref_objects)
//For ($i; 1; Size of array($ref_objects))
//APPEND TO ARRAY($1->; $ref_objects{$i})
//End for 
//End if 
//End for 

$0:=$exist
