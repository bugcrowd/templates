The `Secure` and `HTTPOnly` flags on session tokens ensures that the cookies are sent to a server in a secure and encrypted manner. A lack of a `Secure` or `HTTPOnly` flag in {{target}} allows an attacker to access cookies via Person-in-The-Middle or Cross-Site Scripting (XSS) attacks where they could steal a user's session or extract information about the session.

#### Business Impact

This vulnerability can result in reputational damage and indirect financial loss to the business through the impact to customers’ trust.

If an attacker is successful with a XSS attack, it could lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user.

#### Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Use Web Proxy to intercept the response
1. Observe the lack of `Secure` or `HTTPOnly` flags

#### Proof of Concept (PoC)

The following screenshot show the missing `Secure` or `HTTPOnly` flag:

{{screenshot}}
