Rate Limiting prevents an application from becoming unresponsive or unavailable due to too many requests exhausting the application's resources. A lack of rate limiting on a password change form allows an attacker to send a number of requests to the server which will attempt to change the password of a user with the supplied credentials, even if they are invalid. This has the risk of an attacker being able to attempt to bruteforce credentials for users without any protections, and can be used as a method of credential stuffing and compromising accounts to the service.

## Business Impact

No rate limiting on a password change form can result in reputational damage to the organization if an attacker successfully takes over an account through guessing valid credentials or preventing legitimate users access to their accounts. It also has the potential to cause accelerated service usage, which can incur a direct financial cost in environments with SaaS services or pay on demand systems.

## Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP, to record and intercept web traffic from your browser
1. Using a browser, sign into the application and navigate to {{url}}
1. Fill out the password change form 
1. Submit the form while using the HTTP intercept proxy to intercept the request
1. Using the HTTP intercept proxy, re-issue the captured request 400 times in rapid succession
1. Observe within the HTTP intercept proxy that all 400 of these requests generate a ‘HTTP 200 OK’ response, showing that there is no rate-limiting on the form
1. Perform another, manual password change form submission in the browser without the interception proxy enabled
1. Observe that the form is submitted successfully which shows that there is no silent lockout implemented

## Proof of Concept

The following screenshots demonstrate a lack of rate limiting on the password change form, followed by a successful form submission:

{{screenshot}}
