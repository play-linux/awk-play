BEGIN{
	count=0
}

{
	print $0
	print "----------------------"
}
{
	if(NR>1){
		count++
	}
}

END {
	print "=================================="
	printf "total:%d\n",count
}
