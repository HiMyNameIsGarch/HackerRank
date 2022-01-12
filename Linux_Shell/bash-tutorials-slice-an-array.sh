mapfile -t array

for n in {3..7}; do
    printf '%s ' "${array[$n]}"
done
