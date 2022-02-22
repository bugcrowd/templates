# Generic Broken Access Control

## Overview

Access controls help enforce users' access and interactions with applications and APIs through authorization. When access controls are broken, users are able to perform functions outside of the intended user functionality. Malicious attackers can typically leverage broken access controls to elevate privileges, or manipulate, destroy, or disclose data, depending on the type of access control vulnerability being exploited.

Broken access control in {{application}} of {{target}} allows malicious attacker to {{action}}.

## Walkthrough & PoC

1. Navigate to {{url}} and log into an account that should not be able to perform {{action}}
1. Insert {{payload}} into {{parameter}} in {{url}}
1. Observe that the account that should not be able to perform {{action}} can now perform {{action}}

## Vulnerability Evidence

The screenshot below demonstrates the broken access control at {{url}}:

{{screenshot}}

## Demonstrated Impact

Broken access controls can result in modification or theft of data, including Personally Identifiable Information (PII), This can lead to financial loss, identity theft, and reputational damage of {{program}} and their users.

A malicious attacker could abuse this broken access control further to {{action}} by using the following payload:

{{payload}}

You can find a screenshot of the full exploit taking place below:

{{screenshot}}
