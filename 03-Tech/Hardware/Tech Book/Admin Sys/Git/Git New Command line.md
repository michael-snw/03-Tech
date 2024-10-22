# Résumé des Commandes Git pour la Gestion des Fusions et des Branches

## 1. Vérification de la Branche Actuelle
# Commande pour vérifier sur quelle branche tu es
git branch

## 2. État du Dépôt
# Commande pour connaître l'état de ton dépôt
git status

## 3. Synchronisation avec le Dépôt Distant
# Commande pour récupérer les dernières modifications du dépôt distant
git pull

## 4. Gestion des Fusions
# a. Résolution des Conflits
# Si des conflits apparaissent, résous-les manuellement.

# b. Finaliser la Fusion
# Après avoir résolu les conflits, termine la fusion en effectuant un commit
git commit

# c. Annuler une Fusion
# Si tu souhaites annuler la fusion, utilise cette commande
git merge --abort

## 5. Vérification de l'Historique des Commits
# Commande pour voir l'historique des commits et les modifications
git log

## 6. Ajout de Fichiers à l'Index
# Commande pour ajouter des fichiers à l'index (staging area) avant un commit
git add <file>

## 7. Commit des Changements
# Commande pour enregistrer les modifications dans le dépôt
git commit -m "Message de commit"

## 8. Visualisation des Modifications
# Commande pour voir les modifications entre les commits
git diff

## Résumé Visuel des Étapes
# Diagramme textuel des étapes
[1] Vérification de la Branche Actuelle
       ↓
[2] État du Dépôt
       ↓
[3] Synchronisation avec le Dépôt Distant
       ↓
[4a] Résolution des Conflits (si nécessaire)
       ↓
[4b] Finaliser la Fusion
       ↓
[4c] Annuler une Fusion (si nécessaire)
       ↓
[5] Vérification de l'Historique des Commits
       ↓
[6] Ajout de Fichiers à l'Index
       ↓
[7] Commit des Changements
       ↓
[8] Visualisation des Modifications

EDIT : 21/10

## 9. organiser le chapitrage et la structure de ton dépôt Git
# Faire un export de la structure de ton dépôt en utilisant une commande comme celle-ci dans ton terminal Git Bash pour avoir la liste des dossiers et fichiers 
git ls-tree -r master --name-only


## 10. Annuler la fusion en cours
git merge --abort

EDIT : 22/10

## 11. Fusionner les deux historiques non liés
# Cela va fusionner les historiques, même s'ils sont distincts.
Utiliser l'Option --allow-unrelated-histories
Cette option permet à Git de fusionner les deux historiques non liés. Tu peux l'utiliser avec la commande pull :
git pull origin master --allow-unrelated-histories

## 12. Faire un Fetch et un Merge Séparés
# Récupérer d'abord les changements du dépôt distant et ensuite les fusionner manuellement :
git fetch origin


Git help

usage: git [-v | --version] [-h | --help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--no-lazy-fetch]
           [--no-optional-locks] [--no-advice] [--bare] [--git-dir=<path>]
           [--work-tree=<path>] [--namespace=<name>] [--config-env=<name>=<envvar>]
           <command> [<args>]

These are common Git commands used in various situations:

start a working area (see also: git help tutorial)
   clone      Clone a repository into a new directory
   init       Create an empty Git repository or reinitialize an existing one

work on the current change (see also: git help everyday)
   add        Add file contents to the index
   mv         Move or rename a file, a directory, or a symlink
   restore    Restore working tree files
   rm         Remove files from the working tree and from the index

examine the history and state (see also: git help revisions)
   bisect     Use binary search to find the commit that introduced a bug
   diff       Show changes between commits, commit and working tree, etc
   grep       Print lines matching a pattern
   log        Show commit logs
   show       Show various types of objects
   status     Show the working tree status

grow, mark and tweak your common history
   backfill   Download missing objects in a partial clone
   branch     List, create, or delete branches
   commit     Record changes to the repository
   merge      Join two or more development histories together
   rebase     Reapply commits on top of another base tip
   reset      Reset current HEAD to the specified state
   switch     Switch branches
   tag        Create, list, delete or verify a tag object signed with GPG

collaborate (see also: git help workflows)
   fetch      Download objects and refs from another repository
   pull       Fetch from and integrate with another repository or a local branch
   push       Update remote refs along with associated objects

'git help -a' and 'git help -g' list available subcommands and some
concept guides. See 'git help <command>' or 'git help <concept>'
to read about a specific subcommand or concept.
See 'git help git' for an overview of the system.