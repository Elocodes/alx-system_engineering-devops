#!/usr/bin/python3
"""
module sets all employees' todo list to json format
user info got from a REST API url
"""
import requests
import json


if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com"
    employees = requests.get("{}/users".format(url)).json()
    with open("todo_all_employees.json", "w") as f:
        json.dump({emp.get('id'): [{'task': t.get('title'),
                                    'completed': t.get('completed'),
                                    'username': emp.get('username')}
                  for t in requests.get("{}/todos?userId={}".format
                                        (url, emp.get('id'))).json()]
                  for emp in employees}, f)
