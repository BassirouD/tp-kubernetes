import os
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def motd():
    message = os.getenv('MESSAGE')
    if not message:
        return jsonify({'error': 'MESSAGE environment variable is not set'}), 500

    return jsonify({'message': message})

if __name__ == '__main__':
    message = os.getenv('MESSAGE')
    port = os.getenv('APP_PORT', 5000)
    if not message:
        print("MESSAGE environment variable is not set.")
    else:
        print("Starting motd-api with message:", message)
        app.run(debug=True, port=int(port), host="0.0.0.0")
