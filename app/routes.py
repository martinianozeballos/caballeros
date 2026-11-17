from flask import render_template, request, abort
from app import app
from app.utilities.personajes import (
   listar_principales
)


@app.route('/')
def index():
    principales = listar_principales()
    return render_template('index.html', principales=principales)