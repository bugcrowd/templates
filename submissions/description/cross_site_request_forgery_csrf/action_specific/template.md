# Cross-Site Request Forgery (Authenticated Action)

## Overview of the Vulnerability:

Cross-Site Request Forgery (CSRF) occurs when requests to the application are submitted on behalf of an authenticated user without their knowledge via crafted, malicious code which can be in the form of a link the user clicks. The application is unable to distinguish between the malicious request and a legitimate request from the user.

CSRF is possible for this application for a specific action, such as a logout, login, or other specific user action, allowing an attacker to submit requests to the application on behalf of an authenticated user. Additionally, the attacker needs to socially engineer the user to click on a link, or paste the malicious code into the user’s browser. If successful, the code will execute within that user’s browser in the context of this domain.

When an attacker can control code that is executed within a user’s browser, they are able to carry out any actions that the user is able to perform, including accessing any of the user's data and modifying information within the user’s permissions. This can result in modification, deletion, or theft of data, including accessing or deleting files, or stealing session cookies which an attacker could use to hijack a user’s session. The attacker’s actions are limited by the privileges of the user, as well as the application’s capabilities and the data stored within it.

## Business Impact:

CSRF could lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce:

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to login to the application at: {{URL}}
1. Navigate to the following URL and submit the form: {{URL}}
1. Use the HTTP interception proxy to intercept the request triggered by the form
1. Modify the request with the following CSRF POC code:

```HTML
{{CSRF POC}}
```

 and forward the request to the endpoint:

```HTTP
{{request}}
```

1. Navigate to the following URL and observe the action taken by the CSRF POC code was successful: {{URL}}

## Proof of Concept (PoC):

Please view the proof of concept CSRF HTML code below:

{{screenshot}}

Please view the evidence showing an action that is vulnerable to CSRF below:

{{screenshot}}
