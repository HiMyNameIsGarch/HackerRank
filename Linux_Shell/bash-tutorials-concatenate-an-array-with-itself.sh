mapfile -t countries

for i in {1..3}; do
    for c in "${countries[@]}"; do
        printf '%s ' "$c"
    done
done
