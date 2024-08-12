#!/bin/bash

menuItems=()
selectedIndex=0


menu_render() {
    _clearLastMenu "${itemsLength}"
    for (( i=0; i<$itemsLength; i++ )); do
        local currItem="${menuItems[i]}"

        if [[ $i = $selectedIndex ]]; then
            print "${WARNING}ᐅ  ${currItem}${RESET}"
        else
            print "${SUCCESS}   ${currItem}${RESET}"
        fi
    done 
}

menu_K_UP() {
    selectedIndex=$((selectedIndex-1))
    (( $selectedIndex < 0 )) && selectedIndex=$((itemsLength-1))
    menu_render
}

menu_K_DOWN() {
    selectedIndex=$((selectedIndex+1))
    (( $selectedIndex == $itemsLength )) && selectedIndex=0
    menu_render
}

menu_K_QUIT() {
    # print "${ERROR}${BR}${TAB}Salida ...${BR}"
    printf -v "${1}" ""
}

menu_K_ENTER() {
    # print "${SUCCESS}${BR}${TAB}Seleccion lista ...${BR}"
    printf -v "${1}" "${menuItems[selectedIndex]}"
}

_menu() {

    printf -v "itemsLength" "${#menuItems[@]}"
    selectedIndex=0

    trap_hideCursor

    menu_render

    loopFlag=true
    while $loopFlag ; do
        _readkey _key
        case $_key in
            $'q') menu_K_QUIT "${1}"; loopFlag=false ;;
            $K_UP) menu_K_UP ;;
            $K_DOWN) menu_K_DOWN ;;
            $K_ENTER) menu_K_ENTER "${1}" ; loopFlag=false ;;
        esac
    done

    trap_showCursor
}

_menu_init() {
    read -a menuItems <<< "$1" 
}

