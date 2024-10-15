@echo off
setlocal

rem Spécifiez le chemin de votre répertoire Git
set "GIT_DIR=F:\AIIA\Git"

rem Crée un fichier sentinelle dans chaque sous-répertoire
for /r "%GIT_DIR%" %%d in (.) do (
    if exist "%%d\" (
        echo. > "%%d\.gitkeep"
        echo "Fichier sentinelle ajouté dans : %%d"
    )
)

echo Opération terminée.
endlocal