# Unnecessary Data Collection (WIFI SSID & Password)
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Unnecessary data collection of the WIFI SSID and password in {{application}} of {{target}} allows a malicious attacker to {{action}}

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Login to in-scope asset at <www.inscope.com/login>
1. Browse to account page
1. Modify ID token to add single quote
1. View error which states 'SQL Syntax Error'
1. Replace ID value with `1' waitfor delay '00:00:10'; `
-->

1. Log in to {{application}}
1. Navigate to {{url}} and observe in an HTTP proxy that the WIFI SSID and password is being collected by {{application}}


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For unnecessary data collection of the WIFI SSID and password, please post a screenshot from a HTTP proxy that shows the  collection being done by {{application}}.
-->

You can observe the unnecessary data collection of the WIFI SSID and password being performed by {{application}} below:

{{screenshot}}
## Demonstrated Impact
<!--
Envision how the WIFI SSID and password could be used to perform malicious actions if obtained by a malicious attacker. If a malicious action is possible, provide a full proof-of-concept here.
-->

The WIFI SSID and password is not used by {{application}} and therefore its collection is unnecessary. If a malicious attacker were to gain access to this collected information they could perform {{action}}.
