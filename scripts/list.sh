#!/bin/bash
source ../includes/ezl_imports_scripts.sh

PWD=$(getCurrentWorkDir)
LS=$(ls)

print "${BR}${INFO}${PWD}${BR}" 
print "${WARNING}${LS}" 
