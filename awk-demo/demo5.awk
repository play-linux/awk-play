#!/bin/bash

#-----字符串-----

BEGIN	{
    s = "hello,world"
    
    #length substr sub
    print "\""s"\"","length:" length(s)
    print substr(s,1,3),substr(s,7) #1开始提取3个 如果只填一个则会截取到最后
    print sub("world","lyer",s),s #替换world为lyer返回替换个数 直接会修改原字符串

    #toupper tolower
    print tolower(s),toupper(s)

    #match匹配 可以输入正则
    if(match(s,"h*")){
        print "match"
    }else{
        print "not match"
    }


}