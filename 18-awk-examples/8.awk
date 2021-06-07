#统计nginx日志状态码以及对应的次数、方法以及对应的次数、路径对应的次数、独立IP、PV、UV
{
    methods[$6]++
    codes[$9]++
    paths[$7]++
    ips[$1]++
}

END{
    for(method in methods){
        print substr(method, 2),methods[method]
    }
    print "---------------"
    for(code in codes){
        print code,codes[code]
    }
    print "---------------"
    for(path in paths){
        #因为path太长 这里截断，1位置开始长度为10
        print substr(path,1,10),paths[path]
    }
    print "---------------"
    for(ip in ips){
        print ip,ips[ip]
    }
}