# Cross site request forgery: CSRF

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]
-->

Cross site request forgery is possible on {{application}} allowing a malicious attacker to {{action}}

## Walkthrough & PoC

<!-- Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Sign in to {{application}} at {{url}}
1. Navigate to {{url} and submit the sensitive action form
1. Use the HTTP proxy to intercept the request triggered by the sensitive action form
1. Using the provided HTTP proxy tools or your own knowledge, create a CSRF proof of concept HTML code
1. Open the CSRF POC code created in step 4, and submit the CSRF format
1. Navigate to {{url}} and observe the action taken by the CSRF POC code was successful

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a CSRF vulnerability, please include a screenshot or video showing the successful execution of a CSRF POC code to perform some sensitive action. Please also include the proof of concept CSRF HTML code.
-->
Please view the proof of concept CSRF HTML code below.
{{screenshot}}

Please view the evidence showing a sensitive action that is vulnerable to CSRF below. {{screenshot}}

## Demonstrated Impact

<!--
Attempt to escalate the lack of CSRF protection to perform an account takeover or some other sensitive action. If this is possible, provide a full proof-of-concept here.
-->

A form that lacks CSRF protection potentially allows an attacker to perform actions on behalf of a user, simply by having them visit a malicious website.
