BEGIN{
	RS="" #以空行进行分割
} 

!/lo/{ #不匹配lo
	print $1,$6
}
