from flask import Flask , render_template , request
import mysql.connector
application = Flask(__name__)

# @application.route("/")
@application.route("/", methods=['GET', 'POST'])
def indexaa():

    return render_template("index.html")

@application.route("/registration",methods=['GET', 'POST'])
def registration():

    return render_template("register.html")

@application.route("/login",methods=['GET', 'POST'])
def login():

    return render_template("login.html")

@application.route("/about",methods=['GET', 'POST'])
def about():

    return render_template("about.html")

@application.route("/contact",methods=['GET', 'POST'])
def contact():

    return render_template("contact.html")

@application.route("/main",methods=['GET', 'POST'])

def main_page():

    return render_template("Main_Page.html")

@application.route("/adminlogin",methods=['GET', 'POST'])
def admin_login():

    if request.method == 'POST':

        mydb = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="tourist_project"
        )
        username = request.form.get('username')
        password = request.form.get('password')
        mycursor = mydb.cursor()
        mycursor.execute("SELECT Username, Password FROM admin")

        myresult = mycursor.fetchall()

        for x in myresult:
            if(x[0] == username and x[1] == password):
                return render_template("/Admin_Main_Page.html")

        print(username)
        mycursor.close()
        mydb.close()

    return render_template("admin login.html")


@application.route("/required", methods=['GET', 'POST'])
def required_page():
    return render_template("Admin_Main_Page.html")

@application.route("/getCharts", methods=['GET', 'POST'])
def generate_charts():

    

    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="tourist_project"
    )
    
    labels = []
    values = []

    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM track_booking")

    myresult = mycursor.fetchall()

    for x in myresult:
        labels.append(x[0])
        values.append(x[1])
    mycursor.close()
    mydb.close()

    # data=[
    #         ("01-01-2022",1597),
    #         ("02-01-2022",1456),
    #         ("03-01-2022",1908),
    #         ("04-01-2022",896),
    #         ("05-01-2022",755),
    #         ("06-01-2022",453),
    #         ("07-01-2022",1100),
    #         ("08-01-2022",1235),
    #         ("09-01-2022",1478)
    #     ]
    # labels = []
    # values = []
    # for row in data:
    #     labels.append(row[0])
    #     values.append(row[1])
    return render_template('graph.html',label=labels,value=values)

application.run(debug = True)

