# Disclosure of Secrets for Publicly Accessible Asset

## Overview of the Vulnerability

Sensitive data exposure occurs when the sensitive data is not behind an authorization barrier. When this information is exposed it can place critical sensitive data, such as secrets, at risk. This can occur due to a variety of scenarios such as: not encrypting data, Hyper Text Transfer Protocol Secure (HTTPS) not being used for authenticated pages, or passwords being stored using unsalted hashes. A malicious attacker could leverage disclosed secrets to access and escalate privileges on applications and hosted environments.

Vulnerability Specifics to the Application:

Disclosure of secrets for a publicly accessible asset on {{application}} of {{target}} allows an attacker to {{action}}.

## Business Impact

Disclosure of secrets for assets can enable malicious attackers to attack and escalate privileges on API endpoints and application environments, they can then execute functions under the guise of an admin or user depending on the permissions of the secret. This could lead to financial loss, identity theft, and reputational damage of {{customer-name}} and their users.

## Steps to Reproduce

1. Using {{browser-used}}, navigate to: {{URL}}/data-disclosed/
1. Using {{software}} and {{search-terms}}, crawl open source databases and publicly accessible data for secrets
1. Observe that the following endpoint reveals secret data:

{{value}}

## Proof of Concept (PoC)

An attacker could abuse the exposed secrets for the publicly accessible asset to perform {{action}}.The exposed secrets for this publicly accessible asset can be seen in the screenshot below:

{{screenshot}}
