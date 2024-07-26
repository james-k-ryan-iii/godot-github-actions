#!/bin/sh

GODOT_VERSION=$1

TEMPLATE_PATH=$HOME/.local/share/godot/export_templates/$GODOT_VERSION.stable/

mkdir -p $TEMPLATE_PATH

cp godot-export-templates/* $TEMPLATE_PATH