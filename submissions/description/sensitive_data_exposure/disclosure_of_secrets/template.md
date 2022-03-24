# Disclosure of Secrets

## Overview of the Vulnerability

Sensitive data exposure occurs when the sensitive data is not behind an authorization barrier. When this information is exposed it can place critical sensitive data, such as secrets, at risk. This can occur due to a variety of scenarios such as: not encrypting data, Hyper Text Transfer Protocol Secure (HTTPS) not being used for authenticated pages, or passwords being stored using unsalted hashes.

Examples of secret data include, but are not limited to, Personally Identifiable Information (PII), Social Security Numbers, medical data, banking information, and login credentials.

Vulnerability Specifics to the Application:

Secret data relating to {{customer-name}} was found at {{url}} which was accessed through {{action}}. This allows an attacker to gain access to sensitive data, such as {{type}} listed above, or perform {{action}}.

## Business Impact

Exposure of this secret data could lead to financial loss, identity theft, and reputational damage of {{customer-name}} and their users.

This data could be used by a malicious attacker in multiple ways, including but not limited to, selling of databases and database content, and using credentials identified to take over user accounts.

## Steps to Reproduce

1. Using {{browser-used}}, log in to {{application}} at: {{url}}
1. Navigate to: {{url}}/data/
1. Observe that data is being leaked from the server through {{vulnerability type, eg. IDOR}}, this contains PII for all users in the platform
1. Clicking on any user will show their email address, real name, and postal address

## Proof of Concept (PoC)

The screenshots below displays the sensitive data at {{url}}:

{{screenshot}}
