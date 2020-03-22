#!/bin/bash
ROOT=`git rev-parse --show-cdup`
[ $ROOT ] && cd $ROOT

if [ ! -d "$1/AddOns" ]; then
	echo "Usage: $0 BigFootInterfaceDirectory"
	exit 1
fi

BIGFOOT_DIR="$1/AddOns"
ADDONS_DIR=Interface/AddOns
POLICY_DIR=Interface.Tools/Policy

cat "$POLICY_DIR/remove.txt" | while read ADDON; do
	ADDON=`echo $ADDON | tr -d '\r\n'`
	SRC_DIR="$BIGFOOT_DIR/$ADDON"
	if [ -d "$SRC_DIR" ]; then
		echo remove "$ADDON"
		rm -rf "$SRC_DIR"
	fi
done

cat "$POLICY_DIR/sync.txt" | while read ADDON; do
	ADDON=`echo $ADDON | tr -d '\r\n'`
	SRC_DIR="$BIGFOOT_DIR/$ADDON"
	if [ -d "$SRC_DIR" ]; then
		echo sync "$ADDON"
		DST_DIR="$ADDONS_DIR/$ADDON"
		if [ -d "$DST_DIR" ]; then
			rm -rf "$DST_DIR"
		fi
		mv "$SRC_DIR" "$DST_DIR"
	fi
done
