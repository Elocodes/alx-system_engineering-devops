#!/usr/bin/python3
"""
module returns a finished task from an employee's todo list.
user info got from a REST API url
"""
import requests
from sys import argv


if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com"
    empl_id = argv[1]
    employee = requests.get("{}/users/{}".format(url, empl_id)).json()
    todo = requests.get("{}/todos?userId={}".format(url, empl_id)).json()
    done = [tsk.get('title') for tsk in todo if tsk.get('completed') is True]
    print("Employee {} is done with tasks({}/{}):".format(employee.get('name'),
          len(done), len(todo)))
    [print("\t {}".format(tasks)) for tasks in done]
