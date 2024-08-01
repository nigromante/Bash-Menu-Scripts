#!/bin/bash

function getIp() {
    IP=$(ifconfig | grep inet | grep 255.255.255.0 | awk '{print $2"\n"}')
    echo $IP
}

function getIpMask() {
    IP=$(ifconfig | grep inet | grep 255.255.255.0 | awk '{print $2}' | awk -F'.' '{printf $1"."$2"."$3".*\n"}' )
    echo $IP
}


function getHostName() {
    HOSTNAME=$(uname -n)
    echo $HOSTNAME
}

function getUserName() {
    USERNAME=$(whoami)
    echo $USERNAME
}


function getCurrentWorkDir() {
    PWD=$(pwd)
    echo $PWD
}


function nmap_neighborhood() {
    NMAP=$(nmap -v -sn $1 | grep -v "host down" | grep "report for" | awk '{print $5 $6}') 
    for OUTPUT in $NMAP
    do
        echo -e "\t${OUTPUT}"
    done
}
