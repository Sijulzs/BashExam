#!/bin/bash


LOG_FILE="operation_log.txt"


#TOTAL DES OPERATIONS
total_operations=$(grep "$current_date" "$LOG_FILE" | wc -l)

#YA TIL EU UN AJOUT DE LIVRE
new_entries=$(grep "$current_date" "$LOG_FILE" | grep -i "Ajout de livre" | wc -l)

# YA TIL EU UNE RECHERCHE 
search_operations=$(grep "$current_date" "$LOG_FILE" | grep -i "Recherche de livre" | wc -l)

current_date=$(date "+%Y-%m-%d")

#RAPPORT
echo "=== STATISTIQUES DU $current_date ==="
echo "Nombre total d'opérations : $total_operations"
echo "Nouvelles entrées : $new_entries"
echo "Recherches effectuées : $search_operations"

#il y a une erreur le fichier nexiste pas quand on enregistre une operation le fichier se cree pas avec logger
