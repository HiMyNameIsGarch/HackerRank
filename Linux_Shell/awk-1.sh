awk '!length($4) {printf("Not all scores are available for %s\n", $1)}'
