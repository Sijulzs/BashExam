#!/bin/bash

#COULEUR EN FONCTION DU RESULTAT DE LA RECHERCHE
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'

# ON DEMANDE LES INFORMATIONS A L'UTILISATEUR
read -p "Entrez le Titre, Auteur ou ISBN du livre à rechercher : " recherche

# COMPARAISON AVEC LE FICHIER BOOKS.TXT

result=$(grep -i "$recherche" books.txt)

# RESULTAT DE NOS RECHERCHES

if [ -z "$result" ]; then
  echo "Aucun livre trouvé."
else
  echo "${RED}Résultats de la recherche${NC} :"
  echo "$result"
fi
