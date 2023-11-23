# Weak Login Function on Non-Operational Endpoint

## Overview of the Vulnerability:

Weak login functionality arises from improperly configured authentication practices which weakens the security of the authentication process of an application. This application does not protect the security of users’ credentials as it allows a login function to load on a non-operational endpoint that is not intended for public access. An attacker can Person-in-the-Middle (PiTM) communication between the user and the application on the specified IP to steal administrative credentials and login to the system using admin privileges.

## Business Impact:

Weak login function can lead to indirect financial loss through an attacker accessing login credentials and gaining access to the user’s account. From here, the attacker could delete, or modify data. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact is dependent on the sensitivity of the data being stored in, and transmitted by the application, as well as the privileges of the account the attacker gains access to.

## Steps to Reproduce:

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to the vulnerable endpoint: {{URL or x.x.x.x}}

1. Man-in-The-Middle (MiTM) communication and route traffic through your computer:

{{screenshot}}

1. Attempt to sign into the website using the login button
1. In the HTTP interception proxy, observe that the requests are unencrypted in transit

## Proof of Concept (PoC):

The following screenshots show the full exploit:

{{screenshot}}
