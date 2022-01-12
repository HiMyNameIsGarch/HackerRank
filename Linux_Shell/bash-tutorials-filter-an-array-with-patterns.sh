mapfile -t countries

for c in "${countries[@]}"; do
    case "$c" in
        *a* | *A*) ;;
        *) printf '%s ' "$c" ;;
    esac
done
