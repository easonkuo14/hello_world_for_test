@echo off
echo == Creating virtual environment ==
python -m venv venv
call venv\Scripts\activate

echo == Installing dependencies ==
pip install -r ..\backend\requirements.txt

echo == Starting Flask API ==
start "" /B python ..\backend\app.py
timeout /t 2 >nul

echo == Opening browser ==
python - <<PY
import webbrowser, pathlib
webbrowser.open_new_tab(pathlib.Path(r'..\frontend\index.html').resolve().as_uri())
PY
pause
