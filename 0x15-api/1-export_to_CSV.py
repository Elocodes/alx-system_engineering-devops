#!/usr/bin/python3
"""
module returns a finished task from an employee's todo list.
user info got from a REST API url
"""
import requests
from sys import argv
import csv


if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com"
    empl_id = argv[1]
    employee = requests.get("{}/users/{}".format(url, empl_id)).json()
    todo = requests.get("{}/todos?userId={}".format(url, empl_id)).json()
    usrname = employee.get('username')
    with open("{}.csv".format(empl_id), "w") as f:
        to_write = csv.writer(f, quoting=csv.QUOTE_ALL)
        [to_write.writerow([empl_id, usrname, t.get('completed'),
                           t.get('title')]) for t in todo]
