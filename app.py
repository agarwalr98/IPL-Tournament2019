from flask import Flask, url_for,render_template,request,  redirect,url_for, flash,abort
from flask_mysqldb import MySQL


app = Flask(__name__)
app.config['MYSQL_HOST']=""
app.config['MYSQL_USER']="" 
app.config['MYSQL_PASSWORD']= '' 
app.config['MYSQL_DB']="" 
 

app.config['SECRET_KEY'] = 'secret_key' 
mysql =  MySQL(app) 


result = ""
@app.route('/', methods=['GET','POST']) 
def hello_world():

    
    cur = mysql.connection.cursor()
    cur.execute("Select date, time,home_team, visitor_team, venue, matchno, Winner from Matches")
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
            query1 = "select * from Matches Mat Where Mat.date='{}' AND Mat.time='{}' AND Mat.home_team='{}' AND Mat.visitor_team='{}' AND Mat.matchno='{}' AND Mat.venue='{}'".format(date, time,hometeam,visitorteam, matchno, venue)
        else:
            query1 = "select * from Matches Mat Where Mat.time='{}' AND Mat.home_team='{}' AND Mat.visitor_team='{}' AND Mat.matchno='{}' AND Mat.venue='{}'".format(  time,hometeam,visitorteam, matchno, venue)
        
        # query2 = ("SELECT EnrollmentNumber from Worked_In W Where W.CompanyName='{}' AND W.Location='{}' AND W.Position='{}' AND W.Field_of_work='{}' ").format(company_name, location, position, field_of_work)
        # query3 = ("SELECT EnrollmentNumber from Opportunities_for_hiring O Where O.Company='{}' AND O.Position='{}' AND O.Field='{}'").format(company, position_in_opportunities, field)
        query1 = query1.replace("='All'", "!=''")
        # query1 = query1.replace("='All'","!=''")
        # query2 = query2.replace("=All","!=''")
        # query2 = query2.replace("='All'","!=''")
        # query3 = query3.replace("=All","!=''")
        # query3 = query3.replace("='All'","!=''")
        
        print(query1)
        # print(query2)
        # print(query3)
        cur.execute(query1)
        result = cur.fetchall()
        print(result)
        mysql.connection.commit ()
        cur.close() 
        # cur.execute(query2)
        # result2 = cur.fetchall()
        # cur.execute(query3)
        # result3 = cur.fetchall()
        # print(result1)
        # print(result2)
        # print(result3)
        # global final_result
        # final_result = (set(result1).intersection(result2))
        # final_result = (set(final_result).intersection(result3))
        # print(final_result)
        # list1 = cur.execute(("SELECT EnrollmentNumber from Alumni A Where A.PassoutYear={} AND A.Degree='{}' AND A.CurrentState='Job' AND A.Branch='CSE' ").format(alumni_filter['passout_year'], alumni_filter['degree']))
        # print(list1)
        # list = cur.execute(("SELECT EnrollmentNumber from Alumni A Where A.PassoutYear={} AND A.Degree={} AND A.CurrentState=Job AND A.Branch=CSE ").format(alumni_filter['passout_year'], alumni_filter['degree'],alumni_filter['current_state'],alumni_filter['branch']))

    return render_template("file.html",data =data,query_data =result) 

    # cur = mysql.connection.cursor()   
    # cur.execute("Select * from student")
    # result = cur.fetchall()
    # return str ( result)
    # mysql.connection.commit()
    # cur.close()
    
if __name__ == '__main__':
    app.run(debug=True)


