#!/bin/bash
PROGRAMM_NAME="bitwarden"
PROGRAMM_LINK="https://vault.bitwarden.com/download/?app=desktop&platform=linux"

mkdir -p ~/AppImages/$PROGRAMM_NAME
wget $PROGRAMM_LINK -O ~/AppImages/$PROGRAMM_NAME/$PROGRAMM_NAME.AppImage
chmod +x ~/AppImages/$PROGRAMM_NAME/$PROGRAMM_NAME.AppImage

echo "[Desktop Entry]" >> ~/.local/share/applications/$PROGRAMM_NAME.desktop
echo "Name=$PROGRAMM_NAME" >> ~/.local/share/applications/$PROGRAMM_NAME.desktop
echo "Type=Application" >> ~/.local/share/applications/$PROGRAMM_NAME.desktop
echo "Exec=~/AppImages/$PROGRAMM_NAME/$PROGRAMM_NAME.AppImage --no-sandbox" >> ~/.local/share/applications/$PROGRAMM_NAME.desktop

cp ~/.local/share/applications/"$PROGRAMM_NAME".desktop ~/Рабочий\ стол/
cp ~/.local/share/applications/"$PROGRAMM_NAME".desktop ~/Desktop/

echo "Installation of $PROGRAMM_NAME finished"