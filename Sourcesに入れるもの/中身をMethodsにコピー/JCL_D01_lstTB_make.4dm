//%attributes = {}
//JCL_D01_lstTB_make
//20220425 hisa wat
//カラーテーブル

C_TEXT:C284($rec_name)
ARRAY TEXT:C222($aryTblNames; 0)
C_LONGINT:C283($sizeOfAry; $i)
C_LONGINT:C283($color)
C_LONGINT:C283($tblNr)
C_POINTER:C301($tblPtr)

//すべてのテーブル
JCL_tbl_Names_fromStructure(->$aryTblNames)

COPY ARRAY:C226($aryTblNames; vD01_lstTB_NAME)

$sizeOfAry:=Size of array:C274(vD01_lstTB_NAME)
ARRAY LONGINT:C221(vD01_lstTB_Nr; $sizeOfAry)
ARRAY LONGINT:C221(vD01_lstTB_COLOR; $sizeOfAry)
For ($i; 1; $sizeOfAry)
	//配列を追加
	vD01_lstTB_Nr{$i}:=$i
	$color:=0
	
	$table_name:=vD01_lstTB_NAME{$i}
	
	//プレフィックス
	$tbl_prefix:=JCL_tbl_GetPrefix_fromStructure($table_name)
	
	//ex: vFO01_rectTitleのような名前のフォームオブジェクト
	$rec_name:="v"+$tbl_prefix+"01_rectTitle"
	$frmPrefix:=$tbl_prefix+"01"
	$form_name:=$frmPrefix+"_List"
	$tblNr:=JCL_tbl_GetNumber($table_name)
	$tblPtr:=Table:C252($tblNr)
	
	//JCL_frm_isExist($frmPrefix)
	//JCL_frm_isExist($frmPrefix; $objName)
	$exist:=JCL_frm_isExist($tblPtr; $form_name)
	If ($exist=True:C214)
		FORM LOAD:C1103($tblPtr->; $form_name)
		OBJECT GET RGB COLORS:C1074(*; $rec_name; $color)
		FORM UNLOAD:C1299
		
		LISTBOX SET ROW COLOR:C1270(*; "vD01_lstTB_COLOR"; $i; $color; lk background color:K53:25)
	End if 
	vD01_lstTB_COLOR{$i}:=$color
	
End for 
