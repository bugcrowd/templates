# External Server-Side Request Forgery

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

Server-Side Request Forgery (SSRF) in {{application}} allows attacker to create arbitrary external HTTP requests

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Set up a Burp Collaborator instance
1. Log in to {{application}} at {{url}}
1. Navigate to {{url}}
1. Enter {{payload}}
1. Observe HTTP and DNS interaction on Collaborator

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a SSRF, the best evidence is usually a screen recording or image of incoming requests. 
-->

The screenshot below shows incoming HTTP requests and DNS queries from the application.

{{screenshot}}

## Demonstrated Impact

<!--
Where possible and safe, escalate the SSRF to have some kind of tangible security impact, such as exfiltrating data. If no impact can be demonstrated other than receiving external interactions, this will most likely be considered as P5/informational severity.
--> 

A malicious attacker could abuse this SSRF further to {{action}} by using the following payload.

```
{{payload}}
```

Below is a screenshot of the full exploit taking place:

{{screenshot}}
