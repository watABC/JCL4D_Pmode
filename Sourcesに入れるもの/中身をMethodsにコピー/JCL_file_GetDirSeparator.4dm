//%attributes = {"shared":true}
  //JCL_file_GetDirSeparator
  //20110920 wat
  //OSに合わせたフォルダの区切りを返す
  //$1:なし
  //$0:OSに合わせたフォルダの区切り
  //20090602　矢部　新規作成

C_TEXT:C284($0;$separator)
$separator:=""

C_TEXT:C284($vlPlatform)
$vlPlatform:=JCL_str_Platform 

If ($vlPlatform="Win")
	
	  //winなら
	$separator:="\\"
	
End if 

If ($vlPlatform="Mac")
	  //macなら
	$separator:=":"
	
End if 

$0:=$separator
