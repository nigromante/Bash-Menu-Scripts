#!/bin/bash
source ../includes/ezl_imports_scripts.sh


function menu_webcam() {

    print "${BR}${INFO}\tMPlayer Webcam${RESET}${BR}"


    read -a devices <<< "$(mplayer_devices)"
    getChoice -q "seleccionar" -o devices -v "opcion" -t "opcionText"

    call "mplayer/play_webcam" "$opcionText"
}
