# No Password Policy

## Overview of the Vulnerability:

When there is no password policy set, the strength of the overall authentication process for an application is diminished. No password policy is present within this web application, allowing for weak passwords to be used by any user, including Administrator accounts. This makes it relatively easy for an attacker to use password spraying or brute forcing methods to guess users passwords, with minimal effort required to compromise multiple users’ accounts.

## Business Impact:

Having no password policy can result in reputational damage for the business through the impact to customers’ trust as they could believe that the business doesn’t take their account security seriously or trust that their data within will remain secure.

## Steps to Reproduce:

1. Use a browser to navigate to: {{URL}}
1. Attempt to login
1. Observe that the application allows the use of weak passwords, such as `a`

## Proof of Concept (PoC):

The following screenshot shows that there is no password policy:

{{screenshot}}
