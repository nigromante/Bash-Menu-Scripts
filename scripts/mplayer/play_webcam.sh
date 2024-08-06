#!/bin/bash
source ../includes/ezl_imports_scripts.sh

print "${BR}${INFO}\tMPlayer Webcam: ${WARNING}$1${RESET}${BR}"

mplayer_play_webcam "$1"
