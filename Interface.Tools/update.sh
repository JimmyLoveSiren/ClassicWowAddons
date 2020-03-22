#!/bin/bash
ROOT=`git rev-parse --show-cdup`
[ $ROOT ] && cd $ROOT

git pull
