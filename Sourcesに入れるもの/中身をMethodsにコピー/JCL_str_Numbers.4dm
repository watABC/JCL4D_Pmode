//%attributes = {"shared":true}
  //JCL_str_GetNumber
  //20130606 yabe
  //文字列から数値だけをとりだす
  //全角は半角に変換する
  //4Dは文字列比較で半角数字と全角数字を同じとみなすようだ
  //4D - ランゲージリファレンス「文字列比較の詳細」には
  //"１"="1"はTRUEを返すと記述があるが、ここでは念のため
  //全角・半角も判定するコードにした

C_TEXT:C284($1;$str)
$str:=$1

C_TEXT:C284($0;$numberStr)
$numberStr:=""

C_LONGINT:C283($i;$length)
$length:=Length:C16($str)

C_TEXT:C284($char)

For ($i;1;$length)
	
	  //i番目の文字を取り出す
	$char:=$str[[$i]]
	
	Case of 
		: ($char="0")
			$numberStr:=$numberStr+"0"
		: ($char="1")
			$numberStr:=$numberStr+"1"
		: ($char="2")
			$numberStr:=$numberStr+"2"
		: ($char="3")
			$numberStr:=$numberStr+"3"
		: ($char="4")
			$numberStr:=$numberStr+"4"
		: ($char="5")
			$numberStr:=$numberStr+"5"
		: ($char="6")
			$numberStr:=$numberStr+"6"
		: ($char="7")
			$numberStr:=$numberStr+"7"
		: ($char="8")
			$numberStr:=$numberStr+"8"
		: ($char="9")
			$numberStr:=$numberStr+"9"
		: ($char="０")
			$numberStr:=$numberStr+"0"
		: ($char="１")
			$numberStr:=$numberStr+"1"
		: ($char="２")
			$numberStr:=$numberStr+"2"
		: ($char="３")
			$numberStr:=$numberStr+"3"
		: ($char="４")
			$numberStr:=$numberStr+"4"
		: ($char="５")
			$numberStr:=$numberStr+"5"
		: ($char="６")
			$numberStr:=$numberStr+"6"
		: ($char="７")
			$numberStr:=$numberStr+"7"
		: ($char="８")
			$numberStr:=$numberStr+"8"
		: ($char="９")
			$numberStr:=$numberStr+"9"
		Else 
			  //数字以外はいらない
	End case 
	
End for 

$0:=$numberStr
