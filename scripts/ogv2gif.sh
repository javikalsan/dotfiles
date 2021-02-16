#!/bin/bash

FILE=$1
FILE_EXTENSION=$(echo $FILE | tail -c 4 | tr '[:upper:]' '[:lower:]')
FPS=15
WIDTH=480
OUTPUT_FILENAME=$(echo $FILE | sed 's/ogv/gif/g')


display_help() {
   echo "Convert a ogv video format to gif image format"
   echo
   echo "ogv2gif /path/to/ogv/file"
   echo
}


if [ $# -eq 0 ]; then
    display_help
    exit 1
fi

if [ $FILE_EXTENSION != "ogv" ]; then
    echo "Format not supported"
    echo
    display_help
    exit 1
fi

# Generate palette for better quality
ffmpeg -i $FILE -vf fps=$FPS,scale=$WIDTH:-1:flags=lanczos,palettegen tmp_palette.png

# Generate gif using palette
ffmpeg -i $FILE -i tmp_palette.png -loop 0 -filter_complex "fps=$FPS,scale=$WIDTH:-1:flags=lanczos[x];[x][1:v]paletteuse" $OUTPUT_FILENAME

rm tmp_palette.png
