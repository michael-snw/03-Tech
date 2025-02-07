
# PowerShell Commands for Project Setup and Automation

## 1. Installation of Python

- Verify Python installation:
```bash
python --version
```

- If Python is not installed, download it from the official Python website and add it to the `PATH`.

## 2. Installing Libraries

- Install **Selenium**:
```bash
pip install selenium
```

- Install **Pillow**:
```bash
pip install pillow
```

## 3. Working with Python Script

### Run Python script:

- Navigate to the directory containing the script and run it:
```bash
python automated_screenshot_crop.py
```

### Install Python Libraries for Docker (Previously):

- Install Docker libraries via PowerShell:
```bash
pip install docker
```

### Docker Command for Checking Docker Version:
```bash
docker --version
```

### Install Docker:
- On PowerShell, to install Docker (requires administrative rights):
```bash
Invoke-WebRequest -Uri https://desktop.docker.com/win/stable/Docker%20Desktop%20Installer.exe -OutFile DockerDesktopInstaller.exe
Start-Process DockerDesktopInstaller.exe
```

### Docker Run Command:
- To run a container (example for running an image):
```bash
docker run -it ubuntu bash
```

### Build a Docker Image:
```bash
docker build -t my_image_name .
```

## 4. Working with Chrome and Selenium Debugging

### Launch Chrome in Debug Mode:

- In PowerShell, open Chrome with the remote debugging port **9223**:
```bash
& "C:\Program Files\Google\Chrome\Application\chrome.exe" --remote-debugging-port=9223 --user-data-dir="C:\chrome_dev_temp"
```

- Check if the remote debugging works by visiting **http://127.0.0.1:9223**.

## 5. Directory Navigation in PowerShell

### Navigate to a specific directory:

```bash
cd "C:\Path\To\Directory"
```

- For different drives:
```bash
cd /d F:\AIIA\chromedriver-win64\PROJET
```

## 6. Check Installation and Packages

### Check installed packages (Selenium, Pillow, etc.):

```bash
pip show selenium
pip show pillow
```

### Verify Python's `PATH`:

To check the **Python** installation's path in PowerShell:
```bash
where python
```

### Get Environment Variables:
- To get the environment variable `Path` in PowerShell for the **User**:
```bash
[System.Environment]::GetEnvironmentVariable("Path", "User") -split ';'
```

### Listing Docker Images:
```bash
docker images
```

### List Running Docker Containers:
```bash
docker ps
```

## 7. File Management in PowerShell

### Delete a File:
```bash
del "C:\path	o\yourile.txt"
```

### Create a Directory:
```bash
mkdir "C:\path	o
ew\directory"
```

### List Files in Directory:
```bash
dir
```

---

# Conclusion

This README provides a compilation of the PowerShell commands used throughout the setup, installation, and automation steps for the project. These include installation of Python and libraries, interacting with Docker, running Selenium, and managing environment variables.
