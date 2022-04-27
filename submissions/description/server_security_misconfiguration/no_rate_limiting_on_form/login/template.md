# No Rate Limiting on Login Form

## Overview of the Vulnerability

Rate Limiting prevents an application from becoming unresponsive or unavailable due to too many requests exhausting the application's resources. A lack of rate limiting on a login form allows an attacker to send a number of requests to the server which will attempt to authenticate a user with the supplied credentials, even if they are invalid. This has the risk of an attacker being able to attempt to bruteforce credentials for users without any protections, and can be used as a method of credential stuffing and compromising accounts to the service.

## Business Impact

No rate limiting on a login form can result in reputational damage to the organization if an attacker successfully takes over an account through a bruteforce login attempt. It also has the potential to cause accelerated service usage, which can incur a direct financial cost in environments with SaaS services or pay on demand systems.

## Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP, to record and intercept web traffic from your browser
1. Using a browser, sign into the application
1. Navigate to {{url}} and fill out the form
1. Submit the login form while using the HTTP intercept proxy to intercept the request
1. Using the HTTP intercept proxy, re-issue the captured request 400 times in rapid succession
1. Observe within the HTTP intercept proxy that all 400 of these requests generate successful login attempts, showing that there is no rate-limiting on the form

## Proof of Concept

The following screenshot shows a lack of rate limiting on the login form:

{{screenshot}}
