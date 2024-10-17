# 1. Installation de Git
## Installation de Git :
- Télécharger Git depuis le site officiel pour Windows : https://git-scm.com.
- Pour Linux :
    ```bash
    sudo apt-get install git  # Debian/Ubuntu
    ```
- Pour macOS :
    ```bash
    brew install git
    ```

# 2. Configuration de Git
## Configurer l’identité globale (une seule fois par machine) :
```bash
git config --global user.name "Ton Nom"     # Définit ton nom d'utilisateur
git config --global user.email "ton.email@example.com"  # Définit ton adresse email
```

## Vérifier la configuration globale :
```bash
git config --list
```

## Modifier la configuration de l’éditeur de texte par défaut :
```bash
git config --global core.editor "code --wait"  # Par exemple, pour utiliser Visual Studio Code
```

# 3. Initialisation et Clonage de Dépôt
## Initialiser un dépôt local dans un répertoire existant :
```bash
git init  # Crée un nouveau dépôt Git local dans le répertoire courant
```

## Cloner un dépôt distant :
```bash
git clone https://github.com/ton-utilisateur/nom-du-depot.git
```

## Cloner dans un répertoire spécifique :
```bash
git clone https://github.com/ton-utilisateur/nom-du-depot.git mon-repertoire-local
```

# 4. Gestion des Remotes (Dépôts Distants)
## Ajouter un dépôt distant :
```bash
git remote add origin https://github.com/ton-utilisateur/nom-du-depot.git
```

## Vérifier les dépôts distants :
```bash
git remote -v
```

## Modifier l’URL d’un dépôt distant :
```bash
git remote set-url origin https://github.com/ton-utilisateur/nouvelle-url.git
```

## Supprimer un dépôt distant :
```bash
git remote remove origin
```

# 5. Suivi des Fichiers et Staging
## Ajouter des fichiers au suivi de Git :
```bash
git add nom-du-fichier  # Ajouter un fichier spécifique au suivi
git add .               # Ajouter tous les fichiers modifiés au suivi
```

## Visualiser l'état des fichiers suivis et non suivis :
```bash
git status
```

## Enlever un fichier du suivi de Git sans le supprimer du disque :
```bash
git rm --cached nom-du-fichier
```

## Ajouter des fichiers avec un message de commit en une seule commande :
```bash
git commit -am "Message de commit"
```

# 6. Commits (Enregistrement des Changements)
## Créer un commit :
```bash
git commit -m "Message décrivant les modifications"
```

## Modifier le dernier message de commit :
```bash
git commit --amend -m "Nouveau message"
```

## Visualiser l'historique des commits :
```bash
git log
```

## Affichage compact de l'historique des commits :
```bash
git log --oneline
```

# 7. Synchronisation avec un Dépôt Distant
## Envoyer les modifications vers un dépôt distant :
```bash
git push -u origin master  # Envoie les commits de la branche 'master'
```

## Tirer les dernières modifications depuis un dépôt distant :
```bash
git pull origin master  # Récupère les modifications de la branche 'master'
```

## Configurer le dépôt distant par défaut (pour ne pas répéter l’URL) :
```bash
git push -u origin master
```

## Push des modifications après un changement :
```bash
git push
```

# 8. Gestion des Branches
## Créer une nouvelle branche :
```bash
git branch nom-de-branche
```

## Changer de branche :
```bash
git checkout nom-de-branche
```

## Créer et changer de branche en une seule commande :
```bash
git checkout -b nouvelle-branche
```

## Fusionner une branche dans la branche courante :
```bash
git merge nom-de-branche
```

## Supprimer une branche locale :
```bash
git branch -d nom-de-branche
```

# 9. Annulation et Correction
## Annuler un ajout au staging (avant commit) :
```bash
git reset nom-du-fichier
```

## Annuler les modifications locales d’un fichier :
```bash
git checkout -- nom-du-fichier
```

## Annuler un commit localement (en gardant les modifications) :
```bash
git reset --soft HEAD~1
```

