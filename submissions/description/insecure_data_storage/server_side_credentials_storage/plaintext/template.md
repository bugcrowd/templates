# Server-side plaintext credential storage
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Credentials are stored in plaintext on the server of {{application}} of {{target}}, allowing a malicious attacker to {{action}}

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Login to in-scope asset at <www.bugcrowd.com/login>
1. Browse to account page
1. Modify ID token to add single quote
1. View error which states 'SQL Syntax Error'
1. Replace ID value with `1' waitfor delay '00:00:10'; `
-->

1. Register an account on {{application}} and create credentials for the account
1. Navigate to {{url}} and using an HTTP proxy, observe that {{application}} is storing user credentials in plaintext on their server


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

Server-side plaintext credential storage, please include a screenshot of the credentials being returned in plaintext in response to some HTTP request to show that it is being stored in plaintext on the server-side.
-->

You can observe credentials being stored in plaintext in the screenshot of a server response below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to abuse the plaintext credential storage by demonstrating that the credentials can be accessed using some other vulnerability. If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse server-side plaintext credential storage by using another vulnerability to gain access to the server of {{application}} and exfiltrating all the plaintext credentials. With these plaintext credentials, a malicious attacker could perform {{action}}.
