Content spoofing is a common attack where plaintext or HTML content is injected into a web page that can be rendered in a client. Due to this injection vulnerability in the application, users are often socially engineered to perform an action due to the inherent trust they have in the business and its brand.

Text injection in this application allows an attacker to insert any message into a web page that can trick users to navigate to another website, call a certain number, or start an email chain to a malicious address.

#### Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

#### Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Perform {{action}} and capture the request in the HTTP interception proxy
1. Insert/Append the following payload to {{parameter}}:

{{Payload}}

1. Forward or replay the following request to the endpoint:

```HTTP
{{request}}
```

#### Proof of Concept (PoC)

The screenshot(s) below demonstrates the text injection:

{{screenshot}}
