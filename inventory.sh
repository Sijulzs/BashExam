#!/bin/bash


#ON LISTE TOUT CE QUIL YA DANS LE FICHIER BOOKS.TXT

echo " voici tout les livres enregistrées:"
cat books.txt




#ON COMPTE COMBIEN ON A DE RESULTAT

total_livres=$(wc -l < books.txt)
echo "Nombre total de livres : $total_livres
