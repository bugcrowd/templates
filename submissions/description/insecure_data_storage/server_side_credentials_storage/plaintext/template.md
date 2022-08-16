# Server-Side Plaintext Credential Storage

## Overview of the Vulnerability

When sensitive application data is stored insecurely in server-side storage it is susceptible to being identified and used maliciously. An attacker can abuse server-side credential storage by using another vulnerability to gain access to the server of the application and exfiltrating all the plaintext credentials. With these plaintext credentials, an attacker can take over user accounts or impersonate users within the application.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust. If an attacker is successful in exfiltrating user credentials from the server it can lead to fraud and data loss for the company.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Register an account in the application and create credentials for the account
1. Use a browser to navigate to: {{URL}}
1. Using the HTTP interception proxy, observe that the application is storing user credentials on their server in plaintext

## Proof of Concept (PoC)

The screenshots below demonstrate the insecure data storage:

{{screenshot}}
