import platform
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "<h1><b>Hello from %s %s %s %s</b></h1>" % (platform.system(), platform.release(), platform.version(), platform.machine())

if __name__ == "__main__":
    app.run(host="0.0.0.0")
