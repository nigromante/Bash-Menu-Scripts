#!/bin/bash


function menu_mplayer() {

    title "Menu Mplayer"
    
    local items=("Lista Dispositivos" "Video 0" "Video 1" "Video 2" "Video 3" "Video 4" )

    select item in "${items[@]}" Volver
    do
        case $REPLY in
            1) call "mplayer/list" ;; 
            2) call "mplayer/video" "video0" ;; 
            3) call "mplayer/video" "video1" ;; 
            4) call "mplayer/video" "video2" ;; 
            5) call "mplayer/video" "video3" ;; 
            6) call "mplayer/video" "video4" ;; 
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

