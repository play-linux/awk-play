#打印非lo的网卡信息
BEGIN{
	RS="" #以空行进行分割
} 

!/lo/{ #不匹配lo
	print $1,$6
}
