# Overview

Sensitive data is information that should be behind an authorization barrier. When this information is exposed it can place critical sensitive data at risk. This can occur due to a variety of scenarios such as: not encrypting data, SSL not being used for authenticated pages, or passwords being stored using unsalted hashes. Examples of sensitive data include, but are not limited to: Personally Identifiable Information (PII), Social Security Numbers (SSN), medical data, banking information, and login credentials.

Sensitive data relating to {{program}} was found at {{url}} which was accessed through {{action}}. This allows a malicious attacker to exfiltrate sensitive data, such as the types listed above, or perform {{action}}.

## Walkthrough & PoC

Example:

1. Browse to the URL `{{url}}/data/`
1. You will see the data being leaked from the server, this contains PII for all users in the platform
1. Clicking on any user will show their email address, real name, and postal address

## Vulnerability Evidence

The screenshots/video below displays the sensitive data at {{url}}:

{{screenshot}}

## Demonstrated Impact

Exposure of this sensitive information could lead to financial loss, identity theft, and reputational damage of {{program}} and their users.

This data could be used by a malicious attacker in multiple ways, such as:

1. Selling of databases and database content
1. Using credentials to take over user accounts
1. {{action}}
