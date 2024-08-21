from flask import Flask, redirect, request, render_template, flash, jsonify
from flask_session import Session
from werkzeug.security import check_password_hash, generate_password_hash
import os
import uuid
from cs50 import SQL

app = Flask(__name__)

db = SQL("sqlite:///myanmyandr.db")

app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/doctor-register", methods=["GET", "POST"])
def doctor_register():
    return render_template("doctor_register.html")

@app.route("/patient-register", methods=["GET", "POST"])
def patient_register():
    return render_template("patient_register.html")

@app.route("/hospital-register", methods=["GET", "POST"])
def hospital_register():
    return render_template("hospital_register.html")