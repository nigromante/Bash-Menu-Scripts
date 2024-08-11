#!/bin/bash
source ../includes/ezl_imports_scripts.sh

clear
print "${ERROR}EJEMPLO 1 (usa string)${RESET}${BRx4}${BRx3}"
opciones="uno dos tres cuatro cinco seis" 
_menu_init "${opciones}"
_menu "respta"

print "result ::: ${ERROR}(${respta})${RESET}${BRx2}"



print "${ERROR}EJEMPLO 2 (usa arrego)${RESET}${BRx4}"

menuItems=("alfa" "beta" "gama")
_menu "respta2"

print "result ::: ${ERROR}(${respta2})${RESET}${BRx2}"
