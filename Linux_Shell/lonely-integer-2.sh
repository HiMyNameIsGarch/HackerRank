mapfile -t array

array=( ${array[1]} )

num="${#array[@]}"
for e in "${array[@]}"; do
    count=0
    for (( i=0; i < ${num}; i++ )); do
       if [ "$e" == "${array[$i]}" ]; then
            count="$(( $count + 1))"
       fi
    done
    if [ "$count" == 1 ]; then
        final="$final $e"
    fi
done
echo $final
