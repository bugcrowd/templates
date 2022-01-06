# User Password Persisted in Memory
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
User password persists in memory after use by {{application}} of {{target}}, which allows a malicious attacker to {{action}}

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

1. Utilize some software that allows computer memory to be accessed in a human-readable format
1. Log in to {{application}}
1. Navigate to {{url}} and perform {{action}}
1. Cease using {{application}}
1. Using the computer memory viewer, view the password of the user that remained in memory after use


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a user password that remained in memory, please include a screenshot or video that demonstrates that the user password is kept in memory after the application has ceased utilizing it.
-->

You can observe the plaintext password that remained in memory after utilization in {{application}} below:

{{screenshot}}

## Demonstrated Impact
<!--
Attempt to abuse the user password in memory further by attempting to use the password to perform additional actions (such as an account takeover). If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could read the user password in memory well after {{application}} is finished using it, using it to perform {{action}}.
