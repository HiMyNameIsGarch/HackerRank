read -r depth
declare -A matrix
C="1"
S="_"
rows=63
columns=100

# Fill with empty spaces the matrix
for ((i = 0; i < rows; i++)) do
    for ((j = 0; j < columns; j++)) do
            matrix[$i,$j]="$S"
    done
done
                
function branch() {
    local currentdepth="$5"
    if [ "$currentdepth" == "0" ]; then return; fi
    if [ "$3" != "0" ]; then
        local length="$2"
        currentdepth="$(( $currentdepth - 1 ))"
    else
        local length="$(( $2 / 2 ))"
    fi
    local currentRow="$4"
    local columnposition="$1"
    # Build trunk
    for (( i = currentRow; i < currentRow + length; i++)) do
        columnposition="$(( $columnposition + $3 ))"
        matrix[$i,$columnposition]="$C"
    done
    currentRow="$(( $currentRow + $length ))"
    if [ "$3" != "0" ]; then
        # Go up
        branch "$columnposition" "$length" "0" "$currentRow" "$currentdepth"
    else
        # Go right
        branch "$columnposition" "$length" "1" "$currentRow" "$currentdepth"
        # Go left
        branch "$columnposition" "$length" "-1" "$currentRow" "$currentdepth"
    fi
}

# Let the show begin
branch "$(( $columns / 2 ))" "32" "0" "0" "$depth"

# Display final matrix
for ((i = rows - 1; i >= 0; i--)) do
    for ((j = columns - 1; j >= 0; j--)) do
        printf "%s" "${matrix[$i,$j]}"
    done
    printf "\n"
done
