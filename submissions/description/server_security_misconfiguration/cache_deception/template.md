Cache deception allows an attacker to serve fake static files, forcing the web server to mistakenly cache and serve dynamic content as though it were static. If subsequent users make requests to the same URL, they are served the cached page. This can lead to sensitive data exposure for multiple users across different sessions.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to the following url: {{URL}}
1. Intercept the request in the HTTP interception Proxy and change HTTP header: {{value}} to {{value}}
1. Forward the following request to the endpoint:

```http
{{request}}
```

1. Notice that the following page is cached: {{screenshot}}
1. Perform {{action}} to demonstrate cache deception

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) this vulnerability:

{{screenshot}}
