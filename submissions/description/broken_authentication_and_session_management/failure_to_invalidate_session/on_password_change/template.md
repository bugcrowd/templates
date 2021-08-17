# Failure to Invalidate Session on password change

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]
-->

Failure to invalidate session on password change in {{application}} allows a malicious attacker to {{action}}

## Walkthrough & PoC

<!-- Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Log in to {{application}} at {{url}}
1. In an HTTP proxy, capture any authenticated GET or POST request to repeat the request
1. Navigate to {{url}} and modify the password of the account used to login in step 1
1. Resend the captured request from step 2 and observe that the session token was not invalidated on password change

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a failure to invalidation session on password change vulnerability, please include a video showing the action taking place after password change, or pictures showing the password change process not removing a token from the cache and performing a sensitive action.
-->

Please observe the failure to invalidate the session after password change below. {{screenshot}}

## Demonstrated Impact

<!--
Attempt to escalate the failure to invalidate the session on password change. If this is possible, provide a full proof-of-concept here.
-->

Failure to invalidate a session after a password change can allow an attacker, who has access gained access to an account due to a compromised password, full account access even after the password has been changed
