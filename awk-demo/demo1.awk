#!/bin/awk

#------print printf打印展示---------
BEGIN{
    print "a","b","c" #print默认带换行符 默认以\t分割每个逗号之间的值
    print "a" "b" "c" #abc 不分割输出

    printf "%16s %16s\n","hello","world" #右对齐 不足的补空格
    printf "%-16s %-16s\n","hello","world" #左对齐 不足的补空格
    printf "%s %s\n","lyer",19 # %s也可直接将数字转化为字符串
    
    s = sprintf("hello,%s\n","lyer"); #返回格式化的字符串
    printf s
}