# Commandes Docker et Docker ComfyUI

## A. Installation de Docker
```bash
# Installation de Docker
start /w "" "Docker Desktop Installer.exe" install --installation-dir=F:\AIIA\docker --accept-license
Start-Process -Wait -FilePath “f:\\AIIA\Install\docker desktop installer.exe” -ArgumentList “install”, “–installation-dir=f:\\AIIA\Docker\”
# Changer le répertoire WSL
wsl --install
```

## B. Gestion de Docker
```bash
# Redémarrer le service Docker
sudo systemctl restart docker
```

## C. Gestion des Conteneurs
```bash
# Lister tous les conteneurs (en cours d'exécution et arrêtés)
docker ps -a

# Inspecter un conteneur spécifique
docker inspect <nom_du_conteneur>

# Afficher les logs d'un conteneur spécifique
docker logs <nom_du_conteneur>

# Démarrer un conteneur spécifique
docker start <nom_du_conteneur>

# Arrêter un conteneur spécifique
docker stop <nom_du_conteneur>

# Supprimer un conteneur spécifique
docker rm <nom_du_conteneur>
```

## D. Gestion des Images
```bash
# Lister toutes les images disponibles
docker images

# Supprimer une image spécifique
docker rmi <nom_de_l_image>
```

## E. Vérification des Ports
```bash
# Vérifier les ports utilisés et les processus associés
netstat -ano | findstr :<port>

# Terminer un processus utilisant un port spécifique
taskkill /PID <PID> /F
```

## F. Installation Docker Llama
```bash
# Installer Llama
ollama run llama3.1:8b
docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
```

## G. Installation Docker Searxng
```bash
# Installer Searxng
docker run -d --name searxng -p 8080:8080 -v ./searxng:/etc/searxng --restart always searxng/searxng:latest
```

## H. Installation Docker VSDM
```bash
# Installer VSDM
docker run -it --rm -p 5000:5000 --device=/dev/kvm --cap-add NET_ADMIN --stop-timeout 120 vdsm/virtual-dsm
```

## I. Installation avec GPU
```bash
# Exécution d'un conteneur avec GPU
docker container run --rm -d -p 8501:8501 -e STREAMLIT_SERVER_HEADLESS=true -e "WEBUI_SCRIPT=webui_streamlit.py" -e "VALIDATE_MODELS=false" -v "${PWD}/outputs:/sd/outputs" --gpus all tukirito/sygil-webui:latest
```

## J. Commandes ComfyUI
```bash
# Exécution de ComfyUI
docker run --rm -it -p 8189:8189 comfyui_installed python run.py
```

## K. Docker Local Host
```bash
# Accéder aux services via le localhost
# OLLAMA: http://localhost:11434
# OPENWEBUI: http://localhost:3000
# VDSM: http://localhost:5000
# COMFYUI: http://localhost:8188
```

## L. Autres Commandes Docker
```bash
# Construire et exécuter ComfyUI
docker build -t comfyui/base:dev . && docker run --env-file .env -p 8188:8188 comfyui/base:dev
docker pull comfyui/base
docker pull obeliks/comfyui
```

## M. Installation CUDA et PyTorch
```bash
# Installer CUDA et PyTorch
docker run -it --gpus=all --rm nvcr.io/nvidia/cuda:12.1.0-base-ubuntu22.04 /bin/bash
docker run --gpus all -it --rm nvcr.io/nvidia/pytorch:xx.xx-py3
apt update
apt install -y git python3-pip libgl1-mesa-dev libglib2.0-0
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
```

## N. Installation et Clonage de ComfyUI
```bash
# Cloner ComfyUI
git clone https://github.com/comfyanonymous/ComfyUI

# Installer les dépendances de ComfyUI
cd ComfyUI
pip install -r requirements.txt
cd custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
cd ..
python3 main.py
```

## O. Exécuter ComfyUI avec Docker
```bash
# Exécuter ComfyUI avec Docker
docker run --rm -it -p 8000:8188 --volume /data/comfy/models:/app/models:ro --gpus all local/comfy-git
```

----------------
# Commandes Docker

## Installation de Docker
Installer Docker Desktop
```bash
start /w "" "Docker Desktop Installer.exe" install --installation-dir=F:\AIIA\docker --accept-license
```

```bash
Start-Process -Wait -FilePath “f:\\AIIA\Install\docker desktop installer.exe” -ArgumentList “install”, “–installation-dir=f:\\AIIA\Docker\”
```

Installation WSL
```bash
wsl --install
```

## Gestion de Docker
# Redémarrer le service Docker
```bash
sudo systemctl restart docker
```

## Gestion des Conteneurs
# Lister tous les conteneurs (en cours d'exécution et arrêtés)
```bash
docker ps -a
```

# Inspecter un conteneur spécifique
```bash
docker inspect <nom_du_conteneur>
```

