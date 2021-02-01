## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Password reset token has long timed expiry in {{application}} of {{target}} allows a malicious attacker to {{action}}

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
1. Observe in a HTTP proxy or over time that the password reset token has a long timed expiry


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a reset password token with a long timed expiry, please post a screenshot that shows that the token does not expire after a long time. Please specify the specific amount of time is required before the token expires. If the token never expires, please specify this below.
-->

You can observe that the password reset token has a long timed expiry below:

{{screenshot}}
## Demonstrated Impact
<!--
Envision how the long timed expiry of the password reset token could be used by a malicious attacker (such as the brute forcing of valid tokens). If a malicious action is possible, provide a full proof-of-concept here.
-->

A password reset token with a long timed expiry could allow a malicious attacker to gain access to an account. If the token does not expire for a long period of time, this simply allows the attacker more time to discover an unexpired reset password token and use it to take over its account.
