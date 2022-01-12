cat - | awk '{ 
    if((($2 + $3 + $4) / 3) >= 50) 
        printf("%s : %s\n", $1, "Pass"); 
    else 
        printf("%s : %s\n", $1, "Fail");
}'

