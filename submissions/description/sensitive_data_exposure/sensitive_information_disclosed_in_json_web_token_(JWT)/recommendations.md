**Recommendation(s)**

Do not store any sensitive data in a JWT. While these tokens are signed to prevent forgery or manipulation, the claims are base64 encoded and trivial to decode.

For example, do not include a user's email address in a JWT. Instead store a server side identifier that is opaque and have the server then perform a lookup and the user’s identifier. If you do need to store sensitive information in a JWT, JSON Web Encryption (JWE) should be implemented as an encrypted alternative.
