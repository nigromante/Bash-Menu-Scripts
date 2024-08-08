#!/bin/bash

ERROR="${RED}"
SUCCESS=${GREEN}
WARNING=${YELLOW}
INFO=${PURPLE}
BLANK=${RESET}

TAB=$'\t'
TABx2=$'\t\t'
TABx3=$'\t\t\t'
TABx4=$'\t\t\t\t'


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


function _hideCursor() {
  printf "\033[?25l"
  trap 'print "${BR}${ERROR} Break ! ${RESET}${BRx2}"  && showCursor && exit "0"'  SIGINT
}

function _showCursor() {
  printf "\033[?25h"
  trap - SIGINT
}

function _clearLastMenu() {
  echo -en "\033[${1}A"
  tput ed
}