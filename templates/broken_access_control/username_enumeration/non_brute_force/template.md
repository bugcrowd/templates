# Username/Email Enumeration (Non-Brute Force)

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]
 
-->

Username enumeration on {{target}} allows a malicious attacker to enumerate usernames.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Navigate to {{url}}
1. Observe usernames/emails are visible on the page {{url}}

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a user enumeration vulnerability, please include a simple URL or HTTP payload that can be executed to easily demonstrate and reproduce the issue. 
-->

Below is a screenshot demonstrating the {{parameter} executing at {{url}}.

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to escalate the username enumeration to perform additional actions (such as performing additional enumeration which may not initially be present exposing additional PII. If this is possible, provide a full proof-of-concept here. Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
--> 

A malicious attacker could abuse this username enumeration further to {{action}} by performing the following actions using the following {{payload}} to extract sensitive information:

```
{{payload}}
```

The screenshot below demonstrates the objects accessed:

{{screenshot}}

