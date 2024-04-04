usage() {
    printf "%s - product photos marking tool\n" "$name"
    printf "Usage: %s [OPTIONS] [TARGET]\n" "$name"
    echo
    if [[ -n $1 ]]; then
        printf "Options:\n"
        printf "  -a, --argument        description\n"
        printf "  -h, --help            Show this help message\n"
        printf "  -v, --version         Display the current version\n"
        echo
        printf "Additional Options:\n"
        printf "  --options             description (default: value)\n"
        echo
    else
        printf "Try \`%s --help\` for more options.\n" "$name"
    fi
}
