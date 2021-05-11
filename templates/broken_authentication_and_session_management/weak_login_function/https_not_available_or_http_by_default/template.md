# Weak login function: HTTPS not available or HTTP by default

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]
-->

HTTPS not available or HTTP by default on login page of {{application}} allows a malicious attacker to {{action}}

## Walkthrough & PoC

<!-- Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Utilize an HTTP proxy to record and intercept web traffic from your browser
1. Browse to the login URL at {{url}}
1. Attempt to sign into the website using the login button
1. In the HTTP proxy, observe that the credentials are submitted over HTTP by default

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a failure to use HTTPS or HTTP by default on a login action, please include a screenshot of an HTTP proxy log showing that credentials are submitted by the login page in HTTPS by default.
-->

Please view the evidence showing that HTTPS not available or HTTP by default below. {{screenshot}}

## Demonstrated Impact

<!--
Attempt to escalate HTTPS not available or HTTP by default on the login page. If this is possible, provide a full proof-of-concept here.
-->

All web requests transmitted over HTTP are transmitted in plaintext, allowing any attacker on the same network to observe these requests, and obtain the login credentials. 
