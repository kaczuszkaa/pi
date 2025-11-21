#!/bin/bash 

PLIK="$1"

if [ ! -f "$PLIK" ]; then 
  echo "Plik nie istnieje"
  exit 1
else 
  echo "Aktualna data i czas:"
  date +"%Y-%m-%d %H;%M:%S"

fi

echo "TOP5 najwiekszych podkatalogow:"
cd $HOME || exit 1

du -sh * 2>/dev/null | sort -h | tail -5

