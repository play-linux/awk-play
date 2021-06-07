#解析init配置文件中的某段
BEGIN {
    RS="" #以空行为分割符号
}

#正则匹配需要读取的属性
/\[base\]/{
    print $0
    print "--------------------"
    for(i=2;i<=NF;i++){ #默认以空格 \t 或则回车分割
        split($i,parts,"=") #分割$i列
        print parts[1],"->",parts[2] #从1开始计数
    }
}