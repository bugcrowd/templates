# Cross-Site Request Forgery (Application-Wide)

## Overview of the Vulnerability

Cross-Site Request Forgery (CSRF) occurs when requests to the application are submitted on behalf of an authenticated user without their knowledge via crafted, malicious code which can be in the form of a link the user clicks. The application is unable to distinguish between the malicious request and a legitimate request from the user. Additionally, the attacker needs to socially engineer the user to click on a link, or paste the malicious code into the user’s browser. If successful, the code will execute within that user’s browser in the context of this domain.

Application-wide CSRF is possible for this application, allowing an attacker to submit requests to the application on behalf of an authenticated user on multiple endpoints. This can include changing the password and email associated with the account, or deleting the user account. These actions can severely disrupt a user's experience and lead to account takeover.

## Business Impact

CSRF could lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

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
1. Repeat the above steps for every user action on the application, demonstrating that the lack of CSRF protection is an application-wide issue

## Proof of Concept (PoC)

Please view the proof of concept CSRF HTML code below:

{{screenshot}}

Please view the evidence showing that multiple actions are vulnerable to CSRF below:

{{screenshot}}
