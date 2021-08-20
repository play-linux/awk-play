#!/bin/awk

#-------四大分割 FS RS OFS ORS ----------

#FS和-F功能一样 指定列的分割符号 默认是空格 
#OFS则指定print输出的分割符 默认是\t
#RS指定每次处理的分割符 默认是\n 每行处理一次
#ORS指定print输出的分割符号 默认是\n
BEGIN	{
    FS="-"
    OFS="="
    RS="$"
    ORS="@"
}
{
    print $1,$NF
}

