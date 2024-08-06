#!/bin/bash
source ../includes/ezl_imports_scripts.sh

devices=() ; read -a devices <<< $(mplayer_devices)

print "${BR}${INFO}\tDispositivos detectados${BR}"
for device in "${devices[@]}" 
do 
    print "${TAB}${WARNING}${device}" 
done
print "${RESET}${BRx2}" 

