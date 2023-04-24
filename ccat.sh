#!/bin/bash

# File: ccat.sh
# Project: ccat
# Description: cat but with color options
# Author: amosnimos

# Define color codes
Red='\033[0;31m'
Green='\033[0;32m'
Yellow='\033[0;33m'
Blue='\033[0;34m'
Magenta='\033[0;35m'
Cyan='\033[0;36m'
reset_ansi='\033[0m'

# Parse command-line options
while getopts ":C:F:h" opt; do
  case $opt in
    C)
      case $OPTARG in
        red) color=$Red;;
        green) color=$Green;;
        yellow) color=$Yellow;;
        blue) color=$Blue;;
        magenta) color=$Magenta;;
        cyan) color=$Cyan;;
        *)
          echo "Invalid color argument: $OPTARG" >&2
          exit 1
          ;;
      esac
      ;;
    F)
      target_file=$OPTARG
      ;;
    h)
      echo "Usage: ./ccat.sh [OPTIONS] FILE"
      echo "Display the contents of FILE with color."
      echo ""
      echo "Options:"
      echo "  -C COLOR   set the color of the text (red, green, yellow, blue, magenta, or cyan)"
      echo "  -F FILE    display the contents of FILE instead of the default file"
      echo "  -h         display this help message and exit"
      exit 0
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

# Shift past the flags
shift $((OPTIND -1))

# Get color argument from positional parameter if not provided with -C
if [[ -z $color && -n $1 ]]; then
  case $1 in
    red) color=$Red;;
    green) color=$Green;;
    yellow) color=$Yellow;;
    blue) color=$Blue;;
    magenta) color=$Magenta;;
    cyan) color=$Cyan;;
    *)
      echo "Invalid color argument: $1" >&2
      exit 1
      ;;
  esac
fi

# Get file argument from positional parameter if not provided with -F
if [[ -z $target_file ]]; then
  target_file=$2
fi

# Check for required arguments
if [[ -z $target_file ]]; then
  echo "Error: no file provided. Try using the -F flag." >&2
  exit 1
fi
if [[ -z $color ]]; then
  echo "Error: no color provided. Try using the -C flag." >&2
  exit 1
fi

# Display file with color
echo -e "${color}"
cat "$target_file"
echo -en "${reset_ansi}"
