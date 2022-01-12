OUTPUT="$(cat -)"

for l in "$OUTPUT"; do
    echo "$l" | cut -b 3
done
