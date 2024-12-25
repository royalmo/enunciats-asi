#!/bin/bash

set -e

echo "Checking docker image..."
if [ $(docker image ls | grep -c "royalmo/itic_latex_runner") -lt 1 ]; then
    echo "Docker image not found, building it..."
    docker build -t royalmo/itic_latex_runner .
    # Uncomment the next line if you want to pull the image instead of building it
    # docker pull royalmo/itic_latex_runner
fi

# Determine the files to process
if [ -z "$1" ]; then
    echo "Building all files from source directory."
    files_to_extract=$(ls src | grep "\.tex" | sed 's/\.tex//g')
else
    files_to_extract=$1
fi

mkdir -p build

# Process each file
for line in $files_to_extract; do
    echo "Processing file: $line.tex"
    docker run --rm \
        -e MAIN_TEX="$line" \
        -v "$(pwd)/build:/output" \
        -v "$(pwd)/src:/input" \
        royalmo/itic_latex_runner
done

echo "Build complete."
