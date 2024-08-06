#!/bin/bash
source ../includes/ezl_imports_scripts.sh

clear

print "${BR}${INFO}${TAB}Choice${BR}"



opciones=("pizza" "burgers" "chinese" "sushi" "thai" "italian" "shit")

getChoice -q "seleccionar" -o opciones -v "opcion" -t "opcionText"

if [ "$opcion" == "" ]
then
    exit
else
    print "opcion seleccionada ${WARNING}$opcion / $opcionText ${RESET}"
fi
unset opcion


read -a opciones <<< "uno dos tres"

getChoice -q "seleccionar" -o opciones -v "opcion" -t "opcionText"

if [ "$opcion" == "" ]
then
    exit
else
    print "opcion seleccionada ${WARNING}$opcion / $opcionText ${RESET}"
fi
unset opcion



IFS="|"
read -a opciones  <<< "uno dos|tres|cuatro"

getChoice -q "seleccionar" -o opciones -v "opcion" -t "opcionText"

if [ "$opcion" == "" ]
then
    exit
else
    print "opcion seleccionada ${WARNING}$opcion / $opcionText ${RESET}"
fi
unset opcion


IFS=" "
