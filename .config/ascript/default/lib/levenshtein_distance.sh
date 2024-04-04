levenshtein_distance() {
# Function to compute the Levenshtein distance between two strings

    # Function to compute the minimum of three numbers
    min() {
        if [ "$1" -le "$2" ] && [ "$1" -le "$3" ]; then
            echo "$1"
        elif [ "$2" -le "$1" ] && [ "$2" -le "$3" ]; then
            echo "$2"
        else
            echo "$3"
        fi
    }

    declare s1="$1"
    declare s2="$2"
    declare len_s1=${#s1}
    declare len_s2=${#s2}
    declare -A d

    # initialize the distance matrix
    for ((i=0; i<=len_s1; i++)); do
        d[$i,0]=$i
    done
    for ((j=0; j<=len_s2; j++)); do
        d[0,$j]=$j
    done

        # Compute the distance matrix
        for (( j = 1; j <= len_s2; j++ )); do
            for (( i = 1; i <= len_s1; i++ )); do
                if [ "${s1:i-1:1}" = "${s2:j-1:1}" ]; then
                    d[$i,$j]=${d[$((i-1)),$((j-1))]}
                else
                    d[$i,$j]=$(($(min "${d[$((i-1)),$j]}" "${d[$i,$((j-1))]}" "${d[$((i-1)),$((j-1))]}" ) + 1))
                fi
            done
        done

        # Return the Levenshtein distance
        echo "${d[$len_s1,$len_s2]}"
}
