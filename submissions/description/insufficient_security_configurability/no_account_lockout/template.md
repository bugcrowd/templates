The application does not enforce account lockout on the login endpoint after repeated failed authentication attempts. An attacker can perform brute force or credential stuffing attacks on users' accounts for an indefinite period without restriction. Without a strong password policy in place, this technique is likely to succeed. This could allow an attacker to gain access to users' accounts if successful.

**Business Impact**

Having no account lockout can result in reputational damage for the business through the impact to customers’ trust as they could believe that the business doesn’t take their account security seriously or trust that their data within will remain secure.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Submit multiple incorrect password attempts in rapid succession
1. Confirm that no account lockout, CAPTCHA, or rate limiting is triggered

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
