# Password Reset Token Sent Over HTTP

## Overview of the Vulnerability

When the password reset implementation is weak, the strength of the overall authentication process for the application is diminished. Tokens sent over HTTP, predictable reset tokens, and long expiry times create weak conditions for the password reset implementation.

This application transmits the password reset token over an insecure HTTP connection, rather than HTTPS. An attacker could intercept this token and reset a user’s password, locking the user out of their account and achieving full account takeover.

## Business Impact

Weak password reset implementation could lead to data theft from the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users. This includes them performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to login to a valid account and navigate to: {{URL}}
1. Click on the reset link
1. Capture the request using the HTTP interception proxy
1. Observe that the password reset token is being sent over HTTP

## Proof of Concept (PoC)

The screenshot below displays the password reset token being sent over HTTP:

{{screenshot}}
