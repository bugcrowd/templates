# Failure to Invalidate Session on Logout (Server-Side)

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

Failure to invalidate session on logout in {{application}} on the server-side allows a malicious attacker to {{action}}

## Walkthrough & PoC

<!-- Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Log in to {{application}} at {{url}}
1. In an HTTP proxy, capture any authenticated GET or POST request to repeat the request
1. Log out of {{application}} at {{url}}
1. Resend the captured request from step 2 and observe that the session token was not invalidated on logout

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a failure to invalidation session on logout vulnerability, please include a video showing the action taking place after signing out, or pictures showing the logout process not removing a token from the cache and performing a sensitive action.
-->

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to escalate the XSS to perform additional actions (such as an account takeover or CSRF bypass to perform a sensitive action). If this is possible, provide a full proof-of-concept here.
--> 

Failure to invalidate a session after a logout can allow an attacker, who has access to that local machine, full account access, and perform any action that the user can.
