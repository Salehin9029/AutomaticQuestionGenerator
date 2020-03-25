from flask import Flask, render_template, url_for, request, redirect
from flask_table import Table, Col

from flask_mysqldb import MySQL
import mysql.connector
import functools
import datetime
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

@app.route('/generate', methods=['POST', 'GET'])
def generate():
    cur = mysql.connection.cursor()
    if request.method == 'POST':
        try:
        
            mail = request.form['mail']
            subject = request.form['subject']
            file1 = open('output.txt', 'r', encoding="utf8") 
            Lines = file1.readlines() 
            count = 0
            count = cur.execute("SELECT MAX(id) FROM questions")
            count = cur.fetchone()
            count = functools.reduce(lambda sub, ele: sub * 10 + ele, count)
            print(count)
            if(count==None):
                count=0 
            count = int(count)+1

            print(count)

        # Strips the newline character 
            for line in Lines: 


                print(line.strip()) 

                currentDT = datetime.datetime.now()
        #mycursor.execute("insert into questions(id,subject,questions,doc,faculty)values(count,'general',line.strip(),currentDT,'salehin@gmail.com');")
                query = "insert into questions(id,subject,questions,doc,faculty)values (%s,%s,%s,%s,%s)"
                cur.execute(query, (count,subject,line.strip(),currentDT,mail))
                mysql.connection.commit() #commiting the push

                print(count, line.strip())
                count=count+1

                
        except Exception as e:
            print("This is the Error" + e)
            return e
        return render_template('generate.html');
    else:
         return render_template('generate.html') 
   
@app.route('/about')
def about():
    # return render_template('about.html')
    
    # count = cur.execute("SELECT MAX(id) FROM questions")
    # count = cur.fetchone()
    # count = functools.reduce(lambda sub, ele: sub * 10 + ele, count)
    
    return 'str(results)' #the str is used for integer values

@app.route('/input')
def input():
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
    cur.close()
    print (results) #prints in console
                    #return results
    
    return render_template('show.html', output = results) #the str is used for integer values
        
       

if __name__== "__main__":
    app.run(debug=True)