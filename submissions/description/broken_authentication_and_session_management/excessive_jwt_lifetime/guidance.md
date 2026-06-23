# Guidance

Provide a step-by-step walkthrough with a screenshot on how you exploited the vulnerability. This will speed triage time and result in faster rewards.

Include a screenshot showing the decoded JWT payload with the `iat` and `exp` claims visible. Calculate and state the token lifetime in hours or days. Do not submit tokens belonging to other users. A screenshot from a JWT decoder tool such as `jwt.io` is acceptable as evidence.

Attempt to escalate the broken authentication or session management to perform additional actions (such as an account takeover or CSRF bypass to perform a sensitive action). If this is possible, provide a full Proof of Concept (PoC).
