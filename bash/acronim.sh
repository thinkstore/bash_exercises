#!/usr/bin/env bash

# https://exercism.org/tracks/bash/exercises/acronym
main(){
  local phrase="$1"
  local acronym=""
  phrase=$(echo "$phrase" | tr -c "[:alnum:] '" ' ')

  for word in $phrase; do
    acronym+=${word:0:1} 
  done
  
  echo "${acronym^^}"

}

main "$@"
