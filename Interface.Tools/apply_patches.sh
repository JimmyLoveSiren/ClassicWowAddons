#!/bin/bash
ROOT=`git rev-parse --show-cdup`
[ $ROOT ] && cd $ROOT

PATCH_DIR=Interface.Tools/Patches
ls $PATCH_DIR | xargs -I{} git apply -3 --whitespace=nowarn "$@" $PATCH_DIR/{}
