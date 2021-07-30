# Password Reset Token Sent Over HTTP

## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

{{application}} uses the Host header when sending out password reset links. This allows a malicious attacker to insert a malicious host header, leading to password reset link / token leakage.

The user will receive the malicious link in their email, and, when clicked, will leak the user's password reset link / token to the attacker, leading to full account takeover.

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

Example:

1. Click on reset the password at {{url}}
1. Intercept the application request in Burpsuite
1. Change the `Host` field to {{url}} OR add `X-Forwarded-Host: {{url}}` in the request.
1. The user will get a link like `{{url}}/reset_password/token`
1. User clicks on said link
1. Malicious attacker receive the rest password token and hijacks the user account

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an SQL Injection vulnerability, please include specific NON-PII information discovered in the database, such as Database Version, a listing of database tables, or an injected 'sleep' payload.

You may present your evidence as output from a tool such as SQLMap, unless the program forbids the use of these tools, and it may be in the format of terminal output, screenshots, or video.

**DO NOT ACCESS PII**
-->

The screenshot below displays the password reset token being intercepted and host header being changed:

{{screenshot}}

## Demonstrated Impact
<!--
Demonstrating access to data other than the database version or database tables is NOT permitted without explicit permission from the program.
**DO NOT ACCESS PII**

A malicious attacker could ...
--> 
A malicious attacker could...
