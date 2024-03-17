#!/usr/bin/env bash

# https://exercism.org/tracks/bash/exercises/raindrops/edit
main(){

  number=$1
  result=""

  if [ $((number % 3)) -eq 0 ];then 
    result="Pling"
  fi

  if [ $((number % 5)) -eq 0 ];then  
    result=$result"Plang"
  fi

  if [ $((number % 7)) -eq 0 ];then  
    result=$result"Plong"
  fi 

  if [ ${#result} -eq 0 ] ; then
    result="$number"
  fi 

  echo $result

}

main "$@"
