# OAuth Misconfiguration

## Overview of the Vulnerability:

OAuth is an authorization framework used to identify and authenticate users for an application. There are a number of implementation misconfigurations which can lead to an OAuth framework being implemented insecurely. These misconfigurations can lead to a broad range of issues which could allow an attacker to manipulate or retrieve sensitive data and potentially bypass the authentication process.

## Business Impact:

Depending on the type of misconfiguration found in the OAuth implementation, exposure or manipulation of data from within it could lead to financial loss and reputational damage for the business.

## Steps to Reproduce:

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. With the HTTP intercept proxy turned on, login to the application and capture the response in the the HTTP intercept proxy
1. Observe the OAuth misconfiguration

## Proof of Concept (PoC):

The screenshot below demonstrates the OAuth misconfiguration:

{{screenshot}}
