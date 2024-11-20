#!/bin/bash

#FICHIER OU TOUTE LES OPERATIONS SONT ENREGISTRÉ

LOG_FILE="operation_log.txt"

# FONCTION POUR ENREGISTRER LOPERATION DE LUTILISATEUR AVCE DES ARGUMENTS AVEC LE BON FORMATS DATE / HEURE / OPERATIONS / DETAILS

log_operation() {
    local operation=$1
    local details=$2
    local current_date=$(date "+%Y-%m-%d")
    local current_time=$(date "+%H:%M:%S")
    
    echo "Le [$current_date]à [$current_time] [$operation] [$details]" >> "$LOG_FILE"
}


echo "Les opérations ont été enregistrées dans $LOG_FILE."
