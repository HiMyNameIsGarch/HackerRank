mapfile -t countries

for c in "${countries[@]}"; do
    country="$(echo $c | sed -r 's/^[A-Z]?/./g')"
    printf '%s ' "$country"
done
