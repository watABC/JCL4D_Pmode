//%attributes = {"shared":true}
  //JCL_lst_GetSelected_Real
  //20130130 wat
  //汎用メソッド。 リストボックスの行選択を取得して、
  //連結されている Real の配列から、最初の選択行のバリューを返す

C_POINTER:C301($1;$inListBoxPtr)
$inListBoxPtr:=$1  //リストボックスのブーリアン配列
C_POINTER:C301($2;$inDataAryPtr)
$inDataAryPtr:=$2  // real データ配列のポインタ
C_REAL:C285($0;$realValue)  //リアルのリターンバリュー
$realValue:=0
C_LONGINT:C283($foundRow)

  //リストボックスの最初に見つかった選択されている行番号を得る
$foundRow:=JCL_lst_Selected_firstRow ($inListBoxPtr)

  //配列の値を返す
If ($foundRow#0)
	$realValue:=$inDataAryPtr->{$foundRow}
End if 
$0:=$realValue
