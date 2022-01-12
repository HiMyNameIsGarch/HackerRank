LIST=$(cat -)                  
P="$(echo "$LIST" | head -n 1)"
M="$(echo "$LIST" | sed '1d')" 
M=$(echo $M | sed 's/\s/ + /g')
M=$(( $M ))
AVG="$(echo "$M / $P" | bc -l)"     
printf '%0.3f' "$AVG"
