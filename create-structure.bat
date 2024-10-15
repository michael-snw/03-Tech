@echo off

echo Creating main directories...
mkdir "01 - Me"

echo Adding README.md for 01 - Me...
echo "# 01 - Me" > "01 - Me\README.md"
echo "This directory contains personal information and records." >> "01 - Me\README.md"

echo Creating Skill directories...
mkdir "02 - Skill"
mkdir "02 - Skill\Skill Book\SECTOR"
mkdir "02 - Skill\Skill Book\RESPONSABILITY"
mkdir "02 - Skill\Skill Book\CV"
mkdir "02 - Skill\Skill Book\CV\SALES"
mkdir "02 - Skill\Skill Book\CV\HR"

echo Adding README.md for 02 - Skill...
echo "# 02 - Skill" > "02 - Skill\README.md"
echo "This directory contains skills, competencies, and experience-related files." >> "02 - Skill\README.md"

echo Creating Tech directories...
mkdir "03 - Tech"
mkdir "03 - Tech\Software"
mkdir "03 - Tech\Software\Tech Book\Codes & Commandes"
mkdir "03 - Tech\Software\Tech Book\Codes & Commandes\Shell"
mkdir "03 - Tech\Software\Tech Book\Codes & Commandes\Python"
mkdir "03 - Tech\Software\Tech Book\Codes & Commandes\HTML"  **<--- Correction: Changer HTLM en HTML>**
mkdir "03 - Tech\Software\Tech Book\Codes & Commandes\CSS"
mkdir "03 - Tech\Software\Tech Book\Codes & Commandes\PHP"
mkdir "03 - Tech\Software\Tech Book\Codes & Commandes\PHP\Wordpress"
mkdir "03 - Tech\Software\Tech Book\Codes & Commandes\PHP\Joomla"
mkdir "03 - Tech\Software\Tech Book\Codes & Commandes\PHP\PhPNuke"

echo Adding README.md for 03 - Tech...
echo "# 03 - Tech" > "03 - Tech\README.md"
echo "This directory contains technical knowledge, including software and hardware." >> "03 - Tech\README.md"

echo Creating Tech Hardware directories...
mkdir "03 - Tech\Hardware"
mkdir "03 - Tech\Hardware\Tech Book\Admin Sys"
mkdir "03 - Tech\Hardware\Tech Book\Admin Sys\Git"
mkdir "03 - Tech\Hardware\Tech Book\Admin Sys\Docker"
mkdir "03 - Tech\Hardware\Tech Book\Admin Sys\Windows"
mkdir "03 - Tech\Hardware\Tech Book\Admin Sys\Linux"

echo Adding README.md for Hardware...
echo "# 03 - Tech\Hardware" > "03 - Tech\Hardware\README.md"
echo "This section focuses on system administration and hardware-related knowledge." >> "03 - Tech\Hardware\README.md"

echo Creating Tech Security directories...
mkdir "03 - Tech\Security"

echo Adding README.md for Tech Security...
echo "# 03 - Tech\Security" > "03 - Tech\Security\README.md"
echo "Information related to security in the technology domain." >> "03 - Tech\Security\README.md"

echo Creating AI directories...
mkdir "04 - AI"
mkdir "04 - AI\AI Book\RAG & LLM"
mkdir "04 - AI\AI Book\RAG & LLM\TEXT & COMMUNICATION\Text"
mkdir "04 - AI\AI Book\RAG & LLM\TEXT & COMMUNICATION\Transcription"
mkdir "04 - AI\AI Book\RAG & LLM\TEXT & COMMUNICATION\Tools"
mkdir "04 - AI\AI Book\RAG & LLM\MULTIMEDIA"
mkdir "04 - AI\AI Book\RAG & LLM\MULTIMEDIA\IMAGE & VIDEO"
mkdir "04 - AI\AI Book\RAG & LLM\MULTIMEDIA\IMAGE & VIDEO\Image"
mkdir "04 - AI\AI Book\RAG & LLM\MULTIMEDIA\IMAGE & VIDEO\Video"
mkdir "04 - AI\AI Book\RAG & LLM\MULTIMEDIA\AUDIO"
mkdir "04 - AI\AI Book\RAG & LLM\MULTIMEDIA\AUDIO\Voice"
mkdir "04 - AI\AI Book\RAG & LLM\MULTIMEDIA\AUDIO\Mix"
mkdir "04 - AI\AI Book\RAG & LLM\MULTIMEDIA\AUDIO\Transcription"

echo Adding README.md for AI...
echo "# 04 - AI" > "04 - AI\README.md"
echo "This directory is for AI-related resources and projects." >> "04 - AI\README.md"

echo Creating STREAMING directories...
mkdir "05 - Streaming"
mkdir "05 - Streaming\TECH"
mkdir "05 - Streaming\TECH\OBS"
mkdir "05 - Streaming\TECH\AUDIO"
mkdir "05 - Streaming\TECH\VIDEO"

echo Adding README.md for Streaming...
echo "# 05 - Streaming" > "05 - Streaming\README.md"
echo "This section includes files related to streaming setups and tools." >> "05 - Streaming\README.md"

echo Directory structure creation and README.md files completed!
pause