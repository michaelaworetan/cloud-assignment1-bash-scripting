#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 filename"
  exit 1
fi

if [ -f "$1" ]; then
  echo "File '$1' exists."
else
  echo "File '$1' does not exist."
fi
