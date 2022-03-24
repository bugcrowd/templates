# Disclosure of Secrets for Internal Assets

## Overview of the Vulnerability

Sensitive data exposure occurs when the sensitive data is not behind an authorization barrier. When this information is exposed it can place critical sensitive data, such as secrets, at risk. This can occur due to a variety of scenarios such as: not encrypting data, Hyper Text Transfer Protocol Secure (HTTPS) not being used for authenticated pages, or passwords being stored using unsalted hashes. An attacker could leverage disclosed secrets to access the internal application or the environment where the application is hosted.

Vulnerability Specifics to the Application:

Disclosure of secrets for an internal asset in {{application}} of {{target}}, allows an attacker to {{action}}.

## Business Impact

Disclosure of secrets for internal assets can enable malicious attackers to attack and escalate privileges on endpoints that are otherwise non-public. This could lead to financial loss, identity theft, and reputational damage of {{customer-name}} and their users.

## Steps to Reproduce

1. Setup a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Using {{browser-used}}, navigate to: {{url}}/vulnerable-endpoint/
1. Perform {{action}} and intercept with HTTP interception proxy
1. Observe the disclosure of sensitive data in the response, as seen below:

{{screenshot}}

## Proof of Concept (PoC)

The following image(s) show the full exploit:

{{screenshot}}
