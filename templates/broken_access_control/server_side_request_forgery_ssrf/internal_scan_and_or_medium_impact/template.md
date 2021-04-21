# Internal High-Impact Server-Side Request Forgery

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

Server-Side Request Forgery (SSRF) in {{application}} allows attacker to perform arbitrary internal requests to perform internal network scanning

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Log in to {{application}} at {{url}}
1. Navigate to {{url}}
1. Enter {{payload}}
1. Capture request in burp when "Submit" is clicked
1. Send the request to intruder
1. Set intruder up to replace {{parameter}} value with all IP addresses in the 10.0.0.0/16 range
1. Observe that active internal web hosts respond with X, while hosts that do not have web hosts respond with Y

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For this type of SSRF, the best evidence is usually a screen recording or image of incoming requests, and a summary of the data that was exfiltrated through exploitation.
-->

The screenshot below shows the Burp intruder results filtering out active hosts.

{{screenshot}}

## Demonstrated Impact

<!--
Where possible and safe, escalate the SSRF to have some kind of tangible security impact, such as exfiltrating data. If no impact can be demonstrated other than receiving external interactions, this will most likely be considered as P5/informational severity.

As this VRT item refers to internal scans, be sure to demonstrate exactly what can be accessed internally, for example a list of active hosts. If this SSRF is not able to achieve this, take a look at some of the other SSRF VRT items to see if there is another one that is more appropriate.
--> 

A malicious attacker could abuse this SSRF to {{action}} by using the following payload.

```
{{payload}}
```

Below is a screenshot of the full exploit taking place:

{{screenshot}}
