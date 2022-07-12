# Account Squatting via OAuth Misconfiguration

## Overview of the Vulnerability

OAuth is an authorization framework used to identify and authenticate users for an application. There are a number of implementation misconfigurations which can lead to an OAuth framework being implemented insecurely.

During the OAuth based account registration process, the OAuth authorization flow creates a new account for an email address and grants access via an OAuth token without checking if there is a pre-existing account for the same email address. This allows an attacker to register an account with a legitimate email and “squat” on the account. When the legitimate user creates an account with their email address using the OAuth workflow, they are unknowingly logged into the original account that the attacker created. This means that the attacker is still able to access the account.

## Business Impact

Depending on the type of misconfiguration found in the OAuth implementation, exposure or manipulation of data from within it could lead to financial loss and reputational damage for the business.

## Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. With the HTTP intercept proxy turned on, login to the application and capture the response in the the HTTP intercept proxy
1. Observe the OAuth misconfiguration

## Proof of Concept (PoC)

The screenshot below demonstrates the OAuth misconfiguration:

{{screenshot}}