## Annuler un commit et ses modifications :
```bash
git reset --hard HEAD~1
```

# 10. Gestion des Conflits de Fusion
## Visualiser les conflits après une tentative de fusion :
```bash
git status  # Les fichiers en conflit apparaîtront
```

## Éditer les fichiers en conflit (manuellement, en choisissant les modifications à garder).

## Après résolution des conflits :
```bash
git add nom-du-fichier  # Ajouter les fichiers résolus
git commit -m "Résolution des conflits"
```

# 11. Outils Divers
## Affichage graphique de l’arbre de commits :
```bash
git log --graph --oneline --all --decorate
```

## Raccourcis utiles pour l'historique :
```bash
git log --pretty=oneline  # Affiche l'historique de façon compacte
```

## Supprimer un fichier et le commit :
```bash
git rm nom-du-fichier
git commit -m "Suppression du fichier"
git push
```

## Ignorer des fichiers avec .gitignore :
- Créer un fichier nommé .gitignore à la racine du dépôt et y ajouter les noms ou chemins des fichiers à ignorer.
```gitignore
# Ignorer les fichiers .log
*.log
# Ignorer le répertoire temporaire
/tmp/
```
------------------------------------------
EDIT
------------------------------------------

# Commandes Git et Fichiers .gitkeep

## 1. Gestion des fichiers vides et structure de répertoires

### Création de fichiers .gitkeep pour garder les dossiers vides :
```bash
touch .gitkeep
```
Utilisé pour conserver des répertoires vides dans le dépôt Git. Comme nous l'avons discuté, c'est utile pour maintenir la structure.

### Commande pour ajouter tous les fichiers et dossiers (y compris .gitkeep) :
```bash
git add .
git commit -m "Ajout de fichiers sentinelles pour répertoires vides"
git push origin master
```
Ces commandes sont essentielles pour synchroniser la structure de ton projet avec le dépôt distant.

## 2. Commandes de vérification et de nettoyage

### Afficher la liste des fichiers et répertoires, y compris les fichiers cachés comme .gitkeep :
```bash
ls -a  # Affiche les fichiers cachés
ls -R  # Affiche les répertoires de manière récursive
```
Ces commandes permettent de vérifier la présence des fichiers .gitkeep et de valider la structure.

## 3. Commandes de Configuration et de Modification des Remotes

### Changement de la branche par défaut
Pour définir main comme la branche par défaut :
```bash
git branch -M main
git push -u origin main
```
Si tu souhaites passer de master à main, cette commande est utile pour uniformiser ta structure.

### Modification et gestion des URLs de remotes
Pour vérifier et changer l'URL d'un remote :
```bash
git remote -v  # Vérifie les remotes existants
git remote set-url origin https://github.com/ton-utilisateur/nouvelle-url.git
```
Idéal pour ajuster l'URL d'un dépôt distant si elle a changé.

## 4. Commandes pour Synchroniser et Résoudre des Conflits

### Synchronisation avec le dépôt distant
Pour tirer les dernières modifications et les intégrer :
```bash
git pull --rebase origin master
```
Cette commande est particulièrement utile pour réappliquer les commits locaux après avoir récupéré les dernières modifications depuis le dépôt distant.

### Envoyer les changements après avoir corrigé des conflits :
```bash
git add .
git commit -m "Résolution des conflits"
git push
```
Une commande basique mais essentielle après une résolution manuelle de conflits.

## 5. Commandes de Nettoyage et Historique

### Suppression et restauration de fichiers
Pour supprimer un fichier et le retirer de l'historique :
```bash
git rm nom-du-fichier
git commit -m "Suppression de nom-du-fichier"
git push
```
Important pour gérer la suppression de fichiers sensibles ou obsolètes.

### Pour revenir à un commit précédent (hard reset) :
```bash
git reset --hard HEAD~1
```
Reviens au commit précédent, en supprimant toutes les modifications locales.

## 6. Commandes de Configuration Git

