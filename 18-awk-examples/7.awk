#统计tcp连接状态  ss -nta > 7.txt
NR>1{
    arr[$1]++
}

END{
    for(key in arr){
        print key,arr[key]
    }
}