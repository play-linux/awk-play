#统计每行重复的次数
{
    arr[$1]++
}
END{
    OFS=" 出现次数:"
    for(key in arr){
        print key,arr[key]
    }
}