#!/bin/sh

GODOT_VERSION=$1
OUTPUT_FOLDER=$2

GODOT_BIN_NAME=Godot_v$GODOT_VERSION-stable_linux.x86_64

wget -q -O godot.zip "https://downloads.tuxfamily.org/godotengine/$GODOT_VERSION/$GODOT_BIN_NAME.zip"
unzip -qq godot.zip
rm godot.zip

mkdir -p $OUTPUT_FOLDER
mv $GODOT_BIN_NAME $OUTPUT_FOLDER/godot
chmod a+x $OUTPUT_FOLDER/godot
