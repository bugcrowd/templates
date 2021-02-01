# Failure to Invalidate Session on Logout

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 

Resources:

- <https://owasp.org/www-project-top-ten/2017/A2_2017-Broken_Authentication>
-->

## Walkthrough & PoC

<!-- Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Attempt to log in to {{application}} at {{url}}
1. Navigate your local storage in your browser and take a copy of the session token
1. Click on the logout button 
1. Browse to the sensitive page or action {{url}}/{{parameter}}
1. Complete the change 
1. Sign in again on a different browser and see the change on {{url}}/{{parameter}}

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
