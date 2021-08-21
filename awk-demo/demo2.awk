#!/bin/awk

#------变量和内部变量-----------

BEGIN	{
    username="hello"
}

{
    print NR,NF #NR表示当前是第几行 NF表示当前行被切割之后的总列数
    print $0 #$0表示当前行
    print $1,$2,$3 #分别表示第n列
    print $(NF-1) #打印倒数第2列
    print "第" NR "行的长度是:" length #打印每行的长度
}

#1. 打印最后一行的方法 FNR是这个文件最大行数
FNR==NR{
    print "------------------"
    print $0
    print "------------------"
}
END{
    print "------------------"
    print $0
    print "------------------"
}

#2. 环境变量
END{
    print ENVIRON["PWD"]
    print FILENAME #被处理的文件名

}