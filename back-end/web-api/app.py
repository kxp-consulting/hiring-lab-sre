
from database import db_session, init_db
from flask import Flask, jsonify
from models import Post

app = Flask(__name__)
app.debug = True

@app.route('/', methods=["GET"])
def get_index():
    posts = Post.query.all()
    return jsonify(posts)

@app.teardown_appcontext
def shutdown_session(exception=None):
    db_session.remove()


if __name__ == "__main__":
    app.run()