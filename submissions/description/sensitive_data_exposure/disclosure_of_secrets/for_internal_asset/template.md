# Disclosure of Secrets for Internal Assets

## Overview

Secrets are information related to credentials of user accounts. When this information is exposed for internal assets, it can place sensitive data at risk. This can occur due to a variety of scenarios such as: not encrypting data, SSL not being used for authenticated pages, or passwords being stored using unsalted hashes. A malicious attacker could leverage disclosed secrets to access the internal application or environments where the application is hosted.

Disclosure of secrets for an internal asset in {{application}} of {{target}}, allows a malicious attacker to {{action}}.

## Walkthrough & PoC

1. Navigate to the following URL: bugcrowd.com/vulnerable-endpoint
1. Setup a Web Proxy using {{software}}
1. {{action}} and intercept with Web Proxy
1. Notice the disclosure of sensitive data in the response:

{{screenshot}}

## Vulnerability Evidence

The following image(s) show the full exploit:
{{screenshot}}

## Demonstrated Impact

Disclosure of secrets for internal assets can enable malicious attackers to attack and escalate privileges on endpoints that are otherwise non-public. This could lead to financial loss, identity theft, and reputational damage of {{program}} and their users.
