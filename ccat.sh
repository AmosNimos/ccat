#!/bin/bash

# File: ccat.sh
# Project: ccat
# Description: cat but with color options
# Author: amosnimos

# Load color codes
. colort

# Parse command-line options
. flag
flag "$@"

# Check for help flag
if [[ -n $flag_h ]]; then
    echo "Usage: ./catc2 [OPTIONS] FILE"
    echo "Display the contents of FILE with color."
    echo ""
    echo "Options:"
    echo "  -C COLOR   set the color of the text (red, green, yellow, blue, magenta, or cyan)"
    echo "  -F FILE    display the contents of FILE instead of the default file"
    echo "  -h         display this help message and exit"
    exit 0
fi

# Get color argument
if [[ -n $flag_C ]]; then
    case $flag_C in
        red) color=$Red;;
        green) color=$Green;;
        yellow) color=$Yellow;;
        blue) color=$Blue;;
        magenta) color=$Magenta;;
        cyan) color=$Cyan;;
        *)
            echo "Invalid color argument: $flag_C"
            exit 1
            ;;
    esac
else
    if [[ -n $1 ]]; then
        color=$1
        shift
    else
        echo "Error: no color provided. Try the -C flag."
        exit 1
    fi
fi

# Get file argument
if [[ -n $flag_F ]]; then
    target_file=$flag_F
else
    if [[ -n $1 ]]; then
        target_file=$1
    else
        echo "Error: no file provided. Try using the -F flag."
        exit 1
    fi
fi

# Display file with color
echo -e "${color}"
cat "$target_file"
echo -en "${reset_ansi}"
