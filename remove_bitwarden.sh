#!/bin/bash
PROGRAMM_NAME="bitwarden"

rm -rf --dir ~/AppImages/$PROGRAMM_NAME
rm ~/.local/share/applications/"$PROGRAMM_NAME".desktop ~/Рабочий\ стол/"$PROGRAMM_NAME".desktop

echo "Removing of $PROGRAMM_NAME finished"