import mysql.connector
import datetime
import functools

conn=mysql.connector.connect(user='root', password='admin', host='localhost', database='questionbank')
mycursor=conn.cursor()
sub=raw_input('Give a Subject Name & SemesterName')
sub = sub.upper()
sub = sub.replace(" ","")

print("%s" % (sub))

mail=raw_input('Give an Email')

#sql="DROP TABLE IF EXISTS %s"%(sub)
#mycursor.execute(sql)
#mycursor.execute("create table %s(id int primary key, subject varchar(40), questions varchar(200), doc datetime, faculty varchar(40));"%(sub))
file1 = open('output.txt', 'r') 
Lines = file1.readlines() 
count = 0
count = mycursor.execute("SELECT MAX(id) FROM questions")
count = mycursor.fetchone()
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
	mycursor.execute(query, (count,sub,line.strip(),currentDT,mail))
	conn.commit()
	
	print(count, line.strip())
	count=count+1 
