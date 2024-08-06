#!/bin/bash
source ../includes/ezl_imports_scripts.sh

LIST=$(v4l2-ctl --list-devices | grep "/dev" | grep -v "/media")

print "${BR}${INFO}\tDispositivos detectados${RESET}${BR}"
print "${WARNING}${LIST}${RESET}${BRx2}"
