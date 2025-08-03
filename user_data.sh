#!/bin/bash
apt-get update -y
apt-get install -y python3 python3-pip curl git
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs

mkdir -p /home/ubuntu/flask_app
cat <<EOF > /home/ubuntu/flask_app/app.py
from flask import Flask
app = Flask(__name__)
@app.route('/')
def hello():
    return "Hello from Flask!"
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
EOF

pip3 install flask

mkdir -p /home/ubuntu/express_app
cat <<EOF > /home/ubuntu/express_app/index.js
const express = require('express');
const app = express();
app.get('/', (req, res) => res.send('Hello from Express!'));
app.listen(3000, () => console.log('Express running on port 3000'));
EOF

nohup python3 /home/ubuntu/flask_app/app.py > /home/ubuntu/flask.log 2>&1 &
nohup node /home/ubuntu/express_app/index.js > /home/ubuntu/express.log 2>&1 &