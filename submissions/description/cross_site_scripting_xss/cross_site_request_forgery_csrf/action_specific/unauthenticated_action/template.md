# Cross-Site Request Forgery For Unauthenticated Action

## Overview of the Vulnerability

Cross-Site Request Forgery (CSRF) occurs when requests to the application are submitted on behalf of a user without their knowledge via crafted, malicious code which can be in the form of a link the user clicks. The application is unable to distinguish between the malicious request and a legitimate request from the user.

CSRF is possible for this application for an unauthenticated user action, allowing an attacker to submit requests to the application on behalf of an unauthenticated user. Additionally, the attacker needs to socially engineer the user to click on a link, or paste the malicious code into the user’s browser. If successful, the code will execute within that user’s browser in the context of this domain.

When an attacker can control code that is executed within a user’s browser, they are able to carry out any actions that the user is able to perform, including accessing any of the user's data and modifying information within the user’s permissions. For this instance, the attacker’s actions are limited by the unauthenticated privileges of the user, and the application’s capabilities and the data stored within which are accessible to an unauthenticated user.

## Business Impact

CSRF could lead to reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to the following URL and submit the form: {{URL}}
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

## Proof of Concept (PoC)

Please view the proof of concept CSRF HTML code below:

{{screenshot}}

Please view the evidence showing an action that is vulnerable to CSRF below:

{{screenshot}}
