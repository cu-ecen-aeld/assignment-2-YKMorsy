#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "USAGE: $0 <writefile> <writestr>"
  exit 1
fi

writefile="$1"
writestr="$2"
directory=$(dirname "$writefile")

mkdir -p "$directory"
echo "$writestr" > "$writefile"

if [ $? -ne 0]; then
  echo "File creation error"
  exit 1
fi
