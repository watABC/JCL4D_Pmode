//%attributes = {"shared":true}
  //JCL_lst_SetSelect_byLong
  //20100623 wat new
  //リストボックスの行を選択する。汎用メソッド
  //リストボックスに連結されているロングの配列をキーにする
  //20100629 wat mod 行番号を返すように変更

C_POINTER:C301($1;$inListBoxPtr)
$inListBoxPtr:=$1  //リストボックスのブーリアン配列
C_POINTER:C301($2;$inLongDataAryPtr)
$inLongDataAryPtr:=$2  //ロングデータ配列のポインタ
C_LONGINT:C283($3;$keyValue)
$keyValue:=$3  //ロングのキーバリュー
C_LONGINT:C283($0;$row_number)
C_LONGINT:C283($index)

$index:=Find in array:C230($inLongDataAryPtr->;$keyValue)
If ($index#-1)
	  //要素がみつかったら
	JCL_lst_SetSelect_byRow ($inListBoxPtr;$index)
	$row_number:=$index
	
Else 
	  //みつからなかったらデセレクト
	JCL_lst_Deselect ($inListBoxPtr)
	$row_number:=0
	
End if 

$0:=$row_number
