#!/usr/bin/env python3

import requests
import json
import sys
import os
from pathlib import Path

slugs = set() 

currentvrturl = "https://raw.githubusercontent.com/bugcrowd/vulnerability-rating-taxonomy/master/vulnerability-rating-taxonomy.json"
basedir = "templates"

vrtdata = requests.get(currentvrturl)

if vrtdata.status_code == 200:
    data = json.loads(vrtdata.text)


def printChildren(category, parentstring):
    if parentstring == "":
        parentstring = category['id']
    else:
        parentstring = parentstring + '/' + category['id']

    slugs.add(parentstring)

    try:
        children = category['children']
    except:
        return

    for child in children:
        printChildren(child, parentstring) # recursive

for category in data['content']:
    try:
        children = category['children']
    except:
        continue

    for child in category['children']:
        printChildren(category, "")

# change dirs to `templates`
os.chdir(basedir)

for slug in sorted(slugs):
    #print(slug)
    try:
        os.mkdir(slug)

        # Make sure we have a .gitkeep in the directory
        gitkeep = "{}/.gitkeep".format(slug)
        
        Path(gitkeep).touch()

    except OSError as e:
        pass

