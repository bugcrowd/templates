# Weak Registration Implementation Over HTTP

## Overview of the Vulnerability

When the registration implementation for an application is weak, it diminishes the integrity of the overall authentication process. The application sends a registration or confirmation link over an unsecure HTTP connection. An attacker with local network access can intercept and read the content of the HTTP connection, allowing them to abuse the registration process and misuse user accounts.

## Business Impact

Having a weak registration implementation can result in reputational damage for the business through the impact to customers’ trust as they could believe that the business doesn’t take their account security seriously or trust that their data within will remain secure.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Register a new user account
1. Observe that the registration implementation is connected over HTTP

## Proof of Concept (PoC)

The following screenshot shows the weak registration implementation:

{{screenshot}}
