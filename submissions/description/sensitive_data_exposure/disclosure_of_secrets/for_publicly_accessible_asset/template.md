# Disclosure of Secrets for Publicly Accessible Asset

## Overview

Secrets are information related to credentials of user accounts. When this information is exposed for public assets, it can place critical sensitive data at risk. This can occur due to a variety of scenarios such as: not encrypting data, SSL not being used for authenticated pages, or passwords being stored using unsalted hashes. A malicious attacker could leverage disclosed secrets to access and escalate privileges on applications and hosted environments.

Disclosure of secrets for a publicly accessible asset on {{application}} of {{target}}, allows a malicious attacker to {{action}}.

## Walkthrough & PoC

1. Navigate to the following URL: bugcrowd.com/data-disclosed-url
1. Use {{software}} to crawl open source databases and publicly accessible data for secrets
1. Notice on the following endpoint the following secret was revealed:

{{value}}

## Vulnerability Evidence

You can observe the exposed secrets for a publicly accessible asset as well as verify its validity below:

{{screenshot}}

## Demonstrated Impact

Sensitive data disclosure of secrets for assets can enable malicious attackers to attack and escalate privileges on API endpoints and application environments, they can then execute functions under the guise of an admin or user depending on the permissions of the secret.

A malicious attacker could abuse the exposed secrets for a publicly accessible asset to perform {{action}}.
