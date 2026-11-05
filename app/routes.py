from flask import render_template, request, abort
from app import app

@app.route('/')
def index():
    return render_template('index.html')