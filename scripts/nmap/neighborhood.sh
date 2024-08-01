#!/bin/bash
source ../includes/ezl_imports_scripts.sh
IP=$(getIpMask)

print "${BR}${WARNING}\tscanning ... ${IP} ${BR}"

nmap=$(nmap_neighborhood "${IP}")   
print "${BR}${INFO}\tNMAP Neighborhood${BR}"
print "${WARNING}${nmap}${BR}"
