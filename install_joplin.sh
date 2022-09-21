#!/bin/bash
PROGRAMM_NAME="joplin"
PROGRAMM_LINK="https://github.com/laurent22/joplin/releases/download/v2.8.8/Joplin-2.8.8.AppImage"

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