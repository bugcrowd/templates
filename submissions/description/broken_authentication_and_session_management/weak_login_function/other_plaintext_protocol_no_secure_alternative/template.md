# Weak Login Function: Other Plaintext Protocol Does Not Implement Secure Alternative

## Overview of the Vulnerability

Weak login functionality arises from improperly configured authentication practices which weakens the security of the authentication process of an application. This application does not protect the security of users’ credentials as it allows the authentication to be transmitted over a plaintext protocol and does not implement a secure alternative. This means that it is possible for user credentials to be transmitted in plaintext, allowing an attacker on the same network to observe these requests, and obtain the login credentials.

## Business Impact

Weak login function can lead to indirect financial loss through an attacker accessing login credentials and gain access to the user’s account. From here, the attacker could delete, or modify data. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact is dependent on the sensitivity of the data being stored in, and transmitted by the application, as well as the privileges of the account the attacker gains access to.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Attempt to sign into the website using the login button
1. In the HTTP interception proxy, observe that the credentials are submitted over an unsecure protocol and there is no option for HTTPS

## Proof of Concept (PoC)

The following screenhots show the full exploit:

{{screenshot}}
