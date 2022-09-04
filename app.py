from flask import Flask
import pymysql
from flask import MySQL
from flask import jsonify
from markupsafe import escape

app = Flask(__name__)

mysql = MySQL()
 
# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'usuario'
app.config['MYSQL_DATABASE_PASSWORD'] = 'senha'
app.config['MYSQL_DATABASE_DB'] = 'senha'
app.config['MYSQL_DATABASE_HOST'] = 'db'
mysql.init_app(app)


@app.route('/usuario')
def users():
    conn = mysql.connect()
    
    cursor = conn.cursor(pymysql.cursors.DictCursor)
    cursor.execute("SELECT * FROM user")
    
    rows = cursor.fetchall()
    
    resp = jsonify(rows)
    resp.status_code = 200
    
    return resp

if __name__ == "__main__":
    app.run(debug=True,host='0.0.0.0')