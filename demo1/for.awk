BEGIN {
	count=10
	while(count>0){
		m=sprintf("count:%d",count)
		arr[m]="OK"
		count--	
	}

	for(item in arr){
		print item,arr[item]
	}
	print "----------------------------"
	for(i=0;i<10;i++){
		print i
	}
}
