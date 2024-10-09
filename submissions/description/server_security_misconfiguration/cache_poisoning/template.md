A web cache allows for static and fast fetching of content in web applications. Content Delivery Networks (CDNs) are commonly used to serve content used by applications. A malicious attacker can take advantage of caching mechanisms to serve content or deny service to certain applications using X-Based Host headers (X-Forwarded-Host, etc.).

Cache poisoning allows an attacker to serve content for cached pages on CDNs and websites with cache misconfigurations. This opens the application up to attacks like Cross-Site Request Forgery (CSRF), and to leakage of sensitive information.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to the following url: {{URL}}
1. Intercept the request in the HTTP interception Proxy and change HTTP header: {{value}} to {{value}}
1. Forward the following request to the endpoint:

```HTTP
{{request}}
```

1. Notice that the following page is cached

{{screenshot}}

1. {{action}} to poison the cache

**Proof of Concept (PoC)**

The screenshot below demonstrates the cache poisoning:

{{screenshot}}
