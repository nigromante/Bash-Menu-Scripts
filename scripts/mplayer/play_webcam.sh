#!/bin/bash
source ../includes/ezl_imports_scripts.sh

print "${BR}${INFO}\tMPlayer Webcam: ${WARNING}$1${RESET}${BR}"


mplayer tv:// -tv driver=v4l2:width=640:height=360:device=$1:fps=60:outfmt=yuy2  -msglevel all=-1  
