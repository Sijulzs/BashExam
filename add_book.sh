#!/bin/bash


#DEMANDE DES INFORMATIONS SUR LE LIVRE

echo " Quel est le titre du livre ? "
read titre
echo " Qui est l'auteur ? "
read auteur
echo " Quelle est l'année de publication ?"
read annee 
echo " De quel planéte vient il ? "
read planete 
echo " Quel est sont ISBN Galactique"
read ISBN




#RECAP SUR LES INFO QUE LUTILISATEUR A RENTRER

echo "Récapitulatif des informations du livre:"
echo "Titre : $titre"
echo "Auteur : $auteur"
echo "Année de publication : $annee"
echo "Planète d'origine : $planete"
echo "ISBN Galactique : $ISBN"


#ON MEST LES INFO DANS LE FICHIER BOOKS.TXT

echo "$titre, $auteur, $annee, $planete, $ISBN" >> books.txt

#ON ENREGISTRE LOPERATION DANS LE FICHIER LOGS

echo " le livre " $titre " a etait ajouter a books.txt ">>setup.log



