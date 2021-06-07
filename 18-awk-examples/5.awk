#根据某字段去重
BEGIN{
    FS="?"
}
{
    if(!arr[$2]++){
        print $0
    }
}