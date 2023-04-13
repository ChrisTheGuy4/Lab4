#!/bin/bash

if [ "$1" = "--init" ]; then
	git clone https://github.com/ChrisTheGuy4/Lab4
	export PATH=$PATH:$(pwd)
elif [[ "$1" = "--date" || "$1" = "-d" ]]; then
	echo "Dzisiejsza data: $(date +%Y-%m-%d)"
elif [[ "$1" = "--error" || "$1" = "-e" ]]; then
	if [ -z "$2" ]; then
		for i in {1..100}; do 
			errorname="error$i.txt"
			echo "$errorname stworzony poprzez Skrypt.sh dnia $(date +%Y-%m-%d)" >> $errorname
		done
		echo "Utworzono 100 plików errorx.txt"
	else
		num_errors=$2
		for i in $(seq 1 $num_errors); do
			errorname="error$i.txt
			echo "$errorname stworzony poprzez Skrypt.sh dnia $(date +%Y-%m-%d)" >> $errorname
		done
		echo "Utworzono $num_errors plików errorx.txt"
elif [[ "$1" = "--logs" || "$1" = "-l" ]]; then
	if [ -z "$2" ]; then
		echo "Użycie: $0 --logs <liczba plików> | -l <liczba plików>"
	else
		num_logs=$2
		for i in $(seq 1 $num_logs); do
			filename="log$i.txt"
			echo "$filename stworzony poprzez Skrypt.sh dnia $(date +%Y-%m-%d)" >> $filename
		done
		echo "Utworzono $num_logs plików logx.txt"
	fi
elif [[ "$1" = "--help" || "$1" = "-h" ]]; then
  echo "Użycie: $0 --date | --logs <liczba plików> | --help"
  echo "  --date lub -d                 Wyświetla dzisiejszą datę."
  echo "  --logs lub -l <liczba plików> Tworzy określoną liczbę plików logx.txt."
  echo "  --help lub -h                 Wyświetla krótką pomoc."
else
  echo "Użycie: $0 --date | -d | --logs <liczba plików> | -l <liczba plików> | --help | -h"
fi
