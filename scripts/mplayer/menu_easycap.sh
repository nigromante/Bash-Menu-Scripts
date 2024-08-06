#!/bin/bash
source ../includes/ezl_imports_scripts.sh


function menu_easycap() {

    print "${BR}${INFO}\tMPlayer Easycap${RESET}${BR}"

    read -a devices <<< "$(mplayer_devices)"

    select item in "${devices[@]}" Cancelar
    do
        case $REPLY in
            $((${#devices[@]}+1))) 
                return ;;
            *)
                call "mplayer/play_easycap" "$item"
        esac
    done   

}
