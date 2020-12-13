from flask import Flask, request, jsonify #request bwt ngambil
from flaskext.mysql import MySQL

app = Flask(__name__) #deklarasiin nama
mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'root'
app.config['MYSQL_DATABASE_DB'] = 'yubelajar'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
app.config['MYSQL_DATABASE_PORT'] = 3306
app.config['JSONIFY_PRETTYPRINT_REGULAR'] = True

mysql.init_app(app)

#path
@app.route('/user', methods=['GET'])
def get_user():
    # data = ['ian','sean','iwan']
    # users = { #ngubah isi data jadi format json
    #     'status': 'success',
    #     'message': 'ini datanya',
    #     'data': data
    # }
    conn = mysql.connect() #konek database
    cursor = conn.cursor() #ngelakuin perintah
    query = 'SELECT * FROM authors' 

    cursor.execute(query) #execute querynya
    result = cursor.fetchall() # dari my sql hasilnya list
    result_baru = []

    #buat nambahin key
    for author in result:
       author_baru = {
           'id': author[0],
           'nama': author[1]
       }
       result_baru.append(author_baru)

    return {'hasil': result_baru}

@app.route('/create', methods=['POST'])
def insert_author():
    conn = mysql.connect()
    cursor = conn.cursor()
    firstname = request.form['first-name']
    lastname = request.form['last-name']
    email = request.form['email']
    birthdate = request.form['birthdate']

    query = 'INSERT INTO authors (first_name, last_name, email, birthdate) VALUES (%s, %s,%s,%s)'
    data = (firstname, lastname, email, birthdate)

    cursor.execute(query, data)
    conn.commit()
    conn.close()

    result = {
        'firstname': firstname,
        'lastname': lastname,
        'email': email,
        'birthdate': birthdate
    }

    return {'hasil': result}

# klo update querynya aja yg diganti. tetep tambah commit execute

if __name__ == "__main__":
    app.run(debug=True)