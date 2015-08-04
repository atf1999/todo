#!/bin/bash
function help(){
 echo "COMMANDS: "
 echo "        --help: List commands"
 echo "        -init : Pass LISTNAME along with this command to make file"
 echo "        -a: Pass LISTNAME and LISTITEM to add items. If ROWNUM is not empty, adds text to line at number specified"
}
file=${TODO:=$HOME}

if  [[ $1 = "--help" ]]; then
    help
elif [[ $1 = "-init" ]] && [[ $2 != "" ]]; then
    touch $file/$2 + ".txt"
elif [[ $1 = "-a" ]] && [[ $2 != "" ]] && [[ $3 != "" ]] && [[ $4 = "" ]]; then
    final=$file/$2.txt
    echo $3 >> $final
elif [[ $1 = "-a" ]] && [[ $2 != "" ]] && [[ $3 != "" ]] && [[ $4 != "" ]]; then
    final=$file/$2.txt
    s=$4
    s+="i"
    s+=\
    s+=$3
    sed -i $s $final
fi


