#!/bin/sh

# Usage: ./run_heys.sh <input_file> <output_file> [<key_file>]

# Check if at least two arguments are provided
if [ $# -lt 2 ]; then
    echo "Usage: ./run_heys.sh <input_file> <output_file> [<key_file>]"
    exit 1
fi

# Extract the input arguments
input_file="$1"
output_file="$2"
key_file="$3"

# Check if key_file is not provided
if [ -z "$key_file" ]; then
    # Execute the heys.bin command without key_file
    ./heys.bin e 07 "$input_file" "$output_file"
else
    # Execute the heys.bin command with key_file
    ./heys.bin e 07 "$input_file" "$output_file" "$key_file"
fi

# Press Enter
echo -e "\n"

