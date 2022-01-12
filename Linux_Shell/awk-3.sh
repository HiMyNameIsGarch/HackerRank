cat - | awk '{
    AVG=($2 + $3 + $4) / 3
    STATUS=" "
    if ( AVG >= 80 )
        STATUS = "A"
    else if ( AVG >= 60 )
        STATUS = "B"
    else if ( AVG >= 50 && AVG < 60)
        STATUS = "C"
    else 
        STATUS = "FAIL"
    
    printf("%s : %s\n", $0, STATUS)
}'
