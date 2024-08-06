#!/bin/bash
source ../includes/ezl_imports_scripts.sh


function menu_webcam() {

    print "${BR}${INFO}\tMPlayer Webcam${RESET}${BR}"

    data=$(v4l2-ctl --list-devices | grep "/dev" | grep -v "/media" | awk '{printf "%s",$0} END {print ""}' )

    itemsx=()
    read -a itemsx <<< "$data"


    select item in "${itemsx[@]}" Cancelar
    do
        case $REPLY in
            $((${#itemsx[@]}+1))) 
                return ;;
            *)
                call "mplayer/play_webcam" "$item"
        esac
    done   

}
