# Generic Broken Authentication and Session Management

## Overview

Broken authentication and session management occurs when session IDs or login information is improperly handled or not encrypted. A malicious attacker can exploit these weaknesses to steal users' login data, forge session information, or otherwise gain unauthorized access to a website or application.

Broken authentication and session management in {{application}} of {{target}} allows malicious attacker to {{action}}.

## Walkthrough & PoC

1. Navigate to {{url}}
1. Insert {{payload}} into {{parameter}} in {{url}}
1. Observe that the authentication method or session management has been compromised in some way

## Vulnerability Evidence

The screenshot below demonstrates the broken authentication and session management at {{url}}:

{{screenshot}}

## Demonstrated Impact

Broken authentication and session management can result in modification or theft of data, including Personally Identifiable Information (PII). This can lead to financial loss, users' identity theft, and reputational damage of {{program}} and their users.

A malicious attacker could abuse this broken authentication and session management further to {{action}} by using the following payload:

{{payload}}

You can find a screenshot of the full exploit taking place below:

{{screenshot}}
