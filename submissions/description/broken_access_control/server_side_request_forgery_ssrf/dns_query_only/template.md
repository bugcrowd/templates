# DNS-Only Server-Side Request Forgery

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->
Server-side request forgery (SSRF) is a web security vulnerability that allows a malicious attacker to induce the server-side application to make HTTP requests to an arbitrary domain of the attacker's choosing. Such domains may include internal cloud server meta-data which consists of sensitive configuration information, internal HTTP database interfaces allowing database access, or using `file://` URI to read sensitive files.

A SSRF in {{application}} was found via the {{parameter}} at {{url}} was found, which allows a malicious attacker to observe DNS queries. 

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Set up a Burp Collaborator instance
1. Log in to {{application}} at {{url}}
1. Navigate to {{url}}
1. Enter {{payload}}
1. Observe DNS interaction on Collaborator

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a DNS-only SSRF, the best evidence is a screen recording or image of incoming DNS requests. 
-->

The screenshot below shows incoming DNS queries from the application.

{{screenshot}}

## Demonstrated Impact

<!--
Where possible and safe, escalate the SSRF to have some kind of tangible security impact, such as exfiltrating data. If no impact can be demonstrated other than receiving DNS interactions, this will most likely be considered as P5/informational severity.
--> 

A malicious attacker could abuse this SSRF further to {{action}} by using the following payload.

```
{{payload}}
```

Below is a screenshot of the full exploit taking place:

{{screenshot}}
