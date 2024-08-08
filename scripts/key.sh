#!/bin/bash
source ../includes/ezl_imports_scripts.sh

clear
opciones="uno dos tres cuatro cinco seis" 
_menu_init "${opciones}"
_menu "respta"

print "result ::: ${ERROR}(${respta})${RESET}${BRx2}"

