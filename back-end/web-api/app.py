
import datetime
from flask_sqlalchemy import Model

from sqlalchemy import desc
from database import db_session, init_db
from flask import Flask, jsonify, request
from models import Post
from flask_cors import CORS, cross_origin
from datetime import datetime

app = Flask(__name__)
app.debug = True
CORS(app, support_credentials=True)


@app.route('/', methods=["GET"])
@cross_origin(supports_credentials=True)
def get_index():
    posts = Post.query.order_by(Post.created_at.desc()).all()
    return jsonify(posts)


@app.route('/', methods=["POST"])
@cross_origin()
def post_index():
    data = request.json
    print(data)
    newPost = Post(description=data["description"],
                   created_at=datetime.today(), created_by=data["userName"])
    print(newPost)
    db_session.add(newPost)
    db_session.commit()
    return jsonify(newPost)


@app.teardown_appcontext
def shutdown_session(exception=None):
    db_session.remove()


if __name__ == "__main__":
    app.run()
