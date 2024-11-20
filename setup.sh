#!/bin/bash

#books.txt = la base de données des livres
#user.txt = la base de données des utilisateurs
#logs = dossier des journaux
#scripts = vos scripts

#on cree les repertoires et les fichiers books et user

mkdir -p library/logs library/scripts
touch library/books.txt library/users.txt

#on initialise et on m'est les en tete pour savoir à quoi servent  books.txt et user.txt
 
echo -e "\033[0;31m BASE DE DONNEES DES LIVRES\033[0m" > library/books.txt 
echo "\033[0;31m BASE DE DONNEES DES UTILISATEUR\033[0m" >library/users.txt

#on donne les permission aux fichier

chmod 755 library
chmod 644 library/books.txt library/users.txt
chmod 700 library/logs library/scripts

#on ecris les etapes dans le fichier "setup.log"
echo " RAPPORT DE CHAQUE ETAPE: " >>setup.log
echo "creation des fichier et des repertoires">>setup.log

echo "initialisation et en-tet cree">>setup.log

echo "les permission on etait choisi et donner ">>setup.log
