#!/bin/awk

#-------数组 map----------
#参考文章 https://www.junmajinlong.com/shell/awk/awk_array/

BEGIN	{
    arr[0]=1
    arr[1]=1
    arr[2]=1
    arr["name"]="lyer"
    arr["age"]=18
    
    delete arr[1] #删除
    print length(arr) #数组长度
    
    #注意遍历的时候是无序的 内部都是map
    for(k in arr){
        print k,arr[k]
    }

    #检测元素是否在数组里面
    if("name" in arr){
        print "name is in arr" 
    }else{
        print "name is not in arr" 
    }


    #PROCINFO["sorted_in"]指定遍历数组的顺序
    #@ind_num_asc/desc 数值方式升序/降序
    #@ind_str_asc/desc 字符串方式升序/降序
    delete arr #删除数组
    arr[0]="zero"
    arr[1]="one"
    arr[2]="two"
    arr[3]="three"
    arr[4]="four"
    PROCINFO["sorted_in"]="@ind_num_desc"
    for(k in arr){
        print k,arr[k]
    }
}