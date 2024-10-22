@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

REM Chemin du répertoire principal
set "baseDir=F:\AIIA\Git"

REM Déclarations des projets
set projects[0]="01 - Me"
set projects[1]="02 - Skill"
set projects[2]="03 - Tech"
set projects[3]="04 - AI"
set projects[4]="05 - Streaming"

REM Messages de commit pour chaque projet
set commitMessages[0]="Mise à jour de 01 - Me"
set commitMessages[1]="Mise à jour de 02 - Skill"
set commitMessages[2]="Mise à jour de 03 - Tech"
set commitMessages[3]="Mise à jour de 04 - AI"
set commitMessages[4]="Mise à jour de 05 - Streaming"

REM Boucle à travers chaque projet
for /L %%i in (0, 1, 4) do (
    echo Traitement de !projects[%%i]!
    cd "!baseDir!\!projects[%%i]!" || (
        echo Le chemin d'accès spécifié est introuvable.
        exit /b
    )
    REM Ajoute les fichiers
    git add .
    
    REM Utilise le message de commit prédéfini
    git commit -m "!commitMessages[%%i]!"
    
    REM Pousse les changements vers GitHub
    git push
)

echo Tous les projets ont été mis à jour !
pause