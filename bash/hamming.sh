#!/usr/bin/env bash

# https://exercism.org/tracks/bash/exercises/hamming
main(){

  if [ "$#" != 2 ] ; then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
  fi

  # (( $# == 2 )) || error  "Usage: hamming.sh <string1> <string2>"
 
  local left="$1"
  local right="$2"
  local distance=0

  if [ ${#left} != ${#right} ];then
    echo "strands must be of equal length"
    exit 1
  fi

  # ((${#left} == ${#right} )) || echo "strands must be of equal length"

  for(( i=0 ; i < ${#left} ; i++ )); do 
    if [ "${left:i:1}" != "${right:i:1}" ]; then 
      ((distance++))
    fi
  done

  echo $distance

}


main "$@"