# Mobile security misconfiguration - Ssl certificate pinning defeatable
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Defeatable SSL certificate pinning in {{application}} of {{target}} allows a malicious attacker to {{action}}

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

1. Install {{application}} on your mobile device
1. Route your mobile device's HTTP traffic through a proxy server and install/trust the proxy server's CA certificate
1. Execute the following {{payload}} to defeat the certificate pinning used by {{application}}
1. Open {{application}} and observe that the HTTP traffic from the application is routed through the proxy server, meaning the certificate pinning was defeated


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a defeatable certificate pinning, please include a screenshot or video of the application HTTP traffic being routed through a HTTP proxy, demonstrating that the application does not implement certificate pinning.
-->

You can observe the application's HTTP traffic being routed through a HTTP proxy below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to show that the defeatable certificate pinning could be used by a malicious attacker in some impactful way. If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse the defeatable certificate pinning in {{application}} in order to perform a man-in-the-middle attack on the user. With a man-in-the-middle attack, a malicious attacker could perform {{action}}.
