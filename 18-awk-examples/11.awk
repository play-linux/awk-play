#访问IP 和路径的次数
{
    arr1[$1]++
    arr2[$1"-"$2]++ 
}

END{
    for(i in arr2){
        split(i,parts,"-")
        #每个IP访问每个路径的次数
        print parts[1],parts[2],arr2[i]
    }
    print "------------------------"
    for(i in arr1){
        #每个IP的总访问次数
        print i,arr1[i] 
    }
}