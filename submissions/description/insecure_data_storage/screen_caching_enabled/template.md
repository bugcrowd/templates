# Screen caching enabled
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Screen caching is enabled {{application}} of {{target}}, allowing a malicious attacker to {{action}}

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

1. Log in to the mobile application of {{application}} and access some screen where sensitive information is displayed
1. Click the home button, and navigate to where the mobile operating system stores cached application screenshots
1. Observe the screenshot taken when the home button was clicked, and observe the sensitive information that was captured


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For non-sensitive application data being stored unencrypted, please include a screenshot of the screen cache being stored within the mobile operating system.
-->

You can observe the screen cache that contained sensitive information below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to abuse the enabled screen caching by demonstrating that the data captured in the screen cache can be used in some impactful way. If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse this screen caching being enabled to steal sensitive information that is captured and stored unencrypted when a user exits {{application}}. With this sensitive information, a malicious attacker could perform {{action}}.
