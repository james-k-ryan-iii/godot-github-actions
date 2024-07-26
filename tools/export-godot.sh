#!/bin/bash

CONFIGURATION=$1
REWRITE_INDEX_HTML=$2

RELEASE_DIR=./release
ARCHIVE_NAME=./godot-export.zip

mkdir -p $RELEASE_DIR
./godot --headless --export-release $CONFIGURATION $RELEASE_DIR/godot-release

HTML_FILE=$RELEASE_DIR/godot-release.html
if [ -e $HTML_FILE ] && [ $REWRITE_INDEX_HTML ] ; then
  mv $RELEASE_DIR/godot-release $RELEASE_DIR/index.html
fi

zip -q -r -j $ARCHIVE_NAME $RELEASE_DIR

echo "export-archive=$ARCHIVE_NAME" >> $GITHUB_OUTPUT