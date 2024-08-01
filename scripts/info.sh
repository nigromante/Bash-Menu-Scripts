#!/bin/bash
source ../includes/ezl_imports_scripts.sh

IP=$(getIp)
HOSTNAME=$(getHostName)
USER=$(getUserName)
PWD=$(getCurrentWorkDir)

print "${BR}${INFO} HOSTNAME ${RESET} \t\t: ${WARNING}${HOSTNAME}"
print "${INFO} USER ${RESET} \t\t\t: ${WARNING}${USER}"
print "${INFO} IP ${RESET} \t\t\t: ${WARNING}${IP}${BR}"
print "${INFO} CURRENT WORKDIR ${RESET}\t: ${WARNING}${PWD}${BRx2}"



