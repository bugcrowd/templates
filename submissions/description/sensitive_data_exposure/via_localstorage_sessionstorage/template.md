Local storage, also known as offline, web, or session storage, is the underlying storage mechanism which varies from one user agent to the next. This application discloses sensitive data in the local storage which is accessible by JavaScript. As a result, the sensitive data can be captured by an attacker using Cross-Site Scripting (XSS), allowing them to locally access the sensitive data and use it in further attacks.

**Business Impact**

This vulnerability can lead to data theft through the attacker’s ability to access and manipulate sensitive data through their access to the application's local session. These malicious actions can result in reputational damage for the business through the impact to customers’ trust.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Using the HTTP interception proxy, forward the following request:

```HTTP
{{request}}
```

1. Observe the exposed sensitive data

**Proof of Concept (PoC)**

The following screenshot shows the sensitive data exposed via the local storage:

{{screenshot}}
