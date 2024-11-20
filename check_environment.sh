#!/bin/bash


#SCRIPT POUR VOIR SI TOUT A BIEN ETAIT CREE ET QUILS ONT LES BONNES PERMISSIONS



LOG_FILE="check_environment.log"

# Répertoires et fichier a  vérifier
LIBRARY_DIR="library"
BOOKS_FILE="$MAIN_DIR/books.txt"
USERS_FILE="$MAIN_DIR/users.txt"
LOGS_DIR="$MAIN_DIR/logs"
SCRIPTS_DIR="$MAIN_DIR/scripts"




# VERIFICATION DE L'EXISTENCE DES FICHIER/DOSSIER 

 
if [ -d "$LIBRARY_DIR" ]; then
    echo "Répertoire $LIBRARY_DIR existe" >> "$LOG_FILE"
else
    echo "ERREUR: $LIBRARY_DIR n'existe pas" >> "$LOG_FILE"
fi




if [ -d "$LOGS_DIR" ]; then
    echo "Répertoire $LOGS_DIR existe." >> "$LOG_FILE"
    
else    echo "ERREUR: $LOGS_DIR n'existe pas" >> "$LOG_FILE"
fi





if [ -d "$SCRIPTS_DIR" ]; then
    echo "Répertoire $SCRIPTS_DIR existe." >> "$LOG_FILE"
else
    echo "ERREUR: $SCRIPTS_DIR n'existe pas" >> "$LOG_FILE"
fi



if [ -f "$BOOKS_FILE" ]; then
    echo "Fichier $BOOKS_FILE existe." >> "$LOG_FILE"
else
    echo "ERREUR: $BOOKS_FILE n'existe pas" >> "$LOG_FILE"
fi



if [ -f "$USERS_FILE" ]; then
    echo "Fichier $USERS_FILE existe." >> "$LOG_FILE"
else
    echo "ERREUR: $USERS_FILE n'existe pas" >> "$LOG_FILE"
fi





# VERIFICATIONS DES PERMISSIONS ACCORDER EN FONCTIONS DU DOSSIER OU FICHIER



if [ -r "$BOOKS_FILE" ]; then
    echo "Le fichier $BOOKS_FILE a les bonnes permissions." >> "$LOG_FILE"
else
    echo "ERREUR: Le fichier $BOOKS_FILE na pas les bonnes permissions" >> "$LOG_FILE"
fi

if [ -w "$BOOKS_FILE" ]; then
    echo "Le fichier $BOOKS_FILE a les bonnnes permission." >> "$LOG_FILE"
else
    echo "ERREUR: Le fichier $BOOKS_FILE na pas les bonne permision" >> "$LOG_FILE"
fi





if [ -r "$USERS_FILE" ]; then
    echo "Le fichier $USERS_FILE a les bonnes permissions" >> "$LOG_FILE"
else
    echo "ERREUR: Le fichier $USERS_FILE na pas les bonnes permission" >> "$LOG_FILE"
fi

if [ -w "$USERS_FILE" ]; then
    echo "Le fichier $USERS_FILE a les bonnes permissions." >> "$LOG_FILE"
else
    echo "ERREUR: Le fichier $USERS_FILE na pas les bpnnes permissions!" >> "$LOG_FILE"
fi


#LA VERIFICATION EST TERMINER

echo "la vérification est terminée. Rapport enregistré dans $LOG_FILE."


