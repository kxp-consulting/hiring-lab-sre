from flask import Flask

app = Flask(__name__)

@app.route('/')
def get_index():
    return 'This is my first API call!'
