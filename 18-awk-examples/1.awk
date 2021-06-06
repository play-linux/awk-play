#在”a b c d”的b后面插入3个字段e f g
{
	$3=sprintf("e f g %s",$3)
	print $0 > "1.txt"
}
