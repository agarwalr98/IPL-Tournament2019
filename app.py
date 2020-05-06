from flask import Flask, url_for,render_template,request,  redirect,url_for, flash,abort
from flask_mysqldb import MySQL
from flask import jsonify


app = Flask(__name__)
app.config['MYSQL_HOST']= ""
app.config['MYSQL_USER']="" 
app.config['MYSQL_PASSWORD']= '' 
app.config['MYSQL_DB']="" 
 

app.config['SECRET_KEY'] = 'secret_key' 
mysql =  MySQL(app) 


result = ""
@app.route('/', methods= ['POST'])
def hello_world():

    print("dnjn")
    cur = mysql.connection.cursor()
    cur.execute("Select date, time,home_team, visitor_team, venue, matchno, Winner from matches")
    data = cur.fetchall()
    cur.close ()
    if request.method == 'POST':
        cur = mysql.connection.cursor()
        global  result
        result=""
        
        time = request.form['time']
        hometeam = request.form['hometeam']
        visitorteam = request.form['visitorteam']
        matchno = request.form['matchno']
        venue = request.form['venue']
        alumni_filter = request.form
        date = alumni_filter['date']
        print(alumni_filter, date)
        print("alumni filter")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
        
        if date != '':
            query1 = "select * from matches Mat Where Mat.date='{}' AND Mat.time='{}' AND Mat.home_team='{}' AND Mat.visitor_team='{}' AND Mat.matchno='{}' AND Mat.venue='{}'".format(date, time,hometeam,visitorteam, matchno, venue)
        else:
            query1 = "select * from matches Mat Where Mat.time='{}' AND Mat.home_team='{}' AND Mat.visitor_team='{}' AND Mat.matchno='{}' AND Mat.venue='{}'".format(  time,hometeam,visitorteam, matchno, venue)
        
        # query2 = ("SELECT EnrollmentNumber from Worked_In W Where W.CompanyName='{}' AND W.Location='{}' AND W.Position='{}' AND W.Field_of_work='{}' ").format(company_name, location, position, field_of_work)
        # query3 = ("SELECT EnrollmentNumber from Opportunities_for_hiring O Where O.Company='{}' AND O.Position='{}' AND O.Field='{}'").format(company, position_in_opportunities, field)
        query1 = query1.replace("='All'", "!=''")
        cur.execute(query1)
        result = cur.fetchall()
        # print(result)
        mysql.connection.commit ()
        cur.close() 
        
    return render_template("file.html",data =data, query_data= result)
    

if __name__ == '__main__':
    app.run(debug=True)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        


