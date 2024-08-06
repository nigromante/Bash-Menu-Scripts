#!/bin/bash

function menu_main() {

    title "Menu Principal"

    local items=("Sistema" "MPlayer" "Info" "Scripts"  "Colors" "Choice")

    select item in "${items[@]}" Salir
    do
        case $REPLY in
            1) menu_system ;;
            2) menu_mplayer ;;
            3) call "info" ;;
            4) call "list" ;;
            5) call "colors" ;;
            6) call "choice" ;;
            $((${#items[@]}+1))) 
                header
                return;;
            *) 
                header
                title "Menu Principal"
                index=1; for i in "${items[@]}"; do echo -e "${index}) $i"; let index=${index}+1 ; done
                echo -e "${index}) Salir"
            
        esac

    done   
}
