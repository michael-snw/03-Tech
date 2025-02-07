
# Projet d'Automatisation des Captures d'Écran avec Selenium

## 1. Installation de Python

Si **Python** n'est pas déjà installé, voici les étapes à suivre :

1. **Télécharger Python** :
   - Va sur le site officiel de Python : [https://www.python.org/downloads/](https://www.python.org/downloads/).
   - Télécharge et installe la dernière version stable (idéalement Python 3.x).

2. **Ajouter Python au `PATH`** :
   Lors de l'installation, **coche la case** "Add Python to PATH" pour que Python soit accessible depuis n'importe quel terminal.

3. **Vérifier l'installation** :
   Ouvre une invite de commande et tape la commande suivante pour vérifier que Python est correctement installé :
   ```bash
   python --version
   ```

   Cela devrait retourner la version de Python installée.

## 2. Installation des bibliothèques nécessaires : Selenium et Pillow

1. **Installer Selenium** :
   - Ouvre une invite de commande et exécute la commande suivante pour installer **Selenium** :
   ```bash
   pip install selenium
   ```

2. **Installer Pillow** (pour le traitement des images) :
   - Exécute la commande suivante :
   ```bash
   pip install pillow
   ```

3. **Vérification de l'installation des bibliothèques** :
   - Tu peux vérifier que les bibliothèques sont installées correctement avec ces commandes :
   ```bash
   pip show selenium
   pip show pillow
   ```

## 3. Téléchargement et Configuration de `chromedriver`

1. **Télécharger `chromedriver`** :
   - Va sur cette page pour télécharger la version compatible de **`chromedriver`** avec ta version de Chrome : [Télécharger chromedriver](https://chromedriver.chromium.org/downloads).
   - Sélectionne la version qui correspond à ta version de **Chrome**.

2. **Placer `chromedriver.exe`** :
   - Une fois téléchargé, place **`chromedriver.exe`** dans un répertoire de ton choix, idéalement dans ton répertoire de projet (par exemple : `F:\AIIA\chromedriver-win64\PROJET\chromedriver.exe`).

3. **Vérifier la compatibilité** :
   - Si tu utilises une version de **Chrome** récemment mise à jour, assure-toi que la version de **`chromedriver`** que tu as téléchargée correspond bien à la version de **Chrome** installée sur ton ordinateur.

## 4. Lancer Chrome en mode débogage

1. **Ferme toutes les instances de Chrome**.
2. **Lancer Chrome en mode débogage** :
   Ouvre une **invite de commande** (en tant qu'administrateur si nécessaire) et exécute la commande suivante pour démarrer **Chrome** en mode débogage avec le port **9223** :
   ```bash
   "C:\Program Files\Google\Chrome\Application\chrome.exe" --remote-debugging-port=9223 --user-data-dir="C:\chrome_dev_temp"
   ```

   Cette commande :
   - Ouvre **Chrome** en mode débogage sur le port **9223**.
   - Crée un profil utilisateur temporaire pour Chrome afin de ne pas interférer avec ton profil principal.

3. **Vérifier le débogage** :
   Une fois Chrome lancé, ouvre **http://127.0.0.1:9223** dans ton navigateur. Si tout fonctionne bien, tu devrais voir une page listant les onglets ouverts de Chrome.

## 5. Création du script Python pour les captures d'écran

1. **Création du script `automated_screenshot_crop.py`** :
   Crée un fichier **`automated_screenshot_crop.py`** dans le répertoire de ton projet, puis copie le script suivant :
   ```python
   from selenium import webdriver
   from selenium.webdriver.chrome.options import Options
   from selenium.webdriver.chrome.service import Service
   from PIL import Image
   import time
   import os

   # Fonction pour formater le nom du fichier
   def format_filename(module, unit, title, index, save_dir):
       return os.path.join(save_dir, f"AUTOMAT 2025 TUTO - MAKE M{module} - Unit {unit} {title} {index:03}.png")

   # Définir un répertoire local pour enregistrer les screenshots
   SAVE_DIRECTORY = "F:/AIIA/chromedriver-win64/PROJET"  # Dossier pour les screenshots
   os.makedirs(SAVE_DIRECTORY, exist_ok=True)

   # Configuration Selenium pour se connecter à une session Chrome existante
   chrome_options = Options()
   chrome_options.add_experimental_option("debuggerAddress", "127.0.0.1:9223")
   service = Service("F:/AIIA/chromedriver-win64/PROJET/chromedriver.exe")

   driver = webdriver.Chrome(service=service, options=chrome_options)

   print("🚀 Connexion à la session Chrome existante...")

   def capture_and_crop_screenshot(module, unit, title, index, save_dir):
       input("🛑 Place-toi sur la page et appuie sur [Entrée] pour capturer l'écran...")
       
       screenshot_path = os.path.join(save_dir, "full_screenshot.png")
       driver.save_screenshot(screenshot_path)
       print("✔️ Screenshot pris, traitement de l'image...")
       
       # Charger et rogner l'image
       image = Image.open(screenshot_path)
       x1, y1, x2, y2 = 0, 0, 2047, 575  # Coordonnées mises à jour
       cropped_image = image.crop((x1, y1, x2, y2))
       
       # Générer le nom du fichier
       save_path = format_filename(module, unit, title, index, save_dir)
       cropped_image.save(save_path)
       print(f"✅ Screenshot enregistré: {save_path}")

   # Attendre que l'utilisateur se positionne sur la page avant la capture
   capture_and_crop_screenshot(3, 1, "Introduction", 1, SAVE_DIRECTORY)

   print("✔️ Screenshot terminé. Fermeture du navigateur.")
   driver.quit()

   print("✅ Script terminé avec succès !")
   ```

2. **Explication du script** :
   - Ce script se connecte à une session Chrome existante via **Selenium**.
   - Il capture l'écran de la page active après un délai et enregistre l'image sous un format prédéfini.
   - La capture est ensuite recadrée et sauvegardée dans le répertoire spécifié.

## 6. Lancer le script

1. **Ouvrir une invite de commande** dans le répertoire de ton projet où se trouve ton script.
2. **Lancer le script Python** en exécutant la commande suivante :
   ```bash
   python automated_screenshot_crop.py
   ```

3. **Attendre la capture** :
   - Le script attendra que tu te positionnes sur la page, puis prendra la capture d'écran.
   ```

# Conclusion

Cette procédure devrait te permettre de configurer et d'exécuter correctement ton projet d'automatisation des captures d'écran à l'aide de Selenium et de Python.
