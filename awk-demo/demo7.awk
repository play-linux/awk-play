#!/bin/awk

#-------函数----------

function hello() {
    print "hello,world"
}

function hello_name(name) {
    printf("hello,%s\n",name)
}

function add(v1,v2) {
    return v1+v2
}

BEGIN	{
    hello() #无参函数
    hello_name("lyer")
    v3=add(1,2)
    print v3
}