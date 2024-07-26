#!/bin/sh

GODOT_VERSION=$1
OUTPUT_FOLDER=$2

EXPORT_TEMPLATES_ARCHIVE=Godot_v$GODOT_VERSION-stable_export_templates.tpz

wget -q -O export_templates.zip "https://github.com/godotengine/godot/releases/download/$GODOT_VERSION-stable/$EXPORT_TEMPLATES_ARCHIVE"
unzip -qq export_templates.zip 
rm export_templates.zip

mv templates godot-export-templates
