from flask import Flask

# Create Flask app
app = Flask(__name__)

# Home route
@app.route('/')
def home():
    return "Welcome to my simple Flask app!"

# Hello route
@app.route('/hello')
def hello():
    return "Hello, World!"

if __name__ == '__main__':
    app.run(debug=True)
