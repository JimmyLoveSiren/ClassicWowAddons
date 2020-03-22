#!/bin/bash
ROOT=`git rev-parse --show-cdup`
[ $ROOT ] && cd $ROOT

FONT="Fonts/${1:-fzcy}.ttf"
FONT_DIR=../Fonts
mkdir -p "$FONT_DIR"
cp "$FONT" "$FONT_DIR/ARHei.TTF"
cp "$FONT" "$FONT_DIR/ARIALN.TTF"
cp "$FONT" "$FONT_DIR/ARKai_C.TTF"
cp "$FONT" "$FONT_DIR/ARKai_T.TTF"
cp "$FONT" "$FONT_DIR/FRIZQT__.TTF"
