#!/bin/bash
source ../includes/ezl_imports_scripts.sh

clear
opciones="uno dos tres cuatro cinco seis" 
_menu_init "${opciones}"
_menu "respta"

print "result ::: ${ERROR}(${respta})${RESET}${BRx2}"
print "${BRx4}"


menuItems=("alfa" "beta" "gama")
_menu "respta2"

print "result ::: ${ERROR}(${respta2})${RESET}${BRx2}"
