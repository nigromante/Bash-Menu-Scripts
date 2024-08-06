#!/bin/bash
source ../includes/ezl_imports_scripts.sh


function menu_webcam() {

    print "${BR}${INFO}\tMPlayer Webcam${RESET}${BR}"

    read -a devices <<< "$(mplayer_devices)"

    select item in "${devices[@]}" Cancelar
    do
        case $REPLY in
            $((${#devices[@]}+1))) 
                return ;;
            *)
                call "mplayer/play_webcam" "$item"
        esac
    done   

}
