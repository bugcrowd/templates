# Disclosure of Secrets for Publicly Accessible Asset

## Overview of Vulnerability

Sensitive data exposure occurs when the sensitive data is not behind an authorization barrier. When this information is exposed it can place critical sensitive data, such as secrets, at risk. This can occur due to a variety of scenarios such as: not encrypting data, Hyper Text Transfer Protocol Secure (HTTPS) not being used for authenticated pages, or passwords being stored using unsalted hashes. A malicious attacker could leverage disclosed secrets to access and escalate privileges on applications and hosted environments.

Vulnerability Specifics to the Application:

Disclosure of secrets for a publicly accessible asset on {{application}} of {{target}} allows an attacker to {{action}}.

## Steps to Reproduce

<!-- Prerequisites and environment used for testing - fill in as needed

Prerequisites:
-   Example, having access to two different levels of user permissions
-   Example, having HTTP interception proxy (such as Burp Suite or OWASP ZAP) set up with the browser
    
Researcher’s Environment:
-   Browser and version:
-   Operating System and version:
-   Tools used and versions of each: 
-   User Agent: 
-->

1. Using {{browser-used}}, navigate to: {{URL}}/data-disclosed/
1. Using {{software}} and {{search-terms}}, crawl open source databases and publicly accessible data for secrets
1. Observe that the following endpoint reveals secret data:

{{value}}

## Proof of Concept (PoC)

You can observe the exposed secrets for a publicly accessible asset below:

{{screenshot}}

## Demonstrated Impact

Disclosure of secrets for assets can enable malicious attackers to attack and escalate privileges on API endpoints and application environments, they can then execute functions under the guise of an admin or user depending on the permissions of the secret. This could lead to financial loss, identity theft, and reputational damage of {{program}} and their users.

A malicious attacker could abuse the exposed secrets for a publicly accessible asset to perform {{action}}.
