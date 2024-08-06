#!/bin/bash
source ../includes/ezl_imports_scripts.sh


function menu_easycap() {

    print "${BR}${INFO}\tMPlayer Easycap${RESET}${BR}"

    read -a devices <<< "$(mplayer_devices)"
    getChoice -q "seleccionar" -o devices -v "opcion" -t "opcionText"

    call "mplayer/play_easycap" "$opcionText"

}
