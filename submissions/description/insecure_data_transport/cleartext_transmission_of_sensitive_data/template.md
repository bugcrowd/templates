# Cleartext Transmission of Sensitive Data

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

Cleartext transmission of sensitive data token over unencrypted channels in {{application}} of {{target}} allows malicious attacker to {{action}}

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Navigate to the {{application}} at {{url}}
1. Observe data in transit does not enforce TLS for all pages.
1. Monitor the network traffic and intercept user session cookies
1. Replay the cookie and hijack the authenticated session
1. Modify user's personal identifiable information (PII)

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a cleartext transmission vulnerability, please include a simple URL that can be executed to easily demonstrate and reproduce the issue. 
-->

Below is a screenshot displaying cleartext transmission of sensitive data for the page {{url}}.

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to perform additional actions using the provided session token (such as privilege escalation). If this is possible, provide a full proof-of-concept here.
--> 

A malicious attacker could abuse the sensitive data {{action}} by using the following payload.

```
{{payload}}
```

Here is a screenshot of the full exploit taking place:

{{screenshot}}
