#!/bin/bash

# :dependencies:
# :usage:
# :parse:
# :defaults:
# :debugging:
# :functions:

main() {
  # insert your code here
  echo "main code is empty, check script.sh file"
}

declare -A args=()
name="script_name"
version='0.1.0'

parse "$@"
defaults
debugging
main
