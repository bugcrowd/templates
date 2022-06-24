# Account Takeover

## Overview of the Vulnerability

OAuth is an authorization framework used to identify and authenticate users for an application. There are a number of implementation misconfigurations which can lead to an OAuth framework being implemented insecurely that an attacker can leverage to take over multiple user accounts and manipulate or retrieve data.

## Business Impact

Account takeover can lead to financial and loss through an attacker's access to multiple user accounts and the data within. This attack can also lead to reputational damage for the business through the impact to customers’ trust in the security of the application.

## Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. With the HTTP intercept proxy turned on, login to the application and capture the response in the the HTTP intercept proxy
1. Observe the OAuth misconfiguration that leads to account takeover

## Proof of Concept (PoC)

The screenshot below demonstrates the OAuth misconfiguration:

{{screenshot}}
