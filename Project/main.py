from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1>Zdravo! Python aplikacija radi unutar Docker-a! 🚀</h1>'

if __name__ == "__main__":
    # Port mora biti 0.0.0.0 da bi bio dostupan van kontejnera
    port = int(os.environ.get("PORT", 5000))
    app.run(host='0.0.0.0', port=port)
