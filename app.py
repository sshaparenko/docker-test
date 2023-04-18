
from flask import Flask


def create_app():
    return Flask(__name__)


app = create_app()


@app.route('/')
def hello_world():
    return 'Hello World!'


if __name__ == '__main__':
    app.run()