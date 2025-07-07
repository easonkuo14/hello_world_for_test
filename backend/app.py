"""Minimal Flask API serving 'Hello, World!' and static frontend files."""
from flask import Flask, jsonify, send_from_directory

app = Flask(__name__, static_folder='../frontend', static_url_path='')

@app.route('/api/hello')
def hello():
    """Return JSON greeting."""
    return jsonify(message="Hello, World!")

# Serve the SPA entrypoint when Flask is used to host static files
@app.route('/')
def index():
    return send_from_directory(app.static_folder, 'index.html')

if __name__ == '__main__':
    # Bind only to localhost for security; change host if remote access is needed
    app.run(host='127.0.0.1', port=5000)
