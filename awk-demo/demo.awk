#!/bin/awk

#-----begin {} end-----

#1.处理开始会先执行begin{}的代码 
#2.每行都会执行{}内的代码
#3.最后会执行一边end{}的代码


BEGIN{
    english_sum=0
    chinese_sum=0
    math_sum=0
    people_sum=0
}
{
    if(NR>2){
        names[$1]=$2+$3+$4
        english_sum+=$2
        chinese_sum+=$3
        math_sum+=$4
    }
}
END{
    for(k in names){
        print k,"总分:",names[k]
    }
    print "------------------------------"
    print "english平均分:",english_sum/(NR-2)
    print "chinese平均分:",chinese_sum/(NR-2)
    print "math平均分:",math_sum/(NR-2)
}