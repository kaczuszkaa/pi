#!/bin/bash

if [ -z "$1" ]; then
  echo "Użycie: $0 <plik tekstowy>"
  exit 1
fi

PLIK="$1"

if [ ! -f "$PLIK" ]; then 
  echo "Błąd plik nie istnieje" 
  exit 1
fi 

cat "$PLIK" | \
tr -c '[:alnum:]' [\*] | \
tr '[:upper:]' '[:lower:]' | \
sort | \
uniq -c | \
sort -nr | \
head -10


