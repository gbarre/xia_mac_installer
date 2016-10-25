# Procédure de mise à jour de l'installeur pour macos
1. Cloner le dépôt de Xia : https://git.backbone.education/pfautrero/xia
2. Cloner ce dépôt dans le même dossier que le dépôt Xia (vous devez avoir les dossiers xia et xia_mac_installer dans le même dossier)
3. Aller dans le dossier `xia_mac_installer`
4. Mettre à jour la variable `$HOME` du script `update_sources.bash`
5. Lancer le script update_sources.bash 

Ce script va faire un `git pull` pour récupérer les sources de Xia qu'il va recopier dans le dossier Xia_Installer.app/Contents/Resources/files/
Si une archive d'un installeur est déjà présente sur la machine, le script va la renomer et créer une nouvelle archive.


