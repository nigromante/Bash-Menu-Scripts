#!/bin/bash
source ../includes/ezl_imports_scripts.sh


function menu_easycap() {

    print "${BR}${INFO}\tMPlayer Easycap${RESET}${BR}"

    data=$(v4l2-ctl --list-devices | grep "/dev" | grep -v "/media" | awk '{printf "%s",$0} END {print ""}' )

    itemsx=()
    read -a itemsx <<< "$data"


    select item in "${itemsx[@]}" Cancelar
    do
        case $REPLY in
            $((${#itemsx[@]}+1))) 
                return ;;
            *)
                call "mplayer/play_easycap" "$item"
        esac
    done   

}
