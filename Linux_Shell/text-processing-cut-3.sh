OUTPUT="$(cat -)"

for l in "$OUTPUT"; do
    echo "$l" | cut -b 2-7
done
