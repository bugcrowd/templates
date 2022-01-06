# Cross site request forgery: Application-wide CSRF

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]
-->

Application-wide cross site request forgery is possible on {{application}} allowing a malicious attacker to {{action}}

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
1. Repeat the above steps for every form on the application, demonstrating that the lack of CSRF protection is an application-wide issue

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an application-wide CSRF vulnerability, please include the proof of concept CSRF HTML code for at least four sensitive CSRF actions.
-->

Please view the proof of concept CSRF HTML code below for sensitive action 1.
{{payload}}

Please view the proof of concept CSRF HTML code below for sensitive action 2.
{{payload}}

Please view the proof of concept CSRF HTML code below for sensitive action 3.
{{payload}}

Please view the proof of concept CSRF HTML code below for sensitive action 4.
{{payload}}


## Demonstrated Impact

<!--
Attempt to escalate the lack of CSRF protection to perform an account takeover or some other sensitive action. If this is possible, provide a full proof-of-concept here.
-->

An application that lacks CSRF protection on all forms potentially allows an attacker to perform all sensitive actions on behalf of a user, simply by having them visit a malicious website.
