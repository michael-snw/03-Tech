# Commandes ComfyUI
## Exécution de ComfyUI
# Exécuter le conteneur ComfyUI et démarrer le script run.py
docker run --rm -it -p 8189:8189 comfyui_installed python run.py


1. Lancer ComfyUI
Lancer ComfyUI en utilisant une image Docker :
bash
Copier le code
docker run --rm -it -p 8189:8189 comfyui_installed python run.py
2. Gestion des conteneurs ComfyUI
Inspecter le conteneur ComfyUI :

bash
Copier le code
docker inspect comfyui_installed_container
Afficher les logs du conteneur ComfyUI :

bash
Copier le code
docker logs comfyui_installed_container
3. Débogage et diagnostic
Utiliser Docker Debug :
bash
Copier le code
docker debug comfyui_installed_container
4. Exécution des scripts et configurations
Démarrer le conteneur ComfyUI pour exécuter un script spécifique :
bash
Copier le code
docker run --rm -it -p 8189:8189 comfyui_installed python run.py