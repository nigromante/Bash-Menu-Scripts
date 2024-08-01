#!/bin/bash


function menu_system() {

    title "Menu de Sistemas"
    
    local items=("Item A" "Item B" "Item C")

    select item in "${items[@]}" Volver
    do
        case $REPLY in
            1) echo "Selected item #$REPLY which means $item";;
            2) echo "Selected item #$REPLY which means $item";;
            3) echo "Selected item #$REPLY which means $item";;
            $((${#items[@]}+1))) 
                header
                return ;;
            *) 
                header
                title "Menu de Sistemas"
                index=1 ; for i in "${items[@]}"; do echo -e "${index}) $i"; let index=${index}+1 ; done
                echo -e "${index}) Salir"
        esac


    done   
}

