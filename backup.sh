#!/bin/bash

#CHEMIN VERS LA BASE DE DONNÉES
DATABASE_DIR="/home/user/books.txt"


BACKUP_DIR="backups"

#NOMBRE MAX DE SAUVEGARDES
MAX_BACKUPS=3

#CREATION DU DOSSIERR DE SAUVEGARDES
mkdir -p "$BACKUP_DIR"

# Nom du fichier de sauvegarde (avec horodatage)
BACKUP_FILE="$BACKUP_DIR/backup_$(date +"%Y%m%d_%H%M%S").tar.gz"

#SAUVEGARDE ET COMPRESSION DES FICHIERS
tar -czf "$BACKUP_FILE" "$DATABASE_DIR"

# Étape 2 : Supprimer les anciennes sauvegardes si plus de 3
ls -1t "$BACKUP_DIR" | tail -n +$((MAX_BACKUPS + 1)) | xargs -I {} rm "$BACKUP_DIR/{}"

# Étape 3 : Vérification de l'intégrité de la dernière sauvegarde
if tar -tzf "$BACKUP_FILE" > /dev/null 2>&1; then
    echo "Sauvegarde créée avec succès : $BACKUP_FILE"
else
    echo "Erreur : La sauvegarde est corrompue."
    exit 1
fi

