from app.database import conectar
from app.models.personaje import Personaje


CONSULTA_PERSONAJES = """
    SELECT p.id,p.nombre,p.tecnicas_principales,p.edad,p.altura,p.peso,p.genero,p.descripcion,p.imagen, p.lugar_nacimiento,p.constelaciones, c.nombre AS categorias,a.nombre AS afiliaciones 
    FROM personajes p
    INNER JOIN categoria c 
    ON p.categorias_id = c.id
    INNER JOIN afiliaciones a 
    ON p.afiliacion_id = a.id
    
"""

# Mostrar Principales

def listar_principales():
    conexion = conectar()
    cursor = conexion.cursor(dictionary=True)

    try:
        # %s marcado de posicion
        sql = CONSULTA_PERSONAJES + ' WHERE c.nombre = "Bronce"'
        sql += ' LIMIT 4'
        

        cursor.execute(sql)
        # convertir en array lo que viene de la base de datos y trae 
        filas = cursor.fetchall()
        personajes = []
        for fila in filas:
            personaje = Personaje(
                fila['id'], fila['nombre'], fila['tecnicas_principales'], fila['edad'], fila['altura'], fila['peso'], fila['genero'], fila['descripcion'], fila['imagen'],fila['categorias_id'], fila['afiliacion_id'], fila['lugar_nacimiento'], fila['constelaciones']
            )
            personajes.append(personaje)
        return personajes
    finally:
        cursor.close()
        conexion.close()




# Mostrar las categorias

def listar_categorias():
    conexion = conectar()
    cursor = conexion.cursor(dictionary=True)

    try:
        cursor.execute("SELECT nombre FROM categorias ORDER BY id")
        filas = cursor.fetchall()
        categorias  = []

        for fila in filas:
            categorias.append(fila['nombre'])
        return categorias
    finally:
        cursor.close()
        conexion.close()


def listar_personajes(nombre='' , categoria=''):
    conexion = conectar()
    cursor = conexion.cursor(dictionary=True)

    try:
        # %s marcado de posicion
        sql = CONSULTA_PERSONAJES + ' WHERE p.nombre LIKE %s'
        parametros = ['%' +  nombre + '%' ] 
        if categoria != '':
            sql += ' AND c.nombre = %s'
            parametros.append(categoria)
        sql += ' ORDER BY p.nombre'

        cursor.execute(sql, parametros)
        # convertir en array lo que viene de la base de datos y trae 
        filas = cursor.fetchall()
        personajes = []
        for fila in filas:
            personaje = Personaje(
                fila['id'], fila['nombre'], fila['categoria'],
                fila['especie'], fila['planeta'], fila['descripcion'], fila['imagen']
            )
            personajes.append(personaje)
        return personajes
    finally:
        cursor.close()
        conexion.close()

def obtener_personaje(id):
    conexion = conectar()
    cursor = conexion.cursor(dictionary=True)

    try:
        cursor.execute(CONSULTA_PERSONAJES + ' WHERE p.id = %s ', (id,))
        fila = cursor.fetchone()
        if fila is None:
            return None
        return Personaje(
            fila['id'], fila['nombre'], fila['categoria'],
                fila['especie'], fila['planeta'], fila['descripcion'], fila['imagen']
        )

    finally:
        cursor.close()
        conexion.close()
    