#!/usr/bin/env bash

# https://exercism.org/tracks/bash/exercises/armstrong-numbers

main(){
    number="$1"

    local exp=${#number}
    local result=0 

    for((i=0 ; i< ${#number}; i++));do 
      result=$((result + ${number:i:1} ** exp ))
    done

    [ $result = $number ] && echo "true" || echo "false"

}


main "$@"