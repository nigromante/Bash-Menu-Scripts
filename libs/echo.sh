#!/bin/bash


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

function cursor_hide() {
      print "${CURSOR_HIDE}"
}

function cursor_show() {
      print "${CURSOR_HIDE}"
}


function trap_hideCursor() {
  cursor_hide
  trap 'print "${BR}${ERROR} Break ! ${RESET}${BRx2}"  && trap_showCursor && exit "0"'  SIGINT
}

function trap_showCursor() {
  cursor_show
  trap - SIGINT
}

function _clearLastMenu() {
  echo -en "\033[${1}A"
  tput ed
}

