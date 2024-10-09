When data is transmitted over unencrypted channels, it can be intercepted via a Person-in-the-Middle (PitM) attack. An attacker can then gather user data and potentially send requests to the server pretending to be the legitimate user, or otherwise collect sensitive user data.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure. It can also lead to data theft via an attacker’s ability to manipulate data through their ability to make requests to the server using a legitimate session token.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Observe data in transit does not enforce TLS for all pages
1. Monitor the network traffic and intercept user session cookies
1. Replay the cookie and hijack the authenticated session
1. Modify user's personal identifiable information (PII)

**Proof of Concept (PoC)**

The screenshots below show sensitive data being transmitted insecurely:

{{screenshot}}
