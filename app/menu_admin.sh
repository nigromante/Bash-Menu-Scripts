#!/bin/bash

function menu_admin() {

    title "Menu del Administrador"

    local items=("Public" "NMAP Neighborhood" )

    select item in "${items[@]}" Salir
    do
        case $REPLY in
            1) header ; menu_main ;;
            2) call "nmap/neighborhood" ;;
            $((${#items[@]}+1))) 
                header
                return;;
            *) 
                header
                title "Menu del Administrador"
                index=1; for i in "${items[@]}"; do echo -e "${index}) $i"; let index=${index}+1 ; done
                echo -e "${index}) Salir"
            
        esac

    done   
}
