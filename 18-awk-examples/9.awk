#行列转化
{
    for(i=1;i<=NF;i++){
        if(!(i in arr)){
            arr[i] = $i
        }else{
            arr[i] = arr[i]" "$i
        }
    }
}
END{
    for(key in arr){
        print arr[key]
    }
}