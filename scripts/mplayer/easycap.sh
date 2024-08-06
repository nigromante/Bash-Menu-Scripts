#!/bin/bash
source ../includes/ezl_imports_scripts.sh

print "${BR}${INFO}\tMPlayer: ${WARNING}/dev/$1${RESET}${BR}"


mplayer tv:// -tv driver=v4l2:width=720:height=480:outfmt=uyvy:norm=NTSC-M:device=/dev/$1:input=0:fps=25 -vo sdl -nosound