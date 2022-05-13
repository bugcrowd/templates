# Weak Login Function: Over HTTP

## Overview of the Vulnerability

Weak login functionality arises from improperly configured authentication practices which weakens the security of the authentication process of an application. When this application loads the login page over HTTP all web requests are transmitted in plaintext, allowing any attacker on the same network to observe these requests, and obtain the login credentials.

## Business Impact

Weak login function can lead to indirect financial loss through an attacker accessing login credentials and gain access to the user’s account. From here, the attacker could delete, or modify data. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact is dependent on the sensitivity of the data being stored in, and transmitted by the application, as well as the privileges of the account the attacker gains access to.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Attempt to sign into the website using the login button
1. In the HTTP interception proxy, observe that the credentials are submitted over HTTP

## Proof of Concept (PoC)

The following screenhots show the full exploit:

{{screenshot}}
