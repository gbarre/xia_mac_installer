#!/bin/bash

HOME="/Users/guillaume/Documents/xia"
SOURCE="$HOME/xia"
INSTALLER="$HOME/xia_mac_installer"
FILES="$INSTALLER/Xia_Installer.app/Contents/Resources/files"

if [ -d $SOURCE ]; then
	cd "$SOURCE"
	git pull
	cd src
fi

if [ -d $FILES ]; then
	cp -r xiaconverter $FILES
	cp -r share $FILES
	cp xia.cnf $FILES
	cp inkscape-plugin/xia* $FILES
fi

if [ -e $INSTALLER/Xia_Installer_old.app.zip ]; then
	rm -f $INSTALLER/Xia_Installer_old.app.zip
fi

mv $INSTALLER/Xia_Installer.app.zip $INSTALLER/Xia_Installer_old.app.zip

cd $INSTALLER
zip -r Xia_Installer.app.zip Xia_Installer.app

echo "Sources files updated"
exit 0
