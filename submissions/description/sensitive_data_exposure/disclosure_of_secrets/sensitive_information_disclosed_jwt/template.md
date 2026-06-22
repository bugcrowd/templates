The application includes sensitive information within the payload of the JSON Web Tokens (JWTs) that issued to clients. JWT payloads are Base64-encoded and are not encrypted. An attacker who intercepts or receives the token can decode and read its contents. Internal identifiers, roles, email addresses, or other sensitive fields can be included within JWTs which can aid an attacker in privilege escalation, account enumeration, or social engineering.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure. If personal data is included, this may also create compliance obligations under data protection regulations.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Capture the JWT issued in the {{token_location}}
1. Copy the JWT payload (the second Base64-encoded section between the dots) and decode the it using {{jwt_decode_tool}}
1. Observe that the decoded payload contains {{sensitive_data_type}} in the {{claim_name}} field

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
