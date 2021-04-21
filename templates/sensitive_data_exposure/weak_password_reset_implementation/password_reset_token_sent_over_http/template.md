# Password Reset Token Sent Over HTTP

## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

Transmitting sensitive or security-critical data in cleartext (not HTTPS) in a communication channel allows it to be intercepted by a malicious attacker. 

The password reset token is being transmitted over HTTP rather than HTTPS which is best practice. As such a malicious attacker could intercept this token and reset the users password, thus locking them out of their account.

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

Example:

1. Request a password reset link for a valid account
1. Click on the reset link
1. Intercept using Burpsuite to view HTTP request 

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an SQL Injection vulnerability, please include specific NON-PII information discovered in the database, such as Database Version, a listing of database tables, or an injected 'sleep' payload.

You may present your evidence as output from a tool such as SQLMap, unless the program forbids the use of these tools, and it may be in the format of terminal output, screenshots, or video.

**DO NOT ACCESS PII**
-->

The screenshot below displays the password reset token being sent over HTTP:

{{screenshot}}

## Demonstrated Impact
<!--
Demonstrating access to data other than the database version or database tables is NOT permitted without explicit permission from the program.
**DO NOT ACCESS PII**

A malicious attacker could ...
--> 

A malicious attacker could intercept this token as it is being transmitted over HTTP and not HTTPS and use it to reset the users password and lock them out of their account, as is being demonstrated in the below screenshot:

{{screenshot}}

