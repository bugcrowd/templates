Cross-Site Request Forgery (CSRF) occurs when requests to the application are submitted on behalf of an authenticated user without their knowledge via crafted, malicious code which can be in the form of a link the user clicks. The application is unable to distinguish between the malicious request and a legitimate request from the user.

Flash-based CSRF is possible for this application, allowing an attacker to submit requests to the application on behalf of an authenticated user. Additionally, the attacker needs to socially engineer the user to click on a link, or paste the malicious code into the user’s browser. If successful, the code will execute within that user’s browser in the context of this domain.

**Business Impact**

CSRF could lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Modify the request with the following CSRF POC code which uses a `.SWF` file:

```HTML
{{CSRF POC}}
```

 and forward the request to the endpoint:

```HTTP
{{request}}
```

1. Navigate to the following URL and observe within the HTTP interception proxy that the action taken by the CSRF POC code was successful: {{URL}}

**Proof of Concept (PoC)**

Please view the proof of concept CSRF HTML code below:

{{screenshot}}

Please view the evidence showing an action that is vulnerable to CSRF below:

{{screenshot}}
