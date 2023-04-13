#!/bin/bash

if [[ "$1" = "--date" || "$1" = "-d" ]]; then
	echo "Dzisiejsza data: $(date +%Y-%m-%d)"
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
  echo "  --date                  Wyświetla dzisiejszą datę."
  echo "  --logs  <liczba plików> Tworzy określoną liczbę plików logx.txt."
  echo "  --help                  Wyświetla krótką pomoc."
else
  echo "Użycie: $0 --date | -d | --logs <liczba plików> | -l <liczba plików> | --help | -h"
fi
