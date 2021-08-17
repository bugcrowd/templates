# Critically sensitive data exposure: private API keys
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Private API keys are exposed on {{application}} of {{target}}, allowing a malicious attacker to {{action}}

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

1. Navigate to {{url}} and observe and copy the private API key value
1. Using an HTTP proxy or web browser, use the private API key to submit {{payload}} to {{url}}, observing that using the private API key allows {{action}}


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For exposed private API keys, please include a screenshot of both the exposed API key as well as a screenshot from the HTTP proxy of the API key being used successfully to perform {{action}}.
**DO NOT SAVE PII**
-->

You can observe the exposed private API keys as well as verify it's validity below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to abuse the private API key to access sensitive data or sensitive functions, but do not save or utilize the sensitive data in any way.
-->

A malicious attacker could abuse exposed private API keys by using them to perform {{action}}.
