BEGIN {
	username="lyer"
	age=18
	OFS="-"
	print "hello,","world"
	print "I'm",username,age
	print "a","b","c"
}
# -16 不足的往右边填空格
# 16 不足的往左边填空格
{
	#printf "%-16s %-16s %-16s\n",$1,$2,$3
	printf "%16s %16s %16s\n",$1,$2,$3
}

END{
	a = sprintf("%16s %16s","hello","world")
	print a
}
