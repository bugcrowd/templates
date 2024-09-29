Cross-Site Request Forgery (CSRF) occurs when requests to the application are submitted on behalf of an authenticated user without their knowledge via crafted, malicious code which can be in the form of a link the user clicks. The application is unable to distinguish between the malicious request and a legitimate request from the user.

CSRF is possible within this application, allowing an attacker to log-out a valid user. Additionally, the attacker needs to socially engineer the user to click on a link, or paste the malicious code into the user’s browser. If successful, the code will execute within that user’s browser in the context of this domain, logging the user out of their session. An attacker can deny service to users using this CSRF vector to prevent access to the application and constantly logging users out.

**Business Impact**

CSRF could lead to reputational damage for the business through the impact to customers’ trust due to not being able to reliably access the application. This could also cause indirect financial impacts to the business.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Modify the request with the following CSRF POC code:

```HTML
{{CSRF POC}}
```

and forward the request to the endpoint:

```HTTP
{{request}}
```

1. Observe the user was logged out, proving that the CSRF POC code was successful

**Proof of Concept (PoC)**

Please view the proof of concept CSRF HTML code below:

{{screenshot}}

Below is a screenshot showing that the logout functionality is vulnerable to CSRF:

{{screenshot}}
