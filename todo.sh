#!/bin/bash
function help(){
 echo "param"
}
function newfile(){
touch $file
}
file=${TODO:=$HOME/todo.txt}


if  [[ $1 = "--help" ]]; then
    help
elif [[ $1 = "-init" ]]; then
    newfile
elif [[ $1 = "-n" ]] && [[ $2 != "" ]]; then
    $2 >> $file  
fi