### Configurer le nom et l'adresse e-mail :
```bash
git config --global user.name "VotreNom"
git config --global user.email "votre.email@example.com"
```
Ces commandes permettent de configurer l'identité de l'utilisateur pour les commits. Il est utile de les inclure si ce n’est pas déjà fait.

## 7. Commandes de Base pour Git

### Initialiser un dépôt Git :
```bash
git init
```
Important pour démarrer un nouveau projet en tant que dépôt Git.

### Ajouter tous les fichiers et faire un commit :
```bash
git add -A
git commit -m "Votre message de commit"
```
git add -A ajoute tous les fichiers modifiés, supprimés et non suivis au prochain commit.

### Pousser les changements vers la branche master :
```bash
git push origin master
```
Basique mais crucial pour synchroniser les changements locaux avec le dépôt distant.

## 8. Commandes pour Manipuler les Branches

### Créer et basculer vers une nouvelle branche :
```bash
git checkout -b nouvelle_branche
```
Permet de créer une nouvelle branche et de s'y positionner immédiatement.

### Retourner à une branche existante :
```bash
git checkout main
```
Basique pour revenir sur la branche principale.

## 9. Commandes de Résolution de Conflits

### Annuler une tentative de merge :
```bash
git merge --abort
```
Utile pour annuler un merge en cours si des conflits ne peuvent être résolus.

### Restaurer des fichiers à leur état original :
```bash
git checkout -- <nom_du_fichier>
```
Cette commande restaure la version d'un fichier depuis le dernier commit.

## 10. Commandes de Suppression et de Nettoyage

### Supprimer des fichiers du cache Git :
```bash
git rm --cached *.bat
```
Pour supprimer des fichiers du suivi Git mais les conserver localement.

## 11. Commandes de Clonage et de Sauvegarde

### Cloner un dépôt spécifique :
```bash
git clone https://github.com/michael-snw/05-Stream.git F:/BackupGitHub/05-Stream
```
Cloner un dépôt dans un répertoire précis pour créer une copie locale.

### Changer l'URL d'un dépôt distant :
```bash
git remote set-url origin https://github.com/michael-snw/04-AI.git
```
Pour ajuster l'URL d'un dépôt distant lorsque celui-ci change.

## 12. Commandes et Scripts pour les Fichiers Sentinelles

### Créer un fichier .gitkeep pour les répertoires vides :
```bash
touch .gitkeep
```
Permet de conserver la structure des répertoires.

### Scripts Batch pour ajouter des fichiers .gitkeep :
```batch
@echo off
setlocal
set "GIT_DIR=F:\AIIA\Git"
for /r "%GIT_DIR%" %%d in (.) do (
    if exist "%%d\" (
        echo. > "%%d\.gitkeep"
        echo "Fichier sentinelle ajouté dans : %%d"
    )
)
echo Opération terminée.
endlocal
```
Automatisation pour créer des fichiers .gitkeep dans tous les sous-répertoires.

### Scripts Bash pour cloner tous les dépôts d'un utilisateur :
```bash
#!/bin/bash
USERNAME="michael-snw"
mkdir -p F:/BackupGitHub
curl -s "https://api.github.com/users/$USERNAME/repos?per_page=100" | 
grep -o 'git@[^"]*' | 
xargs -L1 git clone -b master
```
Automatisation du clonage de tous les dépôts d'un utilisateur GitHub.

## 13. Commandes de Droits et Exécutions de Scripts

### Changer les permissions d'un script :
```bash
chmod +x clone_all_repos.sh
./clone_all_repos.sh
```
chmod est essentiel pour rendre les scripts Bash exécutables.

## 14. Commandes de Vérification et de Logs

### Vérifier l'état du dépôt :
```bash
git status
```
Montre les fichiers modifiés, en attente d'ajout ou déjà committés.

### Afficher l'historique des commits :
```bash
git log
```
Indique les derniers commits réalisés, utiles pour le suivi de l'évolution du projet.

## 15. Commandes Diverses pour la Gestion des Répertoires

### Création de répertoires spécifiques :
```bash
mkdir CV
mkdir Tests
mkdir "Lignes de code"
```