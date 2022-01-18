# Remediation Advice

The `x-frame-options` header should be set to instruct browsers how to handle framing from other domains. The following directives can be used:
- **DENY** This directive prevents all attempts of a page being displayed in a frame. For example:
 `X-Frame-Options: DENY`
-  **SAMEORIGIN** This directive allows the page to be displayed in a frame only if it originates from the same origin as the page itself. For example: 
`X-Frame-Options: SAMEORIGIN`
