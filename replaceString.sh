#!/bin/bash


if [ "$#" -ne 2 ] ; then
  echo "replaceString.sh stringToBeReplaced stringToReplace"
  exit 1
fi

grep -rl "$1" ./ | xargs sed -i "s/$1/$2/g"


