#!/bin/bash

function menu_main() {

    title "Menu Principal"

    local items=("Sistema" "Info" "Scripts"  "Colors")

    select item in "${items[@]}" Salir
    do
        case $REPLY in
            1) header ; menu_system ;;
            2) call "info" ;;
            3) call "list" ;;
            4) call "colors" ;;
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
