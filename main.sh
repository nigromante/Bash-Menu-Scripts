#!/bin/bash

APP_TITLE="Ez / Scripts"
APP_AUTHOR="Julian Vidal A"

source includes/ezl_imports.sh

cd scripts

PS3="$( echo -e "\nSeleccionar opcion : " )"

trap ctrl_c INT 

function ctrl_c() {
    print "${BRx2}${ERROR}Salida forzada por el usuario !!!${BRx2}"
    exit
}



function run() {

    welcome

    if [ "$EUID" -ne 0 ]
    then
        menu_main
    else
        menu_admin
    fi

    bye
}


run
