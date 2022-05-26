# Password Reset Token Leakage via Host Header Poisoning

## Overview of the Vulnerability

When the password reset implementation is weak, the strength of the overall authentication process for the application is diminished. `Host` header poisoning occurs when the `Host` header is manipulated in a HTTP request to point to a domain an attacker controls. From here, when the user clicks on the password reset link sent to their email, the attacker can capture the the token and reset a user’s password, locking the user out of their account and achieving full account takeover.

## Business Impact

Weak password reset implementation could lead to data theft from the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users. This includes them performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Click on the reset link
1. Capture the request using the HTTP interception proxy
1. Manipulate the `Host` header to point to a domain you control
1. From the user’s email account, click the password reset link
1. Observer that an attacker can capture the password reset token

## Proof of Concept (PoC)

The screenshot below displays the weak password reset implementation:

{{screenshot}}
