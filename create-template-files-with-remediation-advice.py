#!/usr/bin/python3

import json,os,requests

def remediationAdviceExists(vrtItem):
    try:
        vrtItem["remediation_advice"]
        return True
    except:
        return False

def referencesExists(vrtItem):
    try:
        vrtItem["references"]
        return True
    except:
        return False

def childrenExists(vrtItem):
    try:
        vrtItem['children']
        return True
    except:
        return False

def printReport(vrtItem):
    template = ""
    referencesString = "## References\n"
    remediationAdvice = ""
    if referencesExists(vrtItem):
        for r in vrtItem["references"]:
            referencesString = referencesString + "\n- " + r

    header = "## Description\n\n\n## Reproduction Steps\n\n\n"
    if remediationAdviceExists(vrtItem):
        remediationAdvice = "\n\n## Remediation Advice\n\n" + vrtItem["remediation_advice"] 
    if referencesExists(vrtItem):
        referencesString = referencesString + "\n"

    template = template + header + referencesString + remediationAdvice
    template = template + "\n"
    return template


currentvrturl = "https://raw.githubusercontent.com/bugcrowd/vulnerability-rating-taxonomy/master/mappings/remediation_advice/remediation_advice.json"
basedir = "templates/"

vrtdata = requests.get(currentvrturl)

if vrtdata.status_code == 200:
    data = json.loads(vrtdata.text)
else:
    print("Something went wrong")
    os.Exit()

for vrtCategory in data['content']:
    f = open(basedir + vrtCategory["id"] + "/template.md", "w")
    f.write(printReport(vrtCategory))
    if childrenExists(vrtCategory):
        for vrtItem in vrtCategory['children']:
            f = open(basedir + vrtCategory["id"] + "/" + vrtItem["id"] + "/template.md", "w")
            f.write(printReport(vrtItem))
            if childrenExists(vrtItem):
                for vrtSubItem in vrtItem['children']:
                    f = open(basedir + vrtCategory["id"] + "/" + vrtItem["id"] + "/" + vrtSubItem["id"] + "/template.md", "w")
                    f.write(printReport(vrtSubItem))




