@echo off
echo Creating Tech directories...

mkdir "03-Tech"
mkdir "03-Tech\Software"
mkdir "03-Tech\Software\Tech Book\Codes & Commandes"
mkdir "03-Tech\Software\Tech Book\Codes & Commandes\Shell"
mkdir "03-Tech\Software\Tech Book\Codes & Commandes\Python"
mkdir "03-Tech\Software\Tech Book\Codes & Commandes\HTML"  **<--- Correction: Changer HTLM en HTML>**
mkdir "03-Tech\Software\Tech Book\Codes & Commandes\CSS"
mkdir "03-Tech\Software\Tech Book\Codes & Commandes\PHP"
mkdir "03-Tech\Software\Tech Book\Codes & Commandes\PHP\Wordpress"
mkdir "03-Tech\Software\Tech Book\Codes & Commandes\PHP\Joomla"
mkdir "03-Tech\Software\Tech Book\Codes & Commandes\PHP\PhPNuke"
mkdir "03-Tech\Hardware"
mkdir "03-Tech\Security"

echo Adding README.md for 03-Tech...
echo "# 03-Tech" > "03-Tech\README.md"
echo "This directory contains technical knowledge and related files." >> "03-Tech\README.md"

echo Tech directories created successfully!
pause