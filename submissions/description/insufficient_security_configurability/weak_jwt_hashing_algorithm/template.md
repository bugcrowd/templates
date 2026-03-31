The application issues JSON Web Tokens (JWTs) signed with a weak hashing algorithm such as HS256 with a short or predictable secret, or uses the `none` algorithm. A weak signing algorithm allows valid tokens to be forced by brute-forcing the signing secret or by modifying the token header to bypass signature verification entirely. This allows an attacker to create arbitrary tokens and impersonate any user, including administrative accounts.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate  and log in at: {{URL}}
1. Capture the JWT issued in the {{token_location}}
1. Decode the JWT header and confirm that the `alg` field is set to {{algorithm}}
1. Use {{tool}} to attempt to crack the signing secret or modify the algorithm to none
1. Submit the forged or modified token to {{endpoint}} and confirm that the server accepts it

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
