#!/bin/bash


function menu_mplayer() {

    title "Menu Mplayer"
    
    local items=("Lista Dispositivos" "Webcam" "Easycap" )

    select item in "${items[@]}" Volver
    do
        case $REPLY in
            1) call "mplayer/list" ;; 
            2) menu_webcam ;; 
            3) menu_easycap ;; 
            $((${#items[@]}+1))) 
                header
                return ;;
            *) 
                header
                title "Menu Mplayer"
                index=1 ; for i in "${items[@]}"; do echo -e "${index}) $i"; let index=${index}+1 ; done
                echo -e "${index}) Salir"
        esac


    done   
}

