import json
import os
import logging
from datetime import datetime, timedelta
import requests
from retrying import retry
import time
from bs4 import BeautifulSoup


def make_request(url, method="GET", headers=None, data=None, params=None, json=None):
    if method.upper() == "GET":
        response = requests.get(url, headers=headers, params=params, json=json)
    elif method.upper() == "POST":
        response = requests.post(url, headers=headers, data=data, json=json)
    elif method.upper() == "PUT":
        response = requests.put(url, headers=headers, data=data, json=json)
    print(response.json())
    if response.status_code == 200:
        return response
    elif response.status_code == 404:
        # print("Resource not found (404).")
        logging.error(f"Resource not found (404). url:{url}")
        return None
    else:
        # print(f"Request failed with status code: {response.status_code}")
        logging.error(
            f"Request failed with status code: {response.status_code} url:{url}"
        )
        return None

make_request(url='http://localhost:8080/taskMonitor/task/23',method='GET')

# make_request(url='http://localhost:8080/urlGrouping/group/CBN',method='POST')
# make_request(url='http://localhost:8080/taskGeneration/generate/1',method='POST')
# make_request(url="http://localhost:8080/api/scheduler/tasks/23/start", method="POST")

# make_request(url='http://localhost:8080/api/scheduler/tasks/23/interval',method='PUT',data={"interval":5})
