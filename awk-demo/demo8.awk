#!/bin/bash

#------正则匹配 条件过滤--------


#1.打印奇数行
NR%2{
    print NR,"->",$0
    print "============"
}
NR%2{

}


#2.正则匹配符合条件的行 //中间写正则

#输出有LISTEN的行
/LISTEN/{
    print
}
#反向匹配
!/7890/{
    print
}

#只在某个列上匹配
/$6 ~ /FIN|TIME/ || NR==1{
    print $6
}
