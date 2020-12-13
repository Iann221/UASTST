from flask import Flask, request, jsonify, url_for, session, redirect, render_template
from flaskext.mysql import MySQL
from flask_oauth import OAuth
import logging
import time
from logging.handlers import RotatingFileHandler
# from urllib.requests import urlparse

app = Flask(__name__)
app.secret_key = 'secretkey'
# konfigurasi database
mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'root'
app.config['MYSQL_DATABASE_DB'] = 'dbtst'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
app.config['MYSQL_DATABASE_PORT'] = 3306
app.config['JSONIFY_PRETTYPRINT_REGULAR'] = True

mysql.init_app(app)

oauth = OAuth()
google = oauth.remote_app('google',
                          base_url='https://www.google.com/accounts/',
                          authorize_url='https://accounts.google.com/o/oauth2/auth',
                          request_token_url=None,
                          request_token_params={'scope': 'https://www.googleapis.com/auth/userinfo.email',
                                                'response_type': 'code'},
                          access_token_url='https://accounts.google.com/o/oauth2/token',
                          access_token_method='POST',
                          access_token_params={'grant_type': 'authorization_code'},
                          consumer_key='482758007120-vm7lob4gqkmr8eeeq21uo5odpnt6736g.apps.googleusercontent.com',
                          consumer_secret='cpNDbgd5rFiw-98asLncKZUd')

@app.route('/')
def landing():
    return render_template('index.html')

@app.route('/home')
def home():
    app.logger.error(time.strftime('%A %B, %d %Y %H:%M:%S') + ' masuk halaman utama')
    access_token = session.get('access_token')
    if access_token is None:
        return redirect(url_for('login'))
    return render_template('home.html')

@app.route('/search')
def search():
    app.logger.error(time.strftime('%A %B, %d %Y %H:%M:%S') + ' masuk halaman pencarian')
    access_token = session.get('access_token')
    if access_token is None:
        return redirect(url_for('login'))
    return render_template('search.html')

@app.route('/register')
def register():
    app.logger.error(time.strftime('%A %B, %d %Y %H:%M:%S') + ' masuk halaman penambahan data')
    access_token = session.get('access_token')
    if access_token is None:
        return redirect(url_for('login'))
    return render_template('register.html')

@app.route('/hapus')
def hapus():
    app.logger.error(time.strftime('%A %B, %d %Y %H:%M:%S') + ' masuk halaman penghapusan data')
    access_token = session.get('access_token')
    if access_token is None:
        return redirect(url_for('login'))
    return render_template('hapus.html')

@app.route('/baru')
def baru():
    app.logger.error(time.strftime('%A %B, %d %Y %H:%M:%S') + ' masuk halaman pembaruan data')
    access_token = session.get('access_token')
    if access_token is None:
        return redirect(url_for('login'))
    return render_template('baru.html')

@app.route('/login')
def login():
    callback=url_for('authorized', _external=True)
    return google.authorize(callback=callback)

@app.route('/authorized')
@google.authorized_handler
def authorized(resp):
    access_token = resp['access_token']
    session['access_token'] = access_token, ''
    return redirect(url_for('home'))

@app.route('/user', methods=['GET'])
def get_user():
    app.logger.error(time.strftime('%A %B, %d %Y %H:%M:%S') + ' mencari user')
    conn = mysql.connect() # connect database
    cursor = conn.cursor() # melakukan perintah
    carinama = request.args.get('carinama')

    query = 'SELECT * FROM mahasiswa WHERE nama=%s' 
    data = (carinama)
     
    cursor.execute(query, data)
    result = cursor.fetchall() # merubah hasil dari my sql menjadi list
    result_baru = []

    # untuk menambahkan key
    for user in result:
       user_baru = {
           'nim': user[0],
           'nama': user[1],
           'jurusan': user[2],
           'angkatan': user[3]
       }
       result_baru.append(user_baru)

    return {'hasil': result_baru}

@app.route('/create', methods=['POST'])
def insert_user():
    app.logger.error(time.strftime('%A %B, %d %Y %H:%M:%S') + ' menambahkan data')
    conn = mysql.connect()
    cursor = conn.cursor()
    
    nim = request.form['nim']
    nama = request.form['nama']
    jurusan = request.form['jurusan']
    angkatan = request.form['angkatan']

    query = 'INSERT INTO mahasiswa (nim, nama, jurusan, angkatan) VALUES (%s,%s,%s,%s)'
    data = (nim, nama, jurusan, angkatan)

    cursor.execute(query, data)
    conn.commit()
    conn.close()

    return 'data berhasil ditambahkan'

@app.route('/update', methods=['PUT'])
def update_user():
    app.logger.error(time.strftime('%A %B, %d %Y %H:%M:%S') + ' memperbarui data')
    conn = mysql.connect()
    cursor = conn.cursor()

    nim = request.form['nim']
    nama = request.form['nama']
    jurusan = request.form['jurusan']
    angkatan = request.form['angkatan']

    query = 'UPDATE mahasiswa SET nama=%s, jurusan=%s, angkatan=%s WHERE nim=%s'
    data = (nama, jurusan, angkatan, nim)

    cursor.execute(query, data)
    conn.commit()
    conn.close()

    return 'data berhasil diupdate'

@app.route('/delete', methods=['DELETE'])
def delete_user():
    app.logger.error(time.strftime('%A %B, %d %Y %H:%M:%S') + ' menghapus data')
    conn = mysql.connect()
    cursor = conn.cursor()

    query = 'DELETE FROM mahasiswa WHERE nim=%s'
    data = request.form['carinim']

    cursor.execute(query, data)
    conn.commit()
    conn.close()

    return 'data berhasil didelete'

# klo update querynya aja yg diganti. tetep tambah commit execute

if __name__ == "__main__":
    handler = RotatingFileHandler('tst.log', maxBytes=10000, backupCount=1)
    handler.setLevel(logging.INFO)
    app.logger.addHandler(handler)
    app.run(host='0.0.0.0')