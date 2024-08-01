#!/bin/bash



function header() {
    if [ "$1" == "init" ]
    then 
        fecha=$(date +"%Y-%m-%d %H:%M:%S")
        print "${INFO}${APP_AUTHOR}  ...   ${WARNING}${fecha}${BR}"
    else
        clear 
        fecha=$(date +"%Y-%m-%d %H:%M:%S")
        print "${INFO}${APP_TITLE}  ...   ${WARNING}${fecha}${BR}"
    fi
    resetColor
}


function welcome() {

    clear

    setColor "${RED}"
    figlet -f big "${APP_TITLE}"

    header "init"
}


function bye() {

    header

    print "${BRx2}Bye...${BR}"
}

function title() {
    print "${INFO}${BR}${1}${BR}"
}

