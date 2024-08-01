#!/bin/bash

ERROR="${RED}"
SUCCESS=${GREEN}
WARNING=${YELLOW}
INFO=${PURPLE}
BLANK=${RESET}

BR=$'\n'
BRx2=$'\n\n'
BRx3=$'\n\n\n'
BRx4=$'\n\n\n\n'

function setColor() {
    echo -e -n "$1"
}
function resetColor() {
    echo -e -n "${RESET}"
}

function nl() {
    echo -e "${BR}"
}


function print () {
    echo -e "${BLANK}$1${RESET}"
}

function error( ) {
    echo -e "${BR}${ERROR}Error   : $1${RESET}"
}

function success( ) {
    echo -e "${BR}${SUCCESS}Success : $1${RESET}"
}

function warning( ) {
    echo -e "${BR}${WARNING}Warning : $1${RESET}"
}

function info( ) {
    echo -e "${BR}${INFO}Info    : $1${RESET}"
}


function echo_tests() {
    error "mensage error "
    success "operacion completa"
    warning "Proceed with caution."
    info "test of all print functions"
    print "printing julian"
}


