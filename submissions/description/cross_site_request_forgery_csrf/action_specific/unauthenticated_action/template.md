# Cross-Site Request Forgery For Unauthenticated Action

## Overview of the Vulnerability:

Cross-Site Request Forgery (CSRF) occurs when requests to the application are submitted on behalf of a user without their knowledge via crafted, malicious code which can be in the form of a link the user clicks. The application is unable to distinguish between the malicious request and a legitimate request from the user. Additionally, the attacker needs to socially engineer the user to click on a link, or paste the malicious code into the user’s browser. If successful, the code will execute within that user’s browser in the context of this domain.

CSRF is possible for this application for an unauthenticated user action, allowing an attacker to submit requests to the application on behalf of an unauthenticated user. This can include actions such as registration which can result in multiple fake accounts, or a login action which can login accounts uneccisarily.

## Business Impact:

CSRF could lead to reputational damage for the business through the impact to customers’ trust in the application. Not having CSRF protection on unauthenticated actions means the application is more susceptible to XSS attacks which can involve an attacker gaining access to user data.

## Steps to Reproduce:

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Modify the request with the following CSRF POC code:

```HTML
{{CSRF POC}}
```

 and forward the request to the endpoint:

```HTTP
{{request}}
```

1. Navigate to the following URL and observe within the HTTP interception proxy that the action taken by the CSRF POC code was successful: {{URL}}

## Proof of Concept (PoC):

Please view the proof of concept CSRF HTML code below:

{{screenshot}}

Please view the evidence showing an action that is vulnerable to CSRF below:

{{screenshot}}
