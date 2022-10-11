//%attributes = {"shared":true}
  //JCL_tbl_Names_fromStructure
  //JCL_tbl_GetTableNameAry
  //20130430 yabe
  //テーブル名配列を返す

C_POINTER:C301($1;$ioAryTableNamePtr)
$ioAryTableNamePtr:=$1
C_LONGINT:C283($i;$numOfTables)
C_TEXT:C284($tableName)

DELETE FROM ARRAY:C228($ioAryTableNamePtr->;1;Size of array:C274($ioAryTableNamePtr->))

$numOfTables:=Get last table number:C254

For ($i;1;$numOfTables)
	
	$tableName:=Table name:C256($i)
	
	APPEND TO ARRAY:C911($ioAryTableNamePtr->;$tableName)
	
End for 
