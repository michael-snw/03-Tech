@echo off
cd "F:\AIIA\Git"  REM Change this path if necessary

set projects=(01 - Me,02 - Skill,03 - Tech,04 - AI,05 - Streaming)
set repos=(https://github.com/michael-snw/01-Me.git,https://github.com/michael-snw/02-Skill.git,https://github.com/michael-snw/03-Tech.git,https://github.com/michael-snw/04-AI.git,https://github.com/michael-snw/05-Streaming.git)

for %%i in (0,1,2,3,4) do (
    set projectName=%%~i
    set repoURL=%%~j
    
    echo Processing %projectName%...
    cd "F:\AIIA\Git\%projectName%"

    REM Verify if the directory is already a Git repository
    if not exist ".git" (
        echo Initializing Git repository for %projectName%...
        git init
        git remote add origin %repoURL%
    )

    echo Adding files to %projectName%...
    git add .

    echo Enter the commit message for %projectName%:
    set /p commitMessage="> "

    echo Committing changes for %projectName%...
    git commit -m "%commitMessage%"

    echo Pushing changes for %projectName%...
    git push -u origin main

    echo Completed for %projectName%.
)

echo All projects have been updated!
pause