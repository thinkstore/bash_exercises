#!/usr/bin/env bash

main(){
  local sentence="${1,,}"
  local alphabet="abcdefghijklmnopqrstuvwxyz"

  local found=false

  for((i=0; i< ${#alphabet}; i++));do 

    found=false
    for((j=0; j< ${#sentence}; j++));do 
      if [ "${alphabet:i:1}" = "${sentence:j:1}" ];then
        found=true
        break
      fi
    done

    if [ $found = false ];then
      echo "false"
      exit 0
    fi
  done

  echo "true"

}


main "$@"
