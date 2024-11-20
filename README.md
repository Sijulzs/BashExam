Le systeme de gestion de bibliotheque spatiale est un ensemble de scripts bash pour gerer la collection de la grande bibliotheque interplanétaire.Il fournit des outils pour ajouter , rechercher , inventorier et sauvegarder des livres tout en maintenant unsysteme de journalisation .

INSTALLATION:
-un systeme linux
-BASH installer
-droits decriture et de lecture sur le systeme de fichiers 
-un editeur de texte pour modifier les fichier necessaires

1- cloner le depot github setup.sh
2- lancer le script
il cree la structure de repertoires , initialise les fichiers necessaires ,configure les permissions et documente linstallation dans le fichier logs

CONFIGURATION:
Apres linstalation i faut verifier que lenvironement est bien configurer grace au check_environment.sh qui sassure de lexistence des fichiers et des repertoires et que les permissions soit correctes; 

UTILISATION :
ajout de livres :  executer add_book.sh
recherche de livre: exectuer search_book.sh
gerer linventaire: exectuer invetory.sh
sauvgarder des données: executer backup.sh
rapport dactivite : report.sh

ARCHITECTURE:
library/ 
├── books.txt       # Base de données des livres 
├── users.txt       # Base de données des utilisateurs 
├── logs/          # Dossier des journaux 
└── scripts/       # Vos scripts

TEST:

![image](https://github.com/user-attachments/assets/f110bfdd-06d3-4ea1-82ad-1fb54635077a)








