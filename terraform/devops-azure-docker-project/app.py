return "DevOps Project by Gokul 🚀"from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "DevOps Project by Gokul 🚀"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
