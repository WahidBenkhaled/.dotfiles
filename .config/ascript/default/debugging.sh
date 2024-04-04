debugging() {
    [[ -n $debug ]] || return 0
    printf "\naget arguments: %s\n" "${args[@]}"
    printf "\nParameters and Patterns:\n"
    printf "  %-16s %s\n" "getMain" "${option-off}"
    printf "  %-16s %s\n" "verbose" "${verbose-off}"
    printf "\nParameters and Patterns:\n"
    for key in "${!args[@]}"; do printf "  %-16s %s\n" "$key" "${args[$key]}"; done
    echo

    read -rp "Do you want to continue? [Y/n]: " response
    [[ -n $response && $response != "y" ]] || return 0
    echo "Abort." ; exit 0
}
