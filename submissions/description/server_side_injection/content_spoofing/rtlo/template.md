# Right to Left Override

## Overview of the Vulnerability:

A Right to Left Override (RLO) character is a unicode character, denoted as `U+202E`, in systems that can understand unicode. Whenever an RLO character is rendered, all unicode text afterwards will be reversed. An RLO attack in the application allows a malicious attacker to spoof content in a way where it can potentially socially engineer users into disclosing data such as usernames, passwords or other sources of sensitive information.

A successful exploit of an RLO character can trick users to downloading or clicking on files they otherwise would not. These files can include malware or an executable that requires user interaction to successfully infect systems.

## Business Impact:

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

## Steps to Reproduce:

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Perform {{action}} and capture the request in the HTTP interception proxy
1. Append/add an RLO unicode character to: {{parameter}}
1. Forward or replay the following request to the endpoint:

```HTTP
{{request}}
```

## Proof of Concept (PoC):

The screenshot(s) below demonstrates the RLO:

{{screenshot}}
