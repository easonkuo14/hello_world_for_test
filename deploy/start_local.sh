#!/usr/bin/env bash
set -e

echo ">> Creating virtual environment ..."
python -m venv venv
source venv/bin/activate

echo ">> Installing dependencies ..."
pip install -r ../backend/requirements.txt

echo ">> Starting Flask API ..."
python ../backend/app.py &              # run in background
API_PID=$!

sleep 2
echo ">> Opening browser ..."
python - <<'PY'
import webbrowser, pathlib
webbrowser.open_new_tab(pathlib.Path('../frontend/index.html').resolve().as_uri())
PY

wait $API_PID
