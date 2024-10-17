Voici toutes les commandes que je viens d'apprendre et d'utiliser pour réaliser, modifier, corriger, ce GIT ^^



1. Installation de Git
Installation de Git :
Télécharger Git depuis le site officiel pour Windows : https://git-scm.com.
Pour Linux :
bash
Copier le code
sudo apt-get install git  # Debian/Ubuntu
Pour macOS :
bash
Copier le code
brew install git
2. Configuration de Git
Configurer l’identité globale (une seule fois par machine) :

bash
Copier le code
git config --global user.name "Ton Nom"     # Définit ton nom d'utilisateur
git config --global user.email "ton.email@example.com"  # Définit ton adresse email
Vérifier la configuration globale :

bash
Copier le code
git config --list
Modifier la configuration de l’éditeur de texte par défaut :

bash
Copier le code
git config --global core.editor "code --wait"  # Par exemple, pour utiliser Visual Studio Code
3. Initialisation et Clonage de Dépôt
Initialiser un dépôt local dans un répertoire existant :

bash
Copier le code
git init  # Crée un nouveau dépôt Git local dans le répertoire courant
Cloner un dépôt distant :

bash
Copier le code
git clone https://github.com/ton-utilisateur/nom-du-depot.git
Cloner dans un répertoire spécifique :

bash
Copier le code
git clone https://github.com/ton-utilisateur/nom-du-depot.git mon-repertoire-local
4. Gestion des Remotes (Dépôts Distants)
Ajouter un dépôt distant :

bash
Copier le code
git remote add origin https://github.com/ton-utilisateur/nom-du-depot.git
Vérifier les dépôts distants :

bash
Copier le code
git remote -v
Modifier l’URL d’un dépôt distant :

bash
Copier le code
git remote set-url origin https://github.com/ton-utilisateur/nouvelle-url.git
Supprimer un dépôt distant :

bash
Copier le code
git remote remove origin
5. Suivi des Fichiers et Staging
Ajouter des fichiers au suivi de Git :

bash
Copier le code
git add nom-du-fichier  # Ajouter un fichier spécifique au suivi
git add .               # Ajouter tous les fichiers modifiés au suivi
Visualiser l'état des fichiers suivis et non suivis :

bash
Copier le code
git status
Enlever un fichier du suivi de Git sans le supprimer du disque :

bash
Copier le code
git rm --cached nom-du-fichier
Ajouter des fichiers avec un message de commit en une seule commande :

bash
Copier le code
git commit -am "Message de commit"
6. Commits (Enregistrement des Changements)
Créer un commit :

bash
Copier le code
git commit -m "Message décrivant les modifications"
Modifier le dernier message de commit :

bash
Copier le code
git commit --amend -m "Nouveau message"
Visualiser l'historique des commits :

bash
Copier le code
git log
Affichage compact de l'historique des commits :

bash
Copier le code
git log --oneline
7. Synchronisation avec un Dépôt Distant
Envoyer les modifications vers un dépôt distant :

bash
Copier le code
git push -u origin master  # Envoie les commits de la branche 'master'
Tirer les dernières modifications depuis un dépôt distant :

bash
Copier le code
git pull origin master  # Récupère les modifications de la branche 'master'
Configurer le dépôt distant par défaut (pour ne pas répéter l’URL) :

bash
Copier le code
git push -u origin master
Push des modifications après un changement :

bash
Copier le code
git push
8. Gestion des Branches
Créer une nouvelle branche :

bash
Copier le code
git branch nom-de-branche
Changer de branche :

bash
Copier le code
git checkout nom-de-branche
Créer et changer de branche en une seule commande :

bash
Copier le code
git checkout -b nouvelle-branche
Fusionner une branche dans la branche courante :

bash
Copier le code
git merge nom-de-branche
Supprimer une branche locale :

bash
Copier le code
git branch -d nom-de-branche
9. Annulation et Correction
Annuler un ajout au staging (avant commit) :

bash
Copier le code
git reset nom-du-fichier
Annuler les modifications locales d’un fichier :

bash
Copier le code
git checkout -- nom-du-fichier
Annuler un commit localement (en gardant les modifications) :

bash
Copier le code
git reset --soft HEAD~1
Annuler un commit et ses modifications :

bash
Copier le code
git reset --hard HEAD~1
10. Gestion des Conflits de Fusion
Visualiser les conflits après une tentative de fusion :

bash
Copier le code
git status  # Les fichiers en conflit apparaîtront
Éditer les fichiers en conflit (manuellement, en choisissant les modifications à garder).

Après résolution des conflits :

bash
Copier le code
git add nom-du-fichier  # Ajouter les fichiers résolus
git commit -m "Résolution des conflits"
11. Outils Divers
Affichage graphique de l’arbre de commits :

bash
Copier le code
git log --graph --oneline --all --decorate
Raccourcis utiles pour l'historique :

bash
Copier le code
git log --pretty=oneline  # Affiche l'historique de façon compacte
Supprimer un fichier et le commit :

bash
Copier le code
git rm nom-du-fichier
git commit -m "Suppression du fichier"
git push
Ignorer des fichiers avec .gitignore :

Créer un fichier nommé .gitignore à la racine du dépôt et y ajouter les noms ou chemins des fichiers à ignorer.
gitignore
Copier le code
# Ignorer les fichiers .log
*.log
# Ignorer le répertoire temporaire
/tmp/