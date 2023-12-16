# Username Enumeration

## Overview of the Vulnerability:

Username enumeration is a vulnerability where an attacker is able to confirm or guess correct usernames through the difference in the server’s response to input. It often occurs on login, registration, and password reset pages. This application has a username enumeration vulnerability which allows an attacker to brute force passwords, stuff credentials, or for further attacks such as social engineering.

## Business Impact:

Username enumeration can result in reputational damage for the business through the impact to customers’ trust in the application’s security of user accounts. If an attacker is able to chain this vulnerability with another it can lead to user account compromise and data exfiltration.

## Steps to Reproduce:

1. Use a browser to navigate to: {{URL}}
1. Attempt to authenticate
1. Observe the response from the server indicating that the username/email is valid or not

## Proof of Concept (PoC):

The screenshot below shows the response from the server:

{{screenshot}}
