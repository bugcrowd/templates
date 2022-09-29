# Session Fixation using Remote Attack Vector

## Overview of the Vulnerability

Session fixation occurs when there is an error in the way the application manages session IDs for users. An attacker with remote access to the application can set the session or cookies manually to force the targeted user’s browser to fixate on using the attacker's session cookies.This can be performed remotely by setting a token in the URL or a hidden form by chaining vulnerabilities.

## Business Impact

This vulnerability could lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Sign into a user’s account
1. Perform {{action}} to see the session token in the URL or form field:

{{screenshot}}

1. Perform {{action}} to send the request in an incognito browser and login using the same user credentials

## Proof of Concept (PoC)

The screenshot(s) below shows the full exploit:

{{screenshot}}
