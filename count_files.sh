#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 /absolute/path/to/directory"
  exit 1
fi

if [ -d "$1" ]; then
  count=$(find "$1" -maxdepth 1 -type f | wc -l)
  echo "There are $count files in the directory '$1'."
else
  echo "'$1' is not a valid directory."
fi
