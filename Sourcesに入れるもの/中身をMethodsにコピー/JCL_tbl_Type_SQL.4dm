//%attributes = {"shared":true}
  //JCL_tbl_Type_SQL
  //JCL_tbl_GetSQLType
  //20130429 wat
  //zz_sql_GetTypeStr
  //20111005 wat
  //タイプ文字列を得る
  //20150826 yabe wat NOT NULL 追加

C_TEXT:C284($1;$type)
$type:=$1  //フィールド型
C_TEXT:C284($2;$char_length)
$char_length:=$2  //文字列長さ
C_TEXT:C284($0;$sql_type)

Case of 
	: ($type="Is Alpha Field")
		$sql_type:=" VARCHAR("+$char_length+") NOT NULL,"
	: ($type="Is Text")
		$sql_type:=" VARCHAR NOT NULL,"
	: ($type="Is Real")
		$sql_type:=" REAL NOT NULL,"
	: ($type="Is Integer")
		$sql_type:=" INT16 NOT NULL,"
	: ($type="Is LongInt")
		$sql_type:=" INT32 NOT NULL,"
	: ($type="Is Date")
		$sql_type:=" TIMESTAMP NOT NULL,"
	: ($type="Is Time")
		$sql_type:=" INTERVAL NOT NULL,"
	: ($type="Is Boolean")
		$sql_type:=" BOOLEAN NOT NULL,"
	: ($type="Is Picture")
		$sql_type:=" PICTURE NOT NULL,"
		  //: ($type=Is Subtable )
		  //$sql_type:=" VARCHAR,"
	: ($type="Is BLOB")
		$sql_type:=" BLOB NOT NULL,"
End case 

$0:=$sql_type
