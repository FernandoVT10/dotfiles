#!/bin/bash
ROFI_DIR=$HOME/.config/rofi

echo -en "\0prompt\x1fSearch\n"

if [ ! -z "$@" ]; then
  $ROFI_DIR/scripts/web-search.py "$@"
  exit;
fi
