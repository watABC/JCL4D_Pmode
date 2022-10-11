//%attributes = {}
  //JCL_01_btnUseColor
  //20210607 wat
  //別の色を使う

vJCL_D01_objFrm.color_text:=vJCL_D01_varColorText

C_TEXT:C284($color_txt)
$color_txt:=vJCL_D01_objFrm.color_text

OBJECT SET RGB COLORS:C628(*;"vJCL_D01_rectTitle";vJCL_D01_varColorText;vJCL_D01_varColorText)

