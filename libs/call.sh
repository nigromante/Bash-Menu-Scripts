#!/bin/bash

function call() {
    bash "$1.sh" "$2" "$3" 
    resetColor
}
