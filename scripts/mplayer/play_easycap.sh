#!/bin/bash
source ../includes/ezl_imports_scripts.sh

print "${BR}${INFO}\tMPlayer Easycap: ${WARNING}/$1${RESET}${BR}"

mplayer_play_easycap "$1"
