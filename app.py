from flask import Flask, jsonify
import platform
import subprocess

app = Flask(__name__)

@app.route('/')
def hello_geek():
    return '<h1>Hello from Flask & Docker</h2>'

@app.route('/os')
def get_os_version():
    os_version = platform.uname()
    return jsonify({"OS Version": os_version})

@app.route('/debian')
def get_debian_version():
    try:
        result = subprocess.check_output(['cat', '/etc/debian_version'], universal_newlines=True)
        return f"Debian Version: {result}"
    except subprocess.CalledProcessError as e:
        return f"Error: {e}"

if __name__ == "__main__":
    app.run(debug=True)