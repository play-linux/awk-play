BEGIN {
	for(i=0;i<10;i++){
		arr[i]=sprintf("hello,world-%d",i)
	}
	print "length:",length(arr)
	for(i=0;i<length(arr);i++){
		print arr[i]
	}
	print "-------------------------"
	for(item in arr){
		print item,arr[item]
	}
	if(0 in arr)
		print "OK"
}
