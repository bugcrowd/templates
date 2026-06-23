JSON Web Tokens (JWTs) are used by the application for session management or API authentication. The application issues JWTs with an excessively long expiration time, meaning a token remains valid for an extended period after it is issued. The long lifetime gives an attacker a larger window to use the stolen token before it expires. This increases the impact of any token compromise by extending the period during which the attacker can impersonate the legitimate user.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate and perform a login at: {{URL}}
1. Capture the JWT issued in the {{token_location}}
1. Decode the JWT payload at {{jwt_decode_tool}} and examine the `exp` claim
1. Calculate the token lifetime by comparing the `iat` and `exp` values
1. Confirm that the token lifetime is {{token_lifetime}}, which exceeds a reasonable session duration

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
