//%attributes = {"shared":true}
  //JCL_tbl_DATATYPE
  //JCL_tbl_GetDATATYPE
  //20130501
  //メソッド生成時、テンプレートのDATATYPEを得る

C_TEXT:C284($1;$fieldType)
$fieldType:=$1  //フィールド型
C_TEXT:C284($0;$dataType)

$dataType:=""
Case of 
	: ($fieldType="Is Alpha Field")
		$dataType:="TEXT"
		
	: ($fieldType="Is Text")
		$dataType:="TEXT"
		
	: ($fieldType="Is Real")
		$dataType:="REAL"
		
	: ($fieldType="Is Integer")
		$dataType:="LONGINT"
		
	: ($fieldType="Is LongInt")
		$dataType:="LONGINT"
		
	: ($fieldType="Is Date")
		$dataType:="DATE"
		
	: ($fieldType="Is Time")
		$dataType:="TIME"
		
	: ($fieldType="Is Boolean")
		$dataType:="BOOLEAN"
		
	: ($fieldType="Is Picture")
		$dataType:="PICTURE"
		
	: ($fieldType="Is Subtable")
		$dataType:=""
		
	: ($fieldType="Is BLOB")
		$dataType:=""
End case 

$0:=$dataType
