parse() {
    # parse arguments:
    ARGS=$(getopt -o 'Vxvh' -l 'verbose,debug,version,help' -n "$name" -- $@)

    if [ $? -ne 0 ] || [ $# = 0 ]; then
        usage && exit 1
    fi

    eval set -- "$ARGS"
    unset   ARGS

    while true; do
        case "$1" in
            -h|--help)
                usage "long";
                exit ;;
            -v|--version)
                echo "$name vesion: $version"
                exit ;;
            -V|--verbose)
                verbose="on"
                shift; continue ;;
            -x|--debug)
                debug="on"
                shift; continue ;;
            --)
                shift; break ;;
        esac
    done

    # validate options:
    local -A optionList=([opt.1]=1 [opt.2]=2)

    # without the help of a loop
    if [[ -n ${args[option]} && ! ${optionList[${args[option]}]+true} ]]; then
        echo "Error: invalid"
    fi

    # with the help of a loop
    for key in "${!args[@]}"; do
        if [[ $key == *option && ! "${optionList[${args[$key]}]+true}" ]]; then
            echo "Error: invalid $key input [${args[$key]}]" && error=1
        elif [[ $key == *pattern && ! ${args[$key]} =~ [0-9] ]]; then
            echo "Error: invalid $key input [${args[$key]}]" && error=1
        fi
    done

    # validate arguments:

    ## for multiple arguments (append files=("$@") to the last line)
    for input in "$@"; do
        # insert your validation code here (use ...
        echo
    done
    [[ -z $invalid ]] || echo "Error: invalid input type [${invalid[*]##*/}]" && error=1

    ## for single argument
    if [ "$#" -gt 1 ]; then
        echo "Error: $name does not accept multiple inputs [$*]" && exit 1
    else
        # insert your validation code here (if no alteration is required)
        args['input']="$1"
    fi

    [[ -z $error ]] || exit 1
}
