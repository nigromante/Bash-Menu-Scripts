#!/bin/bash
source ../includes/ezl_imports_scripts.sh

LIST=$(v4l2-ctl --list-devices)

print "${BR}${INFO}\tDispositivos detectados${RESET}${BR}"
print "${WARNING}${LIST}${RESET}${BRx2}"
