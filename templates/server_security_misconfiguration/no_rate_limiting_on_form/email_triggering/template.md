# No rate limiting on form: email triggering form

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]
-->

No rate limiting on email-triggering form on {{application}} allows a malicious attacker to {{action}}

## Walkthrough & PoC

<!-- Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Utilize an HTTP proxy to record and intercept web traffic from your browser
1. Sign in to {{application}} at {{url}}
1. Navigate to {{url}} and fill out the form that triggers an email, using an email that you own as the destination
1. On submitting the form, use the HTTP proxy to intercept the request
1. Re-issue the captured request 25 times in rapid succession
1. In the target email address, observe that all 25 of these requests triggered an email, showing that there is no rate-limiting on the form at {{url}}

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a lack of rate limiting on a form that triggers an email, please include a screenshot or video showing that multiple submissions of the form in rapid succession failed to trigger any rate limiting by the application.
-->

Please view the evidence showing a lack of rate limiting on a form that triggers an email below. {{screenshot}}

## Demonstrated Impact

<!--
Attempt to escalate a lack of rate limiting on a form that triggers an email. If this is possible, provide a full proof-of-concept here.
-->

A form that lacks rate limiting and triggers an email sent could be used by an attacker to send a massive amount of unwanted and unsolicited emails to a specified email address. 
