# Guidance

Provide a 1-2 sentence description - see [CVE Project's Key Details Phrasing Guide](http://cveproject.github.io/docs/content/key-details-phrasing.pdf) for tips.

Provide a step-by-step walkthrough with a screenshot on how you exploited the vulnerability. Your submission must include evidence of the vulnerability and not be theoretical in nature. For a failure to invalidation session on password change vulnerability, please include screenshots showing the password change process not removing a token from the cache and performing a sensitive action.

Attempt to escalate the failure to invalidate the session on password change. If this is possible, provide a full Proof of Concept (PoC).

Weak password reset has a separate VRT category, see: Insufficient Security Configurability -> Weak Password Reset Implementation -> Token is Not Invalidated After Password Change.
