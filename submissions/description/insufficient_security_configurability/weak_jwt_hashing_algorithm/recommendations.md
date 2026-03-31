# Recommendation(s)

Implement a strong asymmetric signing algorithm such as RS256 or ES256 with properly managed keys, or use HS256 with a cryptographically random secret of at least 256 bits and never exposed in client-side code. 

Explicitly reject the none algorithm in the JWT validation logic. Validate the alg header against a server-side allowlist and reject tokens with unexpected algorithms. If using a symmetric algorithm, ensure the signing secret is at least 256 bits of cryptographically random data and is never exposed in client-side code.