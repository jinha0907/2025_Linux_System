#!/bin/sh

if [ $# -ne 2 ]; then
  echo "Invalid parameter input"
  exit 1
fi

rows=$1
cols=$2
max=$((rows * cols))
width=${#max}

if [ "$rows" -le 0 ] || [ "$cols" -le 0 ]; then
  echo "Error: both values must be positive integers."
  exit 1
fi

for i in $(seq 1 $rows); do
  for j in $(seq 1 $cols); do
    printf "%d*%d=%*d " "$i" "$j" "$width" $((i*j))
  done
  echo
done
