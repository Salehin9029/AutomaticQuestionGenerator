from flask import Flask, render_template, url_for
# from flask_sqlalchemy import SQLAlchemy
from flask_mysqldb import MySQL
# import yaml

app = Flask(__name__)
#Configuring DB
# db = yaml.load(open('db.yaml'), Loader=yaml.FullLoader )
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'admin'
app.config['MYSQL_DB'] = 'questionbank'

mysql = MySQL(app)

# app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///test.db'
# db = SQLAlchemy(app)

# class Todo(db.Model):
#     id = db.Column(db.integer, )

@app.route('/')
def index():
    return render_template('index.html')
    
    # count = cur.execute("SELECT MAX(id) FROM questions")
    # count = cur.fetchone()
    # count = functools.reduce(lambda sub, ele: sub * 10 + ele, count)
    
    return 'str(results)' #the str is used for integer values

@app.route('/generate')
def generate():
    # return render_template('generate.html')
    
    # count = cur.execute("SELECT MAX(id) FROM questions")
    # count = cur.fetchone()
    # count = functools.reduce(lambda sub, ele: sub * 10 + ele, count)
    
    return 'str(results)' #the str is used for integer values

@app.route('/about')
def about():
    # return render_template('about.html')
    
    # count = cur.execute("SELECT MAX(id) FROM questions")
    # count = cur.fetchone()
    # count = functools.reduce(lambda sub, ele: sub * 10 + ele, count)
    
    return 'str(results)' #the str is used for integer values


@app.route('/show')
def show():
    # return render_template('show.html')
    cur = mysql.connection.cursor()
    # count = cur.execute("SELECT MAX(id) FROM questions")
    # count = cur.fetchone()
    # count = functools.reduce(lambda sub, ele: sub * 10 + ele, count)
    cur.execute('''SELECT * FROM questions''')
    results = cur.fetchall()
    
    print (results) #prints in console
                    #return results
    
    return str(results) #the str is used for integer values
        
       

if __name__== "__main__":
    app.run(debug=True)