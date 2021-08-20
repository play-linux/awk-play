#!/bin/bash

#-------循环、分支、三目运算-------------

BEGIN	{
    count=0
    while(count<3){
        print count
        count++
    }
    for(i=0;i<3;i++){
        print i
    }

    if(count%2){
        print count"是偶数"
    }else{
        print count"是奇数"
    }

    if(1){

    }else if(1){

    }else{}

    score=87
    msg = score>=60?"及格":"不及格"
    print score msg

    sex = "F"
    switch (sex) {
    case "F":
        print "女"
        break
    case "M":
        print "男"
        break
    default:
        print "其他"
    }

}