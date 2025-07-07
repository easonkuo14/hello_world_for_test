# Hello World – Local Quick Start

## Prerequisites
- **Python 3.8 or newer** with `pip`
- A terminal (macOS/Linux) or PowerShell (Windows)

## One-click start (recommended)

### macOS / Linux
```bash
git clone <your-git-url>.git
cd hello_world_project/deploy
chmod +x start_local.sh
./start_local.sh
```

### Windows
```powershell
git clone <your-git-url>.git
cd hello_world_project\deploy
.\start_local.bat
```

## Manual steps (if you prefer)

```bash
# 1) create and activate a virtual environment
python -m venv venv
source venv/bin/activate          # Windows: venv\Scripts\activate

# 2) install dependencies
pip install -r backend/requirements.txt

# 3) start the API
python backend/app.py

# 4) open frontend/index.html in any browser
```

> **Stop the server:** press `Ctrl + C` in the console running `app.py`.  
> The entire project runs offline – no cloud resources, no cost.
