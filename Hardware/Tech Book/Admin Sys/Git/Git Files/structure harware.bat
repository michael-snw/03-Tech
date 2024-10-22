@echo off
echo Creating Tech Hardware directories...

mkdir "03-Tech"
mkdir "03-Tech\Hardware"
mkdir "03-Tech\Hardware\Tech Book\Admin Sys"
mkdir "03-Tech\Hardware\Tech Book\Admin Sys\Git"
mkdir "03-Tech\Hardware\Tech Book\Admin Sys\Docker"
mkdir "03-Tech\Hardware\Tech Book\Admin Sys\Windows"
mkdir "03-Tech\Hardware\Tech Book\Admin Sys\Linux"

echo Adding README.md for 03-Tech...
echo "# 03-Tech" > "03-Tech\README.md"
echo "This directory contains technical knowledge and related files." >> "03-Tech\README.md"

echo Adding .gitkeep to keep empty directories...
type NUL > "03-Tech\Hardware\Tech Book\Admin Sys\Git\.gitkeep"
type NUL > "03-Tech\Hardware\Tech Book\Admin Sys\Docker\.gitkeep"
type NUL > "03-Tech\Hardware\Tech Book\Admin Sys\Windows\.gitkeep"
type NUL > "03-Tech\Hardware\Tech Book\Admin Sys\Linux\.gitkeep"

echo Tech directories created successfully!
pause