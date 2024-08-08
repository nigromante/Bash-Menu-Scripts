#!/bin/bash

# 
K_F1=$'\e[11~'
K_F2=$'\e[12~' 
K_F3=$'\e[13~' 
K_F4=$'\e[14~' 
K_F5=$'\e[15~'
K_F6=$'\e[16~'
K_F7=$'\e[17~'
K_F8=$'\e[18~'
K_F9=$'\e[19~'
K_F10=$'\e[20'
K_F11=$'\e[21'
K_F12=$'\e[22'
K_UP=$'\e[A'
K_DOWN=$'\e[B'
K_RIGHT=$'\e[C'
K_LEFT=$'\e[D'
K_TAB=$'\t~'
K_DEL=$'\e[3~'
K_ENTER=$(echo -e "\n")



_readkey()
{
  local kp
  ESC=$'\e'
  _KEY=''
  read -d '' -sn1 _KEY
  case $_KEY in
    "$ESC")
        while read -d '' -sn1 -t.01 kp
        do
          _KEY=$_KEY$kp
          case $kp in
            [a-zA-NP-Z~]) break;;
          esac
        done
    ;;
  esac

  printf -v "${1:-_KEY}" "%s" "$_KEY"
}

