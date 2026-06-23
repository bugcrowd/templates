# Recommendation(s)

It is best practice to limit JWT claims to the minimum required for authentication and authorization. Remove all sensitive data from JWT payloads and use opaque identifiers such as user IDs or session references rather than email addresses, roles, permissions, or internal system details. If sensitive data must be associated with a session, store it server-side and reference it by the token's subject claim. If encrypted tokens are required, use JSON Web Encryption (JWE) rather than JSON Web Signature (JWS).
