The Cross-Origin Resource Sharing (CORS) Policy is a security control implemented by browsers to extend Same-Origin Policy (SOP) to cross domain requests via an allow list. However, misconfigurations can create unsafe CORS instances where cross-domain attacks can occur. An attacker can leverage unsafe CORS policies in the application to break the SOP and exfiltrate data or execute code on users’ browsers.

## Business Impact

Unsafe CORS can lead to reputational damage for the business due to a loss in confidence from users who are attempting to perform legitimate actions within the application.

## Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP
1. With the HTTP intercept proxy turned on, use a browser to navigate to: {{URL}}
1. In the HTTP intercept proxy, observe the following header:

```HTTP
{{Header}}
```

1. The following request and response pair demonstrates the unsafe CORS:

```HTTP
{{Request}}
```

```HTTP
{{Response}}
```

## Proof of Concept (PoC)

The screenshot below demonstrates the full exploit:

{{screenshot}}
