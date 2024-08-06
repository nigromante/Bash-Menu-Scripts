#!/bin/bash
source ../includes/ezl_imports_scripts.sh


function menu_droidcam() {

    print "${BR}${INFO}\tMPlayer DroidCam${RESET}${BR}"

    read -a devices <<< "$(mplayer_devices)"
    getChoice -q "seleccionar" -o devices -v "opcion" -t "opcionText"

    call "mplayer/play_droidcam" "$opcionText"

}
