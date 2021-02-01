## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Password reset token is not invalidated after email change in {{application}} of {{target}}, allowing a malicious attacker to {{action}}

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
1. Navigate to {{url}} and initiate a password reset
1. Navigate to {{url}} and modify the associated account email address
1. Observe that the password reset token that was received in the earlier step is still valid


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a reset password token that is not invalidated after email change, please post a screenshot or video that shows that the token remains valid even after an email change.
-->

You can observe that the password reset token is not invalidated after email change below:

{{screenshot}}
## Demonstrated Impact
<!--
Envision how a reset password token that is not invalidated after email change could endanger the user account. If a malicious action is possible, provide a full proof-of-concept here.
-->

A password reset token that is not invalidated after email change endangers the user by allowing an email that is no longer associated with the account to perform a password reset.
