#!/bin/bash

echo "Tentative de récupération des thèmes de l'ancienne application..."	
if [ -d "/Applications/xia.app" ]; then
	for theme in $(ls /Applications/xia.app/Contents/Resources/share/themes/); do
		if [[ $theme != "accordionBlack" && $theme != "accordionCloud" && $theme != "audioBrown" && $theme != "buttonBlue" && $theme != "game1clic" && $theme != "gameDragAndDrop" && $theme != "popBlue" && $theme != "popYellow" ]]; then
			sudo -u root cp -r "/Applications/xia.app/Contents/Resources/share/themes/$theme" $CIBLE/share/themes/
			echo "$theme copié."
		fi
	done
		
	echo "Suppression de l'ancienne application..."
	sudo -u root rm -rf "/Applications/xia.app"
fi

echo "Suppression des anciennes extensions Xia..."
for user in $(ls /Users/); do
	if [[ $user != "Shared" ]]; then
		if [ -d "/Users/$user/.config/inkscape/extensions/xiaconverter" ]; then
			sudo -u root rm -rf "/Users/$user/.config/inkscape/extensions/PIL"
			sudo -u root rm -rf "/Users/$user/.config/inkscape/extensions/xia.cnf"
			sudo -u root rm -rf "/Users/$user/.config/inkscape/extensions/xia.inx"
			sudo -u root rm -rf "/Users/$user/.config/inkscape/extensions/xia.py"
			sudo -u root rm -rf "/Users/$user/.config/inkscape/extensions/xiaconverter"
			sudo -u root rm -rf "/Users/$user/.config/inkscape/extensions/share"
		fi
	fi
done

