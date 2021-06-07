# awk -f 10.awk 8.txt
# 对时间的处理  闪现指定范围内的数据
{
    s = substr($4,2)
    # print s
    split(s,parts,"/")
    year = substr(parts[3],1,4)
    month = parts[2]
    day = parts[1]
    time = substr(parts[3],6)
    if(month=="Jan"){
        month = "01"
    }
    else if(month=="Feb"){
        month = "02"
    }
    else if(month=="Mar"){
        month = "03"
    }
    else if(month=="Apr"){
        month = "04"
    }
    else if(month=="May"){
        month = "05"
    }
    else if(month=="June"){
        month = "06"
    }
    else if(month=="July"){
        month = "07"
    }else if(month=="Aug"){
        month = "08"
    }else if(month=="Sep"){
        month = "09"
    }else if(month=="Oct"){
        month = "10"
    }else if(month=="Nov"){
        month = "11"
    }else if(month=="Dec"){
        month = "12"
    }

    split(time,time_parts,":")
    hour = time_parts[1]
    minutes = time_parts[2]
    seconds = time_parts[3]
    timestamp = mktime(sprintf("%d %d %d %d %d %d",year,month,day,hour,minutes,seconds))

    times[NR] = timestamp
    rows[NR"-"timestamp] = $0 #保存记录
}

END{
    start = mktime("2021 02 05 00 00 00") # 2021-02-05 00
    end = mktime("2021 05 25 00 00 00") # 2021-05-25 00
    for(i=1;i<=NR;i++){
        if (times[i]>=start && times[i]<=end){
            print times[i]
            print rows[i"-"times[i]]
        }
    }
}