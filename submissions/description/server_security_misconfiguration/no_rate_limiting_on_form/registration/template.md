# No Rate Limiting on Registration Form

## Overview of the Vulnerability

Rate Limiting prevents an application from becoming unresponsive or unavailable due to too many requests exhausting the application's resources. A lack of rate limiting on a registration form allows an attacker to send a number of requests to the server which registers an account on the service for each request, and will generate a new user. This has the risk of generating a large set of spam accounts with the service, which the attacker can use to spam other users and disrupt the platform.

## Business Impact

No rate limiting on a registration form can result in reputational damage to the organization if an attacker generates a large amount of accounts for a service and uses it to spam other users, or to disrupt the platform via other means. It also has the potential to cause accelerated service usage, which can incur a direct financial cost in environments with SaaS services or pay on demand systems.

## Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP, to record and intercept web traffic from your browser
1. Using a browser, navigate to {{url}}
1. Fill out the registration form
1. Submit the form while using the HTTP intercept proxy to intercept the request
1. Using the HTTP intercept proxy, re-issue the captured request 400 times in rapid succession
1. Observe within the HTTP intercept proxy that all 400 of these requests successfully generate new accounts, showing that there is no rate-limiting on the form
1. Perform another, manual account registration form submission in the browser without the interception proxy enabled
1. Observe that the form is submitted successfully. This shows that there is no silent lockout implemented

## Proof of Concept

The following screenshots demonstrate a lack of rate limiting on the registration form, followed by a successful form submission:

{{screenshot}}