# Afficher les logs d'un conteneur spécifique
```bash
docker logs <nom_du_conteneur>
```

# Démarrer un conteneur spécifique
```bash
docker start <nom_du_conteneur>
```

# Arrêter un conteneur spécifique
```bash
docker stop <nom_du_conteneur>
```

# Supprimer un conteneur spécifique
```bash
docker rm <nom_du_conteneur>
```

## Gestion des Images
# Lister toutes les images disponibles
```bash
docker images
```

# Supprimer une image spécifique
```bash
docker rmi <nom_de_l_image>
```

## Vérification des Ports
# Vérifier les ports utilisés et les processus associés
```bash
netstat -ano | findstr :<port>
```

# Terminer un processus utilisant un port spécifique
```bash
taskkill /PID <PID> /F
```

## Installation Docker Llama
# Lancer Llama 3.1
```bash
ollama run llama3.1:8b
```

# Installer Open Web UI
```bash
docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
```

# Installer Ollama
```bash
docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
```

## Installation Docker Searxng
# Installer Searxng
```bash
docker run -d --name searxng -p 8080:8080 -v ./searxng:/etc/searxng --restart always searxng/searxng:latest
```

## Installation Docker VSDM
# Lancer VSDM
```bash
docker run -it --rm -p 5000:5000 --device=/dev/kvm --cap-add NET_ADMIN --stop-timeout 120 vdsm/virtual-dsm
```

## Installation Docker ComfyUI
# Exécuter le conteneur ComfyUI et démarrer le script run.py
```bash
docker run --rm -it -p 8189:8189 comfyui_installed python run.py
```

# Autres commandes pour ComfyUI
```bash
git clone https://github.com/comfyanonymous/ComfyUI
```

```bash
cd ComfyUI
```

```bash
pip install -r requirements.txt
```

```bash
cd custom_nodes
```

```bash
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
```

```bash
cd ..
```

```bash
python3 main.py
vbnet
```
-----------------------

---------------------
Installation Docker llama

ollama run llama3.1:8b	

```bash	
docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main	
```	
https://hub.docker.com/r/ollama/ollama	

```bash	
docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama	
```	
http://localhost:3000	


---------------------
Installation Docker Searxng

```bash
docker run -d --name searxng -p 8080:8080 -v ./searxng:/etc/searxng --restart always searxng/searxng:latest
```			

https://docs.openwebui.com/tutorial/web_search#1-searxng-configuration					

---------------------
Installation Docker VSDM

https://github.com/vdsm/virtual-dsm/blob/master/readme.md					
					
https://www.youtube.com/watch?v=IG7f58tYJ3Y&t=108s					

```bash
docker run -it --rm -p 5000:5000 --device=/dev/kvm --cap-add NET_ADMIN --stop-timeout 120 vdsm/virtual-dsm
```					
----------------------
docker container run --rm -d -p 8501:8501 -e STREAMLIT_SERVER_HEADLESS=true -e "WEBUI_SCRIPT=webui_streamlit.py" -e "VALIDATE_MODELS=false" -v "${PWD}/outputs:/sd/outputs" --gpus all tukirito/sygil-webui:latest												
https://sygil-dev.github.io/sygil-webui/docs/Installation/docker-guide															
----------------------

# Commandes ComfyUI
## Exécution de ComfyUI
# Exécuter le conteneur ComfyUI et démarrer le script run.py

```bash
docker run --rm -it -p 8189:8189 comfyui_installed python run.py
```
--------------------------

Docker local host

OLLAMA	
http://localhost:11434
	
OPENWEBUI	
http://localhost:3000
	
VDSM	
http://localhost:5000

COMFIUI	
http://localhost:8188

--------------------------
WIP
--------------------------
https://hub.docker.com/r/comfyui/base										
docker build -t comfyui/base:dev . && docker run --env-file .env -p 8188:8188 comfyui/base:dev						docker pull comfyui/base				
docker pull obeliks/comfyui										
https://www.youtube.com/watch?v=lPsVbyLxZr4										
docker run -it --gpus=all --rm nvcr.io/nvidia/cuda:12.1.0-base-ubuntu22.04 /bin/bash						docker run --gpus all -it --rm nvcr.io/nvidia/pytorch:xx.xx-py3				
apt update										
apt install -y git python3-pip libgl1-mesa-dev libglib2.0-0										
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121 										
git clone https://github.com/comfyanonymous/ComfyUI										


--------------------------
cd ComfyUI					
pip install -r requirements.txt					
cd custom_nodes					
git clone https://github.com/ltdrdata/ComfyUI-Manager.git					
cd ..					
python3 main.py					
http://127.0.0.1:8188					
					
docker run --rm -it -p 8000:8188 --volume /data/comfy/models:/app/models:ro --gpus all local/comfy-git					
					
https://www.reddit.com/r/comfyui/comments/1dc80al/installing_comfyui_in_a_docker_container/?tl=fr					

