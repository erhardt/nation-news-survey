# imports
import sqlite3
from flask import Flask, request, session, g, redirect, url_for, \
     abort, render_template, flash

# cdb onfiguration
DATABASE = '/tmp/app.db'
DEBUG = True
SECRET_KEY = 'development key'
USERNAME = 'admin'
PASSWORD = 'default'

# initialize app
app = Flask(__name__)
app.config.from_object(__name__)

# connect to database
def connect_db():
    return sqlite3.connect(app.config['DATABASE'])

# set up initial template routes
@app.route('/')
def homepage():
	return render_template("home.html")

@app.route('/surveys')
def credits():
	return render_template("surveys.html")


if __name__=='__main__':
	app.run()

