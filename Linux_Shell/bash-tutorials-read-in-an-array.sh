array="$(cat -)"
for str in ${array[@]}; do
  printf '%s ' "$str"
done
