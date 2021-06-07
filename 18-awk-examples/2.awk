#删除每行开头的空白元素
{
	$1=$1
	if(NR==1){
		print $0 > "2.txt"
	}else{
		print $0 >> "2.txt"
	}
}
