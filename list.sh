#!/bin/bash

SRC_DIR="plasma-workspace-wallpapers"
DST_DIR="list"

mkdir -p "$DST_DIR"

find "$SRC_DIR" -type f -path "*/contents/*/*" | while read src; do
    # Example: $SRC_DIR/Altai/contents/images/5120x2880.png
    # Altai
    name=$(echo "$src" | awk -F'/' '{print $2}')
    # 5120x2880.png
    res=$(basename "$src")

    # images
    mode=$(echo "$src" | awk -F'/' '{print $4}')
    # Sometimes the wallpaper has dark variant
    if [ $mode == "images_dark" ]; then
        name+="-dark"
    fi
    
    # $DST_DIR/Altai-5120x2880.png
    dst="$DST_DIR/${name}-${res}"
    cp "$src" "$dst"
done