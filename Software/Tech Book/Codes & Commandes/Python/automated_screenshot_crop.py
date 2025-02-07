from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from PIL import Image
import time
import os

def format_filename(module, unit, title, index, save_dir):
    return os.path.join(save_dir, f"AUTOMAT 2025 TUTO - MAKE M{module} - Unit {unit} {title} {index:03}.png")

# Définir un répertoire local pour enregistrer les screenshots
SAVE_DIRECTORY = "F:/AIIA/chromedriver-win64/PROJET"  # Nouveau dossier pour les screenshots
os.makedirs(SAVE_DIRECTORY, exist_ok=True)

# Configuration Selenium pour se connecter à une session Chrome existante
chrome_options = Options()
chrome_options.add_experimental_option("debuggerAddress", "127.0.0.1:9222")
service = Service("F:/AIIA/chromedriver-win64/chromedriver.exe")

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
