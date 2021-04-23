# Sensitive application data stored unencrypted on internal storage
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Sensitive application data is stored unencrypted on internal storage in {{application}} of {{target}}, allowing a malicious attacker to {{action}}

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

1. Log in to {{application}} and input personal, sensitive data so that it is stored by the application
1. Access the internal storage of {{application}}
1. Navigate to {{url}} and observe the sensitive application data that is stored unencrypted by {{application}}


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For sensitive application data being stored unencrypted, please include a screenshot of the data being store unencrypted by the application.
-->

You can observe the sensitive information being stored unencrypted on internal storage by the application below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to abuse the sensitive data exposure by demonstrating that the unencrypted data could be used by a malicious attacker in some impactful way, and that there is a reliable way in which the malicious attacker could gain access to the internal storage. If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse this unencrypted data storage to steal sensitive information that a user inputted in {{application}}. With this sensitive information, a malicious attacker could perform {{action}}.
