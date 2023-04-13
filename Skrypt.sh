#!/bin/bash

if [ "$1" = "--date" ]; then
	today=$(date +%Y-%m-%d)
	echo "Dzisiejsza data: $today"
else
	echo "Użycie: $0 --date"
fi

if [ "$1" = "--logs"]; then
	for i in {1...100}; do
		filename="log$i.txt"
		echo "$filename stworzony poprzez Skrypt.sh dnia $today" >> $filename
	done
else
	echo "Użycie: $0 --logs"
fi
