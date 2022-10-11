//%attributes = {"shared":true}
  //JCL_file_MakeFilePath
  //20110222 wat
  //ファイルパスを生成

C_TEXT:C284($1;$folder)
$folder:=$1  //フォルダ名
C_TEXT:C284($2;$fileName)
$fileName:=$2  //ファイル名
C_TEXT:C284($0;$outPath)

C_TEXT:C284($separator)
$separator:=JCL_file_GetDirSeparator 

C_LONGINT:C283($length)
C_TEXT:C284($char)

$length:=Length:C16($folder)

  //末尾の１文字取得
$char:=Substring:C12($folder;$length)

If ($char=$separator)
	  //セパレータならそのまま結合
	$outPath:=$folder+$fileName
Else 
	  //セパレータじゃないなら、セパレータを入れて結合
	$outPath:=$folder+$separator+$fileName
End if 

$0:=$outPath
